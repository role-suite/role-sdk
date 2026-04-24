# Role SDK Testing Strategy

This document defines how SDK quality is validated for both `node` and `serverpod` providers.

## 1) Test objectives

- Verify consistent SDK behavior across both providers.
- Detect backend contract drift early.
- Guarantee stable public API and error semantics.
- Keep mapping behavior deterministic and auditable.

## 2) Test pyramid

## 2.1 Unit tests

Focus:

- config validation
- retry/backoff policy
- auth token lifecycle and refresh deduplication
- error normalization
- capability gating

Target:

- fast, isolated, no network dependency.

## 2.2 Mapper tests

Focus:

- `node -> sdk` payload mapping
- `serverpod -> sdk` payload mapping
- edge values (missing optional fields, unknown enum values, nullability)

Target:

- snapshot or fixture-based deterministic outputs.

## 2.3 Provider integration tests

Focus:

- method-to-route mapping for node provider
- method-to-rpc mapping for serverpod provider
- serialization/deserialization behavior
- transport and hook behavior

Target:

- mocked transport layer and contract fixtures.

## 2.4 Parity tests

Focus:

- for each SDK method in parity scope:
  - same public return shape
  - same error class/code behavior
  - same capability behavior

Target:

- one test case executed against both providers using equivalent fixtures.

## 2.5 Contract tests

Focus:

- validate SDK assumptions against canonical backend OpenAPI/contracts.
- catch breaking API response changes from backend side.

Target:

- CI gate before release.

## 2.6 OpenAPI artifact checks

Focus:

- validate synced OpenAPI artifact shape and conventions.
- enforce brace-style path params and unique `operationId` values.
- verify generated SDK-spec metadata can be built from OpenAPI.

Target:

- run in CI as part of default checks before typecheck/test.

## 3) Fixture strategy

- Keep provider fixtures versioned and grouped by module.
- Include success and failure payloads for every public method.
- Include regression fixtures for previously fixed bugs.

Suggested structure:

```text
tests/fixtures/
  node/
    auth/
    workspaces/
    ...
  serverpod/
    auth/
    workspaces/
    ...
  parity/
    auth/
    workspaces/
    ...
```

## 4) Minimum coverage targets

- Unit + mapper combined statement coverage target: `>= 90%`.
- Each public SDK method must have at least:
  - one success case
  - one backend error case
  - one validation/capability edge case

## 5) CI quality gates

- typecheck
- lint
- OpenAPI artifact validation (`pnpm contracts:openapi:check`)
- unit tests
- mapper tests
- provider integration tests
- parity tests
- contract tests

Release should be blocked if parity or contract tests fail.

## 6) Drift detection workflow

When backend contracts change:

1. sync backend OpenAPI artifact (`pnpm contracts:openapi:sync`)
2. validate artifact + rebuild SDK spec (`pnpm contracts:openapi:check` + `pnpm contracts:openapi:build-spec`)
3. run contract + parity tests
4. update mapping docs/spec if required
5. apply SDK type/mapping adjustments
6. publish compatibility matrix updates

## 7) Failure triage rules

- Unit failure: fix SDK core logic first.
- Mapper failure: inspect payload schema drift and mapper rules.
- Parity failure: check capability matrix and mapping consistency.
- Contract failure: coordinate with backend maintainers; decide patch/minor/major impact.

## 8) Pre-release validation

Before any release tag:

- Run full test suite with both provider modes.
- Verify compatibility matrix entries are updated.
- Validate migration notes for any behavior or type changes.

## 9) Test ownership and maintenance

- SDK maintainers own unit/mapper/parity test suites.
- Provider mapping contributors own fixture updates for their backend changes.
- Any mapping PR should include fixture and parity updates in the same change.

## 10) Flaky-test policy

- Flaky tests should be quarantined only with a linked tracking issue.
- Quarantined tests must be restored or removed with root-cause notes.
- Release branches should not allow unresolved flaky parity/contract tests.
