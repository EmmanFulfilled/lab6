OWNER=$(gh api user --jq .login)
COLLAB="HYousef07"
gh api -X DELETE repos/$OWNER/lab6/collaborators/$COLLAB
gh api repos/$OWNER/lab6/collaborators --jq '.[].login'
