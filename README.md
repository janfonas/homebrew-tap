# mectl Homebrew Tap Migration

The mectl formula has moved to the company-owned
[Norsk-Tipping tap](https://github.com/Norsk-Tipping/homebrew-tap).
This repository remains available with Homebrew migration metadata for existing installs.
Versioned binaries remain in [mectl releases](https://github.com/janfonas/mectl-releases).
Supported: Apple Silicon and Intel macOS, and Linux x86-64.

```sh
brew install norsk-tipping/tap/mectl
mectl version
```

## Existing Installations

Add the company tap before updating so Homebrew can migrate installed-package receipts:

```sh
brew tap norsk-tipping/tap
brew update
brew upgrade mectl
```

If Homebrew already skipped the migration or requests manual migration, run
`brew reinstall norsk-tipping/tap/mectl`. No application configuration needs to move.
After migration, normal updates remain `brew update` followed by `brew upgrade mectl`.

If Homebrew requests trust, run `brew trust --formula norsk-tipping/tap/mectl` and
retry; this trusts only mectl, not the entire company tap.

The formula downloads versioned binary archives and verifies their SHA-256 checksums.
The application source remains private. Using mectl requires company network access and
credentials; installation does not grant access to any company service.

If a manual installation shadows Homebrew, check `which -a mectl` before changing your
`PATH` or moving old executables. Do not overwrite another installation without reviewing it.

Windows users can download an archive from the release repository. Linux ARM64 is not
currently supported. Third-party notices are installed with the Homebrew package.