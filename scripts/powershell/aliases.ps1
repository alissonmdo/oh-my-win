if (Get-Command Open-Workspace -errorAction SilentlyContinue) {
  Set-Alias work Open-Workspace
}