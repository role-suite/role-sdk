# role-sdk

Official TypeScript SDK for integrating with Role APIs, with typed clients, auth helpers, retries, and normalized error handling.

## Support status (v1)

- `role-node` is the primary and officially supported backend for v1.
- `role-serverpod` support is experimental until it is explicitly declared stable.
- The SDK docs do not present both providers as equal until parity and integration coverage are in place.

## Project status

This repository currently contains architecture docs and a Phase 0 SDK foundation scaffold (TypeScript package setup, lint/test/build tooling, CI, and provider contract types).

- Architecture: `docs/ARCHITECTURE.md`
- Documentation index: `docs/README.md`
- Delivery plan: `docs/IMPLEMENTATION_PLAN.md`
- Contract matrix (tracks `role-node` baseline and `role-serverpod` parity progress): `docs/CONTRACT_MATRIX.md`
- API surface spec: `docs/API_SURFACE_SPEC.md`
- Provider mapping spec: `docs/PROVIDER_MAPPING_SPEC.md`
- Version and compatibility policy: `docs/VERSION_COMPATIBILITY_POLICY.md`
- Testing strategy: `docs/TESTING_STRATEGY.md`
- Decision log (formerly open questions): `docs/OPEN_QUESTIONS.md`
