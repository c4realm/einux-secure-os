# AGENTS.md - rules for any AI coding agent working in this repo

## Project
EINUX Secure OS: hardened Kali-based distro (live-build) for the Ethiopian Federal Police
Commission cyber/forensics units. Internship MVP, 4 weeks, no budget. Read README.md,
docs/SCOPE.md, docs/SECURITY_DESIGN.md before changing anything.

## Non-negotiable rules
1. NEVER run destructive commands (dd, wipefs, cryptsetup erase/luksErase, mkfs, rm -rf outside
   this repo) against the host or any real block device. Destructive code is tested ONLY against
   loop-device image files (e.g. truncate -s 200M test.img; losetup).
2. Any wipe/panic script: DRY-RUN by default, requires an explicit device argument AND an
   --i-understand-this-destroys-data flag, refuses if the device holds the mounted root filesystem.
3. No custom cryptography. Use LUKS2/cryptsetup, PAM modules, OnionShare, nftables as-is.
4. Do not invent command flags, package names, or file paths. Verify with `man`, `--help`,
   `apt-cache policy`. If unverified, mark the line `# UNVERIFIED` and tell the user.
5. No secrets, real names, real IPs, or real case data in any file or prompt. Use obvious dummies.
6. Only official Kali/Debian signed repositories. No curl|bash installers, no unreviewed third-party repos.
7. Ask before installing packages on the host or running anything with sudo.

## Working style
- Plan first (short), then make small changes. One logical change per commit, clear message.
- Every non-obvious choice -> one line in docs/DECISIONS.md.
- Every security-relevant file gets a header comment: purpose, threat addressed, how it was tested.
- Update tests/CHECKLIST.md when you add a feature. Keep README accurate.
- Shell scripts: `set -euo pipefail`, shellcheck-clean, quote variables.
- When unsure, stop and ask rather than guess.
## Learning project
The owner is learning how operating systems are built.
Explain every change in plain language and how it works at the OS level.
Only make the changes that were asked for.

