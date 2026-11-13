# Lessons

Each lesson names the submission that taught it. Newest first. The numbers match my own log, so a
few are missing here.

Before every submission, go through the list and write one line per lesson in your readiness doc:
does it apply, and what is the evidence.

| # | Lesson | Learned from |
|---|---|---|
| L19 | Before submitting, check every item the plan says ships in this version against the code or the console, with evidence. A promise with no evidence blocks the submission. | Rowpin 1.0.1 shipped without an Apple Ads attribution call the plan said it carried. I found out just before the ad test was due to start. |
| L18 | Screenshots ship only after someone has looked at the whole set side by side and every image at full size: status bar, nothing clipped, nothing under a tab bar, no empty bands, headline matches the screen. A rule that says "nothing cut off" is not a check. | Rowpin 1.0 went live with uneven gaps, clipped labels and a headline that did not match its screen. |
| L15 | Apple reviews on iPad even when your recording and testing are on iPhone. Check every screen on an iPad-size layout before submitting. | Driving Permit Practice 1.0.1 was reviewed on an iPad Air 11-inch. |
| L14 | After you reply to a 2.1 question, Apple resumes the review itself ("We will continue the review"). Resubmit stays grey and nothing needs clicking. Do not edit or resubmit. Wait. | Driving Permit Practice 1.0.1: replied one morning, Apple resumed the next morning, approved the same day. |
| L13 | Notes for Review open with a fixed block that never gets cut: who the app is for (who, age, country), the exact storefront list, regional differences, and anything licensed or regulated. | Apple asked me to keep my 2.1 answers in the Notes for future submissions. By 1.0.1 the Notes were 3,988 of 4,000 characters of changes with no audience or country list, and Apple asked again. |
| L12 | Untick China mainland unless you hold what that storefront needs. Study or reference content can read as "book content", which needs a permit there. Put the audience and the country list in the Notes so Apple does not have to ask. | Driving Permit Practice 1.0.1, a 2.1 about audience, countries and book content in China. |
| L11 | Answering a 2.1 in the submission's thread and fixing the cause got approval in one day, on the same build. | Driving Permit Practice 1.0.1. |
| L10 | A developer account that is new to App Review should expect a 2.1 Information Needed on a new app. Send a real-device screen recording and the answers in App Review Information up front. | Driving Permit Practice 1.0, a 2.1 on the first day. |
| L9 | Removing a submission instead of replying in its thread restarted the wait: 9 more days in the queue. Never remove or cancel a submission that has a message from Apple. | Driving Permit Practice 1.0. Apple's message said to reply in App Store Connect. I removed the submission instead. |
| L8 | Uploading a video in App Review Information reloads the form and can silently drop a build you just selected. After any upload there, check the selected build again before submitting. | Driving Permit Practice 1.0. |
| L7 | Plan 7 to 14 days from submission to approval for a new app on a new account. Never promise a launch date tighter than that. | Driving Permit Practice 1.0 took 12 days. |
| L6 | Never have two of your apps in App Review at once. One bounce then delays both. | My own release order. |
| L5 | No trial toggle on the paywall. Show the amount that is billed as the biggest price, and do not label a plan "Free" (3.1.2). | Rowpin's pricing audit before 1.0. |
| L4 | Debug screens and shortcuts ship only inside `#if DEBUG`, and you prove they are absent from the Release build. Hidden features can end a developer account (2.5.19). | Rowpin, before 1.0. |
| L3 | Firebase merges the advertising ID permission into the Android manifest. Remove it if your Play listing declares no advertising ID, or Play rejects the build. | Readback, an early Play build. |
| L2 | Never name a government body or say "official" in a listing without a working source link and a "not affiliated" line. Play's Misleading Claims policy rejects it. | Driving Permit Practice on Google Play, rejected, then approved 9 days later with a source link and a disclaimer. |

## Adding your own

Every rejection and every information request on your account becomes a lesson: what to do next
time, and the submission that taught it. Keep them in your release log
([templates/release-log.md](templates/release-log.md)) so a mistake on one app is never repeated on
another.
