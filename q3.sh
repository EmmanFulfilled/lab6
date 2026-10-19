#!/bin/bash
OWNER=$(gh api user --jq .login)
COLLAB="HYousef07"

echo "Pending invites:"
gh api repos/$OWNER/lab6/invitations --jq '.[].invitee.login'

echo "Collaborators:"
gh api repos/$OWNER/lab6/collaborators --jq '.[].login'

if gh api repos/$OWNER/lab6/collaborators/$COLLAB --silent 2>/dev/null; then
  echo "$COLLAB has accepted the invite"
else
  echo "$COLLAB has not accepted yet"
fi
