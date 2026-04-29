import 'package:test/test.dart';
import 'package:role_rest_sdk/role_rest_sdk.dart';


/// tests for AuthApi
void main() {
  final instance = RoleRestSdk().getAuthApi();

  group(AuthApi, () {
    //Future<GetApiAuthMe200Response> getApiAuthMe() async
    test('test getApiAuthMe', () async {
      // TODO
    });

    //Future<PostApiAuthLogin200Response> postApiAuthLogin(PostApiAuthLoginRequest postApiAuthLoginRequest) async
    test('test postApiAuthLogin', () async {
      // TODO
    });

    //Future<PostApiAuthLogout200Response> postApiAuthLogout(PostApiAuthLogoutRequest postApiAuthLogoutRequest) async
    test('test postApiAuthLogout', () async {
      // TODO
    });

    //Future<PostApiAuthRefresh200Response> postApiAuthRefresh(PostApiAuthLogoutRequest postApiAuthLogoutRequest) async
    test('test postApiAuthRefresh', () async {
      // TODO
    });

    //Future<PostApiAuthRefresh200Response> postApiAuthRegister(PostApiAuthRegisterRequest postApiAuthRegisterRequest) async
    test('test postApiAuthRegister', () async {
      // TODO
    });

  });
}
