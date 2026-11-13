# The playbook

Run every check on the build you are about to submit. Each one gets a yes, an open, or a "does not
apply", with evidence, in your app's `docs/store/review-readiness.md`. Anything that is not a clear
yes blocks the submission.

The numbers stay stable, so a row means the same thing in every app and every version. New checks
get the next number.

The guideline numbers in brackets are Apple's, as I read them in November 2026. Check the live
[App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/) before you
rely on one.

## The build

- [ ] **P1** Nothing unfinished: no "coming soon" screen, placeholder, dead button or empty tab
  (2.1).
- [ ] **P2** Every feature and every purchase works end to end on a real device, with a sandbox
  purchase and Restore included.
- [ ] **P3** Every screen works on the smallest iPhone, the largest iPhone and an iPad-size layout,
  with the largest Dynamic Type size. Apple may review on an iPad even if you only tested on an
  iPhone (lesson L15).
- [ ] **P4** Each permission is asked only at the moment it is needed, after a line saying why,
  with a specific purpose string. No permission the app does not use. Prefer the private system
  pickers (the photo picker) over access to the whole library.
- [ ] **P5** Privacy Policy and Terms are static HTML pages that load fast without JavaScript or a
  login, linked from the paywall, Settings and the listing.
- [ ] **P6** It looks and works like a careful, original product, not a copy of another app or a
  template.
- [ ] **P7** If users create, upload or share anything that reaches another user: a filter, Report,
  Block, a Support contact and moderation are in, and listed in the Notes (1.2).

## No dark patterns

- [ ] **P8** No fake social proof: no user counts, ratings, reviews or "loved by" lines you cannot
  prove.
- [ ] **P9** No absolute or unprovable claims ("fixes 100%", "guaranteed pass") in the app, the
  listing or the screenshots. Every factual claim has a dated source.
- [ ] **P10** The paywall that is live is the one App Review saw. If your paywall is served
  remotely (RevenueCat Paywalls, remote config, feature flags), any later change passes the same
  subscription check before it goes live (3.1.2, 2.5.19).
- [ ] **P11** No review prompt during onboarding.
- [ ] **P12** A first submission has no discount offer when the paywall is closed and no survey or
  cheaper plan in front of Manage Subscription. Either can come in a later update, described in the
  Notes with a demo in the video.

## Scope

- [ ] **P13** A first submission is the smallest version that does the job. Every extra feature is
  more for the reviewer to check. Later versions say exactly what they add.

## Help the reviewer

- [ ] **P14** Notes for Review in plain bullets a beginner can follow, in the order in
  [NOTES-FOR-REVIEW.md](NOTES-FOR-REVIEW.md). Read them yourself as a beginner before sending.
- [ ] **P15** A screen recording from a real device, on the build being submitted, with a short
  text label on each section, on every submission whose features changed. See
  [REVIEW-VIDEO.md](REVIEW-VIDEO.md). After the upload, check the selected build again (L8).

## Privacy and screenshots

- [ ] **P16** The privacy policy and the App Privacy label still match what this version collects
  and keeps (5.1.1, 5.1.2). Go through every new feature and ask: does it store or send anything
  the policy does not name? Read the live page, not the copy in your repo.
- [ ] **P17** Every screenshot shows this build as it is. Its headline says what that screen
  shows. No price word, no clipped label, nothing hidden under the tab bar (2.3.3, 2.3.7). Look at
  the whole set side by side, then at every image at full size (L18).

## Storefronts (S1)

Guideline 5 asks you to follow the law in every storefront the app is offered in, so Pricing and
Availability is part of the gate.

- [ ] Read the live country list in App Store Connect. Do not trust what you remember setting.
- [ ] The app is offered only where it has an audience.
- [ ] Every storefront that stays on has a reason written next to it. For me, China mainland is off
  (L12) and the EU stays off until the trader declaration for the Digital Services Act is filed.
- [ ] The Notes for Review name the audience and the countries.

## Everything promised for this version is in it

- [ ] Search your backlog and plans for every line that ties work to this version ("ships with
  1.0.1", "in 1.0.1"). Each one gets evidence: the file and line, the console field read back, or
  the dated decision to drop it (L19).

## When it goes wrong

- Reply in the submission's thread in App Store Connect. Never remove the submission (L9, L11).
- Ask Apple to list every issue they found at once, so fixes do not come back one rejection at a
  time.
- If you disagree, reply calmly, quote the guideline and show evidence (a screenshot, a video).
- After a reply to a 2.1 question, wait. Apple resumes the review itself (L14).
- Two rejections in a row, or a loop of new reasons: ask for a call with App Review instead of
  resubmitting. Ask whether the cause is fixed, not whether a different reviewer would pass it.
- Expedited review only for a critical bug in a live app or a real dated event, never to skip the
  queue on a first launch.
- Every rejection or information request becomes a new lesson, and a new P row if it is a check
  that should run on every app.

## Google Play

The P rows are written for Apple. P1, P2, P4, P5, P8, P9, P11 and P12 apply to Play as well and
are worth answering the same way, next to Google's own
[Developer Program Policies](https://play.google/developer-content-policy/).
Lessons L2 and L3 are from Play.
