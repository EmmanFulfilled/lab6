OWNER=$(gh api user --jq .login)
COLLAB="HYousef07"
gh api -X PUT repos/$OWNER/lab6/collaborators/$COLLAB -f permission=push
