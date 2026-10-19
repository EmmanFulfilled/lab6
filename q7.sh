OWNER=$(gh api user --jq .login)
gh pr create --repo $OWNER/lab6 \
  --base main --head Q12345 \
  --title "Add answers for q1 to q5" \
  --body "Merges the Q12345 branch with the q1 to q5 scripts into main"
