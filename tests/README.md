# Test Suite Layout

- `tests/unit/sdk/`: high-level SDK client behavior and auth lifecycle tests.
- `tests/unit/core/transport/`: transport, retry, and hook behavior unit tests.
- `tests/unit/providers/`: provider parity and mapper normalization tests.
- `tests/integration/phase3/`: phase-specific integration-style mapping and route coverage tests.

This layout keeps fast, isolated unit tests separated from broader flow/integration checks.
