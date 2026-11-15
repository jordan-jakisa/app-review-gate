---
name: app-store-review-gate
description: Run a pre-submission review gate on an app before it goes to the App Store, first launch or update - the lessons, the review playbook (P1 to P18), the storefront check, Notes for Review in a fixed order and a labelled review video - and record every answer with evidence in the repo's docs/store/review-readiness.md. Use whenever an app or a new version is about to be submitted or uploaded to App Store Connect, when asked "is it ready for review", "pre-release checks", "run the review gate", "can we submit", to write or rewrite Notes for Review or the App Review video script, or after a rejection or a 2.1 Information Needed. Also use for Google Play submissions for the shared steps.
user-invocable: true
---

# App Store review gate

A developer account is the whole business: every app on it carries the risk of the weakest
submission. So no app or update goes to App Review until every line of this gate is a clear yes
with evidence. The date moves, never the gate.

The rules live in the files beside this one. Read them fresh on every run; never work from memory
of them:

- `PLAYBOOK.md`: the checks P1 to P18, the storefront check S1, and what to do when Apple writes.
- `LESSONS.md`: lessons from real submissions.
- `NOTES-FOR-REVIEW.md` and `REVIEW-VIDEO.md`: how the Notes and the video are made.
- `templates/`: the readiness doc and the account's release log.

If the developer keeps their own release log (ask where it is the first time), its lessons run as
well, and where it disagrees with `LESSONS.md` their own record wins.

## Who does what

- Repo work (reading code, fixing code, editing the repo's docs, committing) is yours.
- Anything in App Store Connect or another console belongs to the developer. Say exactly what
  changes, from what to what, and wait for their yes, one change per ask. Reading a console is
  fine; writing is not.
- Submitting for review is always the developer's yes, every time.

## Steps

### 1. Load the rules and the app's state

1. Read `PLAYBOOK.md`, `LESSONS.md` and the developer's release log, including the rows for this
   app.
2. Read the live App Store Review Guidelines (developer.apple.com/app-store/review/guidelines),
   plus Apple's subscriptions page if the app sells subscriptions. Note the "Last Updated" date in
   the readiness doc.
3. In the repo: read `docs/store/review-readiness.md` (create it from
   `templates/review-readiness.md` if it is missing). Run `git fetch` first and compare the
   current branch with the remote main and any release branch: the local checkout can be far
   behind. Find the version and build about to be submitted and the commit it is built from, and
   say which branch you chose and why.
4. Check the release log: nothing else from this account is in App Review (L6). If something is,
   the gate can still run, but submission waits.

### 2. Run the lessons

For each lesson, write one line in the readiness doc: the lesson number, whether it applies to
this submission, and the evidence or the reason it does not.

### 3. Everything promised for this version is in it (L19)

Search the repo's backlog and plans for every line that ties work to this version ("ships with
<version>", "in <version>", "for <version>"). List each one in the readiness doc with its
evidence: the file and line in the code, the console field read back, or the dated decision to
drop it. A promise with no evidence is a no.

### 4. Answer the playbook

Add a section to the readiness doc for this version. If the doc already has one for an earlier
version, add a new one rather than editing the old answers.

Rules for the evidence column:

- **Evidence is something someone else can check again:** a file and line, a command and what it
  returned, a dated console read, a device test with the build number. "Looks fine" is not
  evidence. A row that rests on an older check says which build that check was on, and whether
  anything since has touched the same screens.
- **Changed since the last check means check again.** Read the commits between the last submitted
  build and this one (`git log <last-tag-or-commit>..HEAD`) and name every row they touch. On
  shared-code apps (Kotlin Multiplatform, React Native, Flutter), read the shared module's commits
  too: user-visible iOS changes often arrive only from there.
- **Open is honest.** If it needs the phone, the developer or a console, mark it open and say
  exactly what is left and who does it.

Run `scripts/scan.sh <path> [<path> ...]` first, on the folders the iOS app is built from. It
greps Swift, Kotlin, Dart and TS/JS and the Info.plist for the usual suspects and prints the hits
for you to judge.

| Row | Where to look |
|---|---|
| P1 unfinished | scan.sh "unfinished" hits; every tab and button the Notes name exists in code |
| P2 works end to end | the last real-device test and its build; what changed since; a sandbox purchase and Restore on the build to submit |
| P3 sizes and text | the last small iPhone, large iPhone, iPad and largest Dynamic Type checks and their builds; screens redesigned since |
| P4 permissions | every `NS*UsageDescription` in Info.plist; each request call site and what the user tapped just before; no description without a use |
| P5 Privacy and Terms | `curl -s <url> \| sed 's/<[^>]*>//g'` holds the policy text (so it reads without JavaScript); links on the paywall, in Settings and in App Store Connect |
| P6 original | what makes it different, in the repo's research; no other app's name or look |
| P7 user content | does anything one user makes reach another user? If yes: filter, Report, Block, Support, moderation |
| P8 social proof, P9 claims | scan.sh "claims" hits in the app, plus the listing, screenshots and promo text. On an update, also compare the live listing with the app's current copy: a claim dropped from the app can still be live on the store |
| P10 remote paywall | is the paywall in the binary or remote? Any remote switch that changes what the user sees |
| P11 review prompt | scan.sh "review prompt" call sites; none reachable during onboarding |
| P12 abandon and exit offers | scan.sh "offers" hits; what closing the paywall and Manage subscription do |
| P13 scope | first submission: the smallest version that does the job; update: what it adds |
| P14 Notes | the draft in the order in `NOTES-FOR-REVIEW.md` |
| P15 video | a real-device recording of this build with a label per section |
| P16 privacy | each new feature: what it stores or sends, and the sentence in the live policy that names it |
| P17 screenshots | each image against the build; the set seen side by side and at full size |
| P18 extensions | every `.appex` in the archive's `PlugIns` folder, each described in the Notes or removed |
| S1 storefronts | the live country list, read from the console by the developer or with their yes |

### 5. Notes for Review and the video

Write the Notes in the order in `NOTES-FOR-REVIEW.md`, beside the previous version's Notes in the
repo. Check every control and label you name against the code. Limit 4,000 characters; count
them. The developer reads the draft as a beginner before anything is pasted.

Write the video script from `REVIEW-VIDEO.md`, and verify its preconditions before sending it.

### 6. Fix, track, commit

- Fix every code or doc gap the gate finds in the same session; run the row again after the fix.
  A fix that changes the build means the device rows (P2, P3) apply to the new build.
- Every row still open gets a dated line in the repo's tracker saying what is left and who does
  it.
- Commit in small steps. Do not push or submit without the developer.

### 7. The verdict

Report in a table: each open row, what is left, who does it. Anything not a clear yes blocks the
submission. Do not soften it into "low risk": compliance is a yes or a no.

## Submitting and after

- The day it is submitted, add a row to the release log (date, app, version and build, what went
  in, outcome "waiting", lessons that applied). Update it the day Apple answers.
- If Apple writes: follow "When it goes wrong" in `PLAYBOOK.md`.
- Every rejection or Information Needed becomes a new numbered lesson in the release log, and a
  new P row if it is a check that should run on every app.

## Google Play

The P rows are Apple's. For a Play submission run steps 1, 2 and 6 with Google's Developer Program
Policies; P1, P2, P4, P5, P8, P9, P11 and P12 apply to Play as well.
