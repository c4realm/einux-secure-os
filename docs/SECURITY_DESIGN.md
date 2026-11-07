# Security design (fill in BEFORE writing code, review with supervisor)
## Threat model
- Lost/stolen/seized laptop; attacker with physical access, powered off.
- Online brute force of local login.
- Out of scope: firmware implants, cold-boot on a running unlocked machine.
## Controls
1. LUKS2 (argon2id) on root + evidence partitions.
2. Login: password + TOTP via PAM (pam_google_authenticator) or pam_u2f if a key is available.
3. Failed-attempt lockout (pam_faillock) -> after N failures trigger panic action.
4. Panic action: destroy LUKS header on the configured device ONLY.
   - Default DRY-RUN. Requires explicit device + --i-understand flag.
   - Only ever run against loop-device test images in dev.
5. Duress passphrase: second passphrase that triggers panic (design TBD; document limits).
## Open questions
- Pre-boot (initramfs) failed-attempt counting vs post-boot only? Document what is really achievable.
- Where is the counter stored so it cannot be trivially reset?
