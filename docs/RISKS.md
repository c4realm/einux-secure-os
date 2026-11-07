# Risk register (review weekly)
| ID | Risk | Likelihood | Impact | Mitigation | Owner | Status |
|----|------|-----------|--------|------------|-------|--------|
| R1 | No TPM test hardware in time | High | Med | TPM is stretch goal | | Open |
| R2 | Test laptop delayed | Med | High | Request in Week 1; use VM until then | | Open |
| R3 | Panic-wipe misfires and destroys a real disk | Low | Critical | Dry-run default, explicit device arg, loop-device testing until reviewed | | Open |
| R4 | Package unavailable/renamed in Kali repos | Med | Low | Verify with apt-cache; document substitutes | | Open |
| R5 | Amharic wording incorrect | Med | Med | Native-speaker review by end of Week 2 | | Open |
| R6 | Third-party tool (AnonSurf) supply-chain risk | Med | Med | Use own Tor+nftables config | | Open |
| R7 | Free hosted AI sees sensitive info | Low | High | Never paste real data/credentials into prompts | | Open |
