# App Review Gate

The checklist I run before every App Store submission, and the lessons behind it.

My first iOS app took 12 days to get approved. Apple asked for more information on the first day
(guideline 2.1), and instead of replying in the thread I removed the submission and sent a new
one. That put the app at the back of the queue for 9 more days. The update after it got a second
2.1, this time asking who the app is for and which countries it is sold in.

So I started writing everything down. Every question Apple asked became a lesson, and every lesson
became a check that runs before the next submission.

The next app, Rowpin, went through this gate twice. Version 1.0 was approved on the first try and
was live 3 days after I submitted it. Version 1.0.1 was approved on the first try too, about 10
hours after I submitted it.

That is four submissions on one developer account, so it is a small sample, and I can't promise it
gets your app approved. What it does is make sure the reviewer never has to ask a question I could
have answered up front.

## The rule

Every line is a clear yes with evidence, or the submission waits. The date moves, never the gate.

"Looks fine" is not evidence. Evidence is something another person can check again: a file and
line, a command and what it returned, a dated read of the console, a test on a real device with the
build number.

## What is in here

| File | What it is |
|---|---|
| [PLAYBOOK.md](PLAYBOOK.md) | The checks, P1 to P17, the storefront check, and what to do when Apple writes back |
| [LESSONS.md](LESSONS.md) | Each lesson and the real submission that taught it |
| [NOTES-FOR-REVIEW.md](NOTES-FOR-REVIEW.md) | The order I write Notes for Review in, and why |
| [REVIEW-VIDEO.md](REVIEW-VIDEO.md) | How I record the video for App Review, and what to check before pressing record |
| [examples/rowpin-1.0.1-notes.md](examples/rowpin-1.0.1-notes.md) | The real Notes for Review I sent with Rowpin 1.0.1 |
| [templates/review-readiness.md](templates/review-readiness.md) | The yes/no checklist to copy into your app's repo |
| [templates/release-log.md](templates/release-log.md) | One log for the whole developer account: every submission and what the store answered |
| [scripts/scan.sh](scripts/scan.sh) | Prints the lines in your code a reviewer would question, for you to judge |
| [SKILL.md](SKILL.md) | The same process as a Claude Code skill |

## How I use it

1. Copy `templates/review-readiness.md` into the app's repo as `docs/store/review-readiness.md`.
2. Read the live [App Store Review Guidelines](https://developer.apple.com/app-store/review/guidelines/).
   They change, and this repo is not a copy of them.
3. Go through [LESSONS.md](LESSONS.md) and write one line for each: does it apply to this
   submission, and what is the evidence.
4. Run `scripts/scan.sh` on the folders the app is built from, then answer every row of
   [PLAYBOOK.md](PLAYBOOK.md) with evidence.
5. Write the Notes for Review in the order in [NOTES-FOR-REVIEW.md](NOTES-FOR-REVIEW.md) and record
   the video.
6. Fix whatever is not a yes. Then submit, and add a row to the release log the same day.

```bash
./scripts/scan.sh path/to/ios-app path/to/shared-code
```

The scan changes nothing. It only greps Swift, Kotlin, Dart and TypeScript or JavaScript files and
the Info.plist, and prints what it finds under the playbook row it belongs to.

## With Claude Code

The repo is also a Claude Code skill. Clone it into your skills folder and ask Claude to "run the
review gate" inside your app's repo:

```bash
git clone https://github.com/jordan-jakisa/app-review-gate ~/.claude/skills/app-store-review-gate
```

Claude then reads the playbook and the lessons, gathers the evidence from your code, writes the
readiness doc and drafts the Notes for Review. Submitting stays with you.

## Credit

- The first 15 checks started from Frederick James's article
  ["How to get your iOS app approved in under 48hrs"](https://x.com/frederickjames/status/2086419927548809285).
  I put them in my own words and changed them where my own record disagreed. He writes about 48
  hours; my first review took 12 days.
- P6 follows Adam Lyttle's advice on shipping original apps.
- The lessons, P16, P17, the storefront check and the Notes order are from my own submissions.

This is one developer's record, not legal advice, and it has nothing to do with Apple or Google.
Always read the live guidelines yourself.

## License

MIT. See [LICENSE](LICENSE).
