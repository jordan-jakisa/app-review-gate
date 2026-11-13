# Example: Notes for Review, Rowpin 1.0.1

These are the Notes I sent with Rowpin 1.0.1 on 7 November 2026. It was approved on the first try,
about 10 hours later. They sit just under the field's 4,000-character limit.

Rowpin is a crochet and knitting row counter with a hard paywall, so the reviewer has to start a
sandbox trial to see anything. The Notes say so in section 2.

```
Hello App Review team,

Audience and storefronts
Crocheters and knitters, teens and adults (rated 16+). The app is in English; the store listing is also in German and French. Offered in every storefront except China mainland. Nothing licensed or regulated.

What changed in 1.0.1
- Siri and Shortcuts: "Next row in Rowpin", "What row am I on in Rowpin", "Back a row in Rowpin", "Start counting in Rowpin". Siri counts the project counted last and says the row and its instruction. Count Row is also a Control Center control and an Action button choice (iOS 18+). Settings > Hands-free shows the phrases.
- Apple Watch app: the row, its instruction, + and -; complications and a Smart Stack widget show the row. It counts through the iPhone (Rowpin must be installed there; Plus applies).
- Counter menu (•••): History (every count and where it came from; tap one to go back), Notes (project and row notes), Count stitches (a stitch counter for the row), Mark up the pattern (finger or Apple Pencil on the page; two fingers scroll).
- A finished project opens as its record: Make it again, Share, Pattern; Not finished in •••.
- Where it's from: a project keeps the page or file its pattern came from (••• > Where it's from).
- Temperature Blanket 2027, a new beginner project: one row a day of 2027. Setup picks °C/°F and colours; the user types each day's high, Rowpin answers "Crochet this row in Navy". Optional evening reminder (local notification). No location access.
- New widgets; tapping the Lock Screen counter opens its project.
- iPhone Duo and iOS 27 layouts, VoiceOver and large text, a ruler calibrated per screen.
No new purchase; nothing new is sent to us.

1. What Rowpin is
A row counter that follows the user's own crochet or knitting pattern: it finds the numbered rows in their PDF, photo or web page on the device (no AI) and highlights their row as they tap +. No account, no login.

2. Subscription testing
Onboarding ends on the paywall, which has no close: Rowpin requires Rowpin Plus. Please keep the yearly plan and tap "Start my ...-day trial" with your sandbox Apple Account. Restore purchases is on the paywall and in Settings.

3. Main review flow
1. Get started, tap + on the counter, then Continue.
2. Allow or Don't Allow anonymous usage events (either continues).
3. An optional first name, three questions, a summary, the Lock Screen screen.
4. Start the trial (section 2).
5. Projects: open a beginner project (bundled, no file needed), or Add your pattern > Choose a file, Photo library, Scan pages or Web page.
6. Tap + to count, tap a line to count from there, then Undo. Then say "Hey Siri, next row in Rowpin".

4. Other features
Lock Screen counter (Settings > Counter on the Lock Screen), widgets, the Tools tab (ruler, stitch dictionary, size charts), Share to Rowpin from Files or Safari, iCloud sync (private CloudKit).

5. Permissions
Camera only after Scan pages or Take a photo; Photos through Apple's private picker; Notifications after a trial starts (one reminder) or when the blanket's evening reminder is switched on; usage events only after Allow (Settings turns them off).

6. Account and subscription controls
Settings holds Plus status, Restore purchases, Manage subscription, Contact the developer, Privacy policy and Terms of use. Without Plus, projects keep their counts, locked until Plus returns, and Siri replies "Open Rowpin to keep counting." No accounts, nothing to delete; no shared content.

7. Services
RevenueCat checks purchases under an anonymous ID. PostHog (EU) gets anonymous usage events only after Allow. No ads, no AI, no server of ours. Bundled patterns are our own; the charts credit the Craft Yarn Council.

8. In-App Purchase
One group, "Rowpin Plus": yearly or monthly, each with a free trial for eligible users, in Apple's sheet.

Attached: a screen recording of 1.0.1 with a label on each section. Tested on: iPhone 12 (iOS 27.2) and iPad Pro 13-inch (M5) (iOS 27.0, simulator).

Regards,
Jordan Mungujakisa
```

## What to notice

- The audience and storefront block comes first, before anything about features.
- "What changed" names every new feature and ends with what did not change.
- Every control is named the way it is written in the app.
- The reviewer is told what happens without a subscription, so a locked screen is not read as a
  bug.
- The last line says which devices it was tested on, and that one of them was a simulator.
