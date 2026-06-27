# homebrew-tap

Homebrew formulae for [scoot](https://github.com/jamiesun/scoot) — a lightweight,
local-first, auditable AI agent daemon and CLI in pure Zig.

## Install

```sh
brew install jamiesun/tap/scoot          # the agent
brew install jamiesun/tap/scoot-wasm      # optional Wasm compute-unit host (pulls in scoot)
```

`scoot-wasm` is the optional standalone Wasm compute-unit host used by the
`wasm_tool` action. Its formula depends on `scoot`, so installing the host also
installs the agent; the default `wasm_host` then resolves `scoot-wasm` from PATH.

These formulae are updated automatically by the scoot release workflow on each
tagged release. `scoot-wasm.rb` lands with the first release that ships a
`scoot-wasm-<target>` archive.
