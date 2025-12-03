for ($i = 1; $i -le 10; $i++) {
  # Make a small modification to the index.html file
Add-Content -Path 'README.md' -Value "Comment $i`n"

  # Add, commit, and push the changes
git add README.md
  git commit -m "Add comment $i"
  git push origin main
Write-Host "Comment $i added to README.md"
}
