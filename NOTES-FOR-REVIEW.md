# Notes for Review

The reviewer has a few minutes and has never seen your app. The Notes are where you answer their
questions before they ask. Write them in plain bullets a beginner can follow, and check every tab,
button and label you name against the build. The field holds 4,000 characters, so count them.

A real example is in [examples/rowpin-1.0.1-notes.md](examples/rowpin-1.0.1-notes.md).

## The order

1. **Audience and storefronts.** Who the app is for, the age rating, the language, the exact
   storefront list or "all but ...", and anything licensed, regulated or official. This block never
   gets cut to make room (lesson L13). Both of my 2.1 requests asked for exactly this.
2. **What changed** (updates only). Every new or moved feature, named specifically (2.3.1(a)).
   "Bug fixes" alone is not enough. End with what did not change, such as purchases and data use,
   when that is true.
3. **What the app is**, in one line, and whether an account is needed. If it is, the demo login.
4. **Purchase testing.** Where the paywall appears, which button starts the trial or the purchase
   in sandbox, and where Restore is.
5. **Main review flow** as numbered steps, naming the exact tab and button.
6. **Other features**, one line each, with any demo data the reviewer needs (bundled samples,
   codes, test accounts).
7. **Permissions.** When each one is asked and why.
8. **Account and subscription controls.** Where Manage Subscription, Restore, Support, Privacy,
   Terms and Delete Account (if there are accounts) are, and that they stay reachable after a
   subscription ends.
9. **Services and third-party material.** Every outside service and what it receives. Credited
   sources.
10. **In-App Purchase.** The group, the plans, the trials, and what keeps the subscription worth
    paying for (3.1.2(a)).

Close with the recording and the devices you tested on.

## Before you paste

- Read the draft as someone who has never opened the app. If a step needs explaining, rewrite it.
- Every label in the Notes is the label in the build. Search the code for each one.
- Every feature in the build is in the Notes. A feature the reviewer finds that you did not
  describe is a risk (2.5.19).
- Count the characters.
- After pasting, reload the page and read the field back.
