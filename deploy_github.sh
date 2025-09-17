
#!/usr/bin/env bash
set -euo pipefail
if ! command -v gh >/dev/null 2>&1; then
  echo "Please install GitHub CLI: https://cli.github.com/"
  exit 1
fi

REPO_NAME=${1:-baby-schedule}
VISIBILITY=${2:-public}

echo "Creating repo $REPO_NAME ($VISIBILITY) ..."
gh repo create "$REPO_NAME" --$VISIBILITY --source=. --remote=origin --push
echo "Enabling GitHub Pages..."
gh api --method POST repos/:owner/$REPO_NAME/pages/builds > /dev/null || true
echo "Done. Visit the Pages settings to confirm the URL."
