# aryankahar31/homebrew-tap

Homebrew tap for [`runx-launcher`](https://github.com/aryankahar31/runx) — a project launcher with portable runtimes (Node.js, Python, Bun, Go, Deno, Java) that runs projects with the exact runtime versions they declare, with no global runtime installations and no shell integration.

## Install

```bash
brew install aryankahar31/tap/runx-launcher
```

Or tap first, then install:

```bash
brew tap aryankahar31/tap
brew install runx-launcher
```

## Verify

```bash
runx --version
```

## Note on package naming

An unrelated project named `runx` exists elsewhere (including on crates.io). This tool's Homebrew formula, crates.io crate, and npm package are named **`runx-launcher`**, while the installed CLI executable is **`runx`**.

## License

MIT — see [LICENSE](LICENSE).
