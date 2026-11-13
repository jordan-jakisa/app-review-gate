# The review video

A screen recording from a real device, on the build being submitted, attached in App Review
Information. I send one whenever features or paths changed. On a developer account that is new to
App Review, I send one with every new app (lesson L10).

## Before pressing record

I lost a take because the sandbox account still had an active trial, so the paywall never showed
the trial offer. Now I check the state the script assumes first:

- [ ] The sandbox tester's purchase history is cleared, so the paywall offers the trial.
- [ ] The app is deleted and the build to submit is installed fresh, so the recording starts at
  onboarding.
- [ ] A dry run reaches Apple's purchase sheet.
- [ ] Any file the script opens is on the device.
- [ ] Do Not Disturb is on.
- [ ] Nothing personal can show up: your own projects, your notifications, your name.

## The script

One take, from launch:

1. Launch and onboarding.
2. The paywall and a sandbox purchase.
3. The main flow.
4. Each feature that changed in this version.
5. Restore purchases.
6. The version and build in Settings.

Write the script with the exact labels in the build, and check each one against the code.

## After recording

- Put a short text label over each section (Onboarding, Paywall and sandbox trial, and so on). Any
  free video editor does this.
- Say in the Notes what could not be recorded and why. A locked phone stops a screen recording, so
  a Lock Screen feature cannot be on camera.
- After uploading the video, check the selected build again (L8).
