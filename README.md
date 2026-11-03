# mectl Homebrew Tap

Homebrew packaging for [mectl releases](https://github.com/janfonas/mectl-releases).
Supported: Apple Silicon and Intel macOS, and Linux x86-64.

```sh
brew install janfonas/tap/mectl
mectl version
```

## Updates

```sh
brew update
brew upgrade mectl
```

The formula downloads versioned binary archives and verifies their SHA-256 checksums.
The application source remains private. Using mectl requires company network access and
credentials; installation does not grant access to any company service.

If a manual installation shadows Homebrew, check `which -a mectl` before changing your
`PATH` or moving old executables. Do not overwrite another installation without reviewing it.

Windows users can download an archive from the release repository. Linux ARM64 is not
currently supported. Third-party notices are installed with the Homebrew package.