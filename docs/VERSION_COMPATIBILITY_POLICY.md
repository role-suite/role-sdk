# Role SDK Version and Compatibility Policy

This document defines release and compatibility rules for the SDK across both backends.

## 1) Semver policy

- `MAJOR`: breaking public API/type/behavior changes.
- `MINOR`: backward-compatible feature additions.
- `PATCH`: backward-compatible fixes only.

Public API includes:

- Method names/signatures.
- Public exported types.
- Error classes and key error codes.
- Capability object shape.

## 1.1) Locked v1 baseline decisions

The following are locked for v1 planning scope and should be treated as compatibility-sensitive behavior:

- Token persistence defaults to in-memory storage, with optional user-provided `TokenStore`.
- Core package does not ship built-in persistent token adapters.
- Public date/time fields are ISO strings in public models.
- Capability exposure uses nested method-group or method-level flags.
- Default transport behavior: `timeoutMs = 30000`, retries for safe/idempotent operations only.
- Package strategy remains a single package through v1.

## 2) Dual-backend support policy

Every SDK release must declare tested minimum versions for:

- `role-node`
- `role-serverpod`

Compatibility format:

- `SDK vX.Y.Z` supports `role-node >= A.B.C`
- `SDK vX.Y.Z` supports `role-serverpod >= D.E.F`

This matrix should be published in release notes and `README`.

## 3) Backend parity policy

- SDK methods should aim for parity across providers.
- Non-parity behavior must be capability-gated.
- Capability-gated methods are not considered breaking if:
  - capability was already optional
  - error behavior remains deterministic and typed

## 4) Deprecation policy

- Deprecations require:
  - changelog note
  - docs update
  - replacement guidance
- Deprecation window target: at least one minor version before removal.
- Removals occur only in a major version.

## 5) Breaking change examples

The following require a major bump:

- Removing or renaming public method.
- Changing required fields in public method input.
- Changing resolved return type shape incompatibly.
- Renaming/removing exported error classes.
- Changing capability object structure incompatibly.
- Changing public date/time representation away from ISO string contract.

## 6) Non-breaking change examples

The following can be minor or patch (depending on scope):

- Adding optional method input fields.
- Adding optional fields to returned models.
- Improving mapper tolerance for backend response variants.
- Expanding capability flags with new optional feature sections.
- Internal refactors that preserve single-package public entrypoint and exports.

## 7) Release checklist

Before release:

- Update `docs/CONTRACT_MATRIX.md` for any method changes.
- Update `docs/PROVIDER_MAPPING_SPEC.md` for any mapping changes.
- Update compatibility matrix (node and serverpod minimum tested versions).
- Run full parity and contract test suites.
- Generate release notes with migration details when needed.

## 8) Emergency policy

For security-critical issues:

- Patch releases may ship quickly with minimal feature scope.
- If emergency fix introduces breaking behavior, publish a clear advisory and ship major/minor follow-up with migration path.

## 9) Ownership and governance

- SDK maintainers own this policy and release decisions.
- Backend maintainers should provide contract-change notices early.
- Any backend contract change with SDK impact should include a compatibility impact note.

## 10) Support window target

- SDK should target active support for at least the latest two minor SDK versions.
- Security fixes should be backported where feasible to the latest stable minor line.

## 11) Backend breaking-change protocol

When a backend introduces a contract-breaking change:

1. Mark affected methods as at-risk in `docs/CONTRACT_MATRIX.md`.
2. Update mapping and compatibility docs with migration notes.
3. Decide patch/minor/major SDK release based on public API impact.
4. Publish explicit upgrade guidance in release notes.
