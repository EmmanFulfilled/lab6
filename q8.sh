OWNER=$(gh api user --jq .login)
gh pr merge Q12345 --repo $OWNER/lab6 --merge
