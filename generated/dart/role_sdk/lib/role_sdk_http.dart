import 'package:dio/dio.dart';

class RoleSdkFormData {
  const RoleSdkFormData({required this.fields});

  final Map<String, String> fields;
}

class RoleSdkResponse<T> {
  const RoleSdkResponse({
    required this.statusCode,
    required this.statusMessage,
    required this.headers,
    required this.data,
  });

  final int? statusCode;
  final String? statusMessage;
  final Map<String, List<String>> headers;
  final T? data;

  String? headerValue(String name) {
    for (final entry in headers.entries) {
      if (entry.key.toLowerCase() == name.toLowerCase()) {
        return entry.value.join(', ');
      }
    }
    return null;
  }
}

class RoleSdkHttpException implements Exception {
  RoleSdkHttpException({
    required this.message,
    this.statusCode,
    this.statusMessage,
    this.responseData,
    this.cause,
    this.isOffline = false,
  });

  factory RoleSdkHttpException.fromDio(DioException error) {
    final responseData = error.response?.data;
    final message = _resolveMessage(error, responseData);
    final isOffline = error.type == DioExceptionType.connectionError ||
        error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout;

    return RoleSdkHttpException(
      message: message,
      statusCode: error.response?.statusCode,
      statusMessage: error.response?.statusMessage,
      responseData: responseData,
      cause: error.error,
      isOffline: isOffline,
    );
  }

  final String message;
  final int? statusCode;
  final String? statusMessage;
  final dynamic responseData;
  final Object? cause;
  final bool isOffline;

  static String _resolveMessage(DioException error, dynamic responseData) {
    if (responseData is Map<String, dynamic>) {
      final candidate = responseData['message']?.toString() ??
          responseData['error']?.toString();
      if (candidate != null && candidate.trim().isNotEmpty) {
        return candidate.trim();
      }
    }

    if (responseData != null) {
      final text = responseData.toString().trim();
      if (text.isNotEmpty) {
        return text;
      }
    }

    final fallback = error.message?.trim();
    if (fallback != null && fallback.isNotEmpty) {
      return fallback;
    }

    return 'Request failed';
  }

  @override
  String toString() =>
      statusCode == null ? message : 'HTTP $statusCode: $message';
}

class RoleSdkHttpClient {
  static const String defaultBackendBaseUrl = 'http://localhost:3000';

  RoleSdkHttpClient({
    required String baseUrl,
    String? accessToken,
    Map<String, dynamic>? defaultHeaders,
    Duration? connectTimeout,
    Duration? receiveTimeout,
  }) : dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: connectTimeout,
            receiveTimeout: receiveTimeout,
            headers: <String, dynamic>{
              'Content-Type': 'application/json',
              ...?defaultHeaders,
              if (accessToken != null && accessToken.trim().isNotEmpty)
                'Authorization': 'Bearer ${accessToken.trim()}',
            },
          ),
        );

  RoleSdkHttpClient.localBackend({
    String? accessToken,
    Map<String, dynamic>? defaultHeaders,
    Duration? connectTimeout,
    Duration? receiveTimeout,
  }) : this(
          baseUrl: defaultBackendBaseUrl,
          accessToken: accessToken,
          defaultHeaders: defaultHeaders,
          connectTimeout: connectTimeout,
          receiveTimeout: receiveTimeout,
        );

  final Dio dio;

  Future<RoleSdkResponse<T>> request<T>({
    required String method,
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) async {
    try {
      final prepared = _prepareBody(data);
      final response = await dio.request<T>(
        path,
        data: prepared,
        queryParameters: queryParameters,
        options: Options(method: method, headers: headers),
      );

      return RoleSdkResponse<T>(
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        headers: response.headers.map,
        data: response.data,
      );
    } on DioException catch (error) {
      throw RoleSdkHttpException.fromDio(error);
    } catch (error) {
      throw RoleSdkHttpException(message: error.toString(), cause: error);
    }
  }

  Future<RoleSdkResponse<T>> get<T>(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) {
    return request<T>(
      method: 'GET',
      path: path,
      headers: headers,
      queryParameters: queryParameters,
    );
  }

  Future<RoleSdkResponse<T>> post<T>(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) {
    return request<T>(
      method: 'POST',
      path: path,
      headers: headers,
      queryParameters: queryParameters,
      data: data,
    );
  }

  Future<RoleSdkResponse<T>> patch<T>(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) {
    return request<T>(
      method: 'PATCH',
      path: path,
      headers: headers,
      queryParameters: queryParameters,
      data: data,
    );
  }

  Future<RoleSdkResponse<T>> delete<T>(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    dynamic data,
  }) {
    return request<T>(
      method: 'DELETE',
      path: path,
      headers: headers,
      queryParameters: queryParameters,
      data: data,
    );
  }

  dynamic _prepareBody(dynamic data) {
    if (data is! RoleSdkFormData) {
      return data;
    }

    final formData = FormData();
    for (final entry in data.fields.entries) {
      if (entry.key.trim().isEmpty) {
        continue;
      }
      formData.fields.add(MapEntry(entry.key, entry.value));
    }
    return formData;
  }
}