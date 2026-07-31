# Copyright and sovereignty guarantees

## Copyright

Founder of design: **Dany Thériault**.
Umbrella copyright: EVE Glyph Design canon.
License: [to be set — recommended dual license: sovereign-customer-use (perpetual, per-customer) + community read-only].

## Sovereignty guarantees (to the customer)

By adopting this reference server, the customer receives written guarantees that:

1. **The customer owns the data.** Every byte replicated from the customer's SAP instance stays on customer-owned infrastructure. No copy is ever transmitted to EVE Glyph Design, to SAP, or to any third party without the customer's explicit written consent.
2. **The customer owns the extension.** All schema extensions, agent definitions, ledger overlays, and vertical models developed *for* the customer, *with* the customer's data, are the customer's copyright. EVE Glyph Design retains copyright only on the reference framework itself, not on any customer-specific derivative.
3. **No training on customer data.** No customer data is ever used to train, fine-tune, or evaluate any AI model outside the customer's DMZ. Models that run against the sovereign reference server run *inside* the DMZ.
4. **No lock-in.** The entire reference server is customer-owned Git. The customer can fork, mirror, migrate, or terminate the relationship at any time and take everything with them, including the full history.
5. **No SAP violation.** The reference server reads only from the customer's own DR / standby instance under the customer's own SAP license. It does not modify SAP production. It does not extract or redistribute SAP proprietary content.

## Audit trail

Every replication run, every schema change, every agent action against the sovereign reference server writes to an immutable audit log. See `../agents/audit-spec.md` (to be authored).

## Dispute posture

If SAP challenges the customer's right to read their own DR copy, the customer's position is: **"I am reading data I own, on infrastructure I own, under a license I paid for."** This is the exact posture affirmed in principle by the German Bundeskartellamt's July 2026 [SAP/Celonis preliminary decision](https://www.bundeskartellamt.de/SharedDocs/Meldung/EN/Pressemitteilungen/2026/07_30_2026_SAP_Celonis.html?nn=48888).

*Pour le bien-être du peuple.*
