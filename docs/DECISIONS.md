# Decision log (one line per non-obvious decision)
| Date | Decision | Why | Who |
|------|----------|-----|-----|
| | Remaster Kali via live-build rather than build from Debian | Maintained kernel/repos, fits 1 month | |
| | OnionShare for file transfer, not Telegram/custom | No 3rd-party server; do not roll own crypto | |
| | Panic = destroy LUKS header (not full disk wipe) | Equivalent effect, achievable in seconds | |
