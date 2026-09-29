# EvarinthoSec Homebrew repository

Formulae live in `Formula/`. After a formula is published, install `mtop` with:

```sh
brew install EvarinthoSec/repo/mtop
```

The `mtop` release workflow syncs the versioned formula here after publishing the release when the source repository has a `HOMEBREW_REPO_TOKEN` Actions secret with Contents write access to this repository. Without that token, the versioned formula remains available from the GitHub Release but this tap will not be updated automatically.
