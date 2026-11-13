#!/bin/bash
# Prints the source lines a reviewer would question, grouped by playbook row, for a human to judge.
# Skips hidden folders (.gradle, .swiftpm, .claude worktrees), build output, tests and dependencies.
# Usage: scan.sh <path> [<path> ...]: the folders the app is built from, or the repo root.
[ $# -gt 0 ] || { echo "usage: scan.sh <path> [<path> ...]" >&2; exit 1; }

files() {
  find "$@" \( -name '.?*' -o -name build -o -name .build -o -name node_modules -o -name Pods -o -name .git \
    -o -name DerivedData -o -name '*Tests' -o -name test -o -name tests -o -name androidTest \) -prune \
    -o -type f \( -name '*.swift' -o -name '*.kt' -o -name '*.dart' -o -name '*.ts' -o -name '*.tsx' \
    -o -name '*.js' -o -name '*.jsx' \) -print
}

section() {
  echo
  echo "== $1"
  files "${PATHS[@]}" | tr '\n' '\0' | xargs -0 grep -niE "$2" 2>/dev/null | head -40
}

PATHS=("$@")
section "P1 unfinished (coming soon, placeholders, TODO)" \
  'coming soon|soon\b|\btodo\b|fixme|placeholder|lorem|not (yet )?available|under construction|work in progress'
section "P8 and P9 claims and social proof" \
  'loved by|trusted by|thousands|million|[0-9]+k\+|★|5 stars|100%|guarantee|never fail|best app|#1|number one|official|certified|approved by'
section "P11 review prompt" \
  'requestReview|SKStoreReviewController|ReviewManager|in_app_review|requestReviewFlow'
section "P4 permission requests" \
  'requestAuthorization|requestAccess|AVCaptureDevice|PHPhotoLibrary|CLLocationManager|requestPermission|ActivityCompat|UNUserNotificationCenter|ATTrackingManager|CNContactStore|EKEventStore|HKHealthStore'
section "P10 remote paywall and remote switches" \
  'RevenueCatUI|PaywallView\(offering|presentPaywall|remoteConfig|RemoteConfig|featureFlag|isFeatureEnabled|getFeatureFlag|posthog.*flag'
section "P12 abandon and exit offers" \
  'PromotionalOffer|winback|win-back|exit offer|discount|one[- ]time offer|special offer|onDismiss.*offer|manageSubscriptionsSheet|showManageSubscriptions'
section "L4 debug paths (check each sits inside #if DEBUG or a debug build type)" \
  'debug\.|Skip \(debug|DebugUnlock|-debug|BuildConfig.DEBUG|kDebugMode'

echo
echo "== P4 usage descriptions (Info.plist)"
find "${PATHS[@]}" -name Info.plist -not -path '*/build/*' -not -path '*/DerivedData/*' -print0 \
  | xargs -0 grep -h -A1 'UsageDescription' 2>/dev/null | grep -v '^--$'
