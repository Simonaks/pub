for ($i = 2; $i -le 10; $i++) {
  # Make a small modification to the index.html file
  $content = Get-Content -Path 'index.html'
  $content = $content -replace 'Modification \d+.', "Modification $i."
  Set-Content -Path 'index.html' -Value $content

  # Add, commit, and push the changes
  git add index.html
  git commit -m "Add comment $i"
  git push origin main
  Write-Host "Comment $i added to index.html"
}
