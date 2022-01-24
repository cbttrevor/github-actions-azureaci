Start-PodeServer -ScriptBlock {
  Add-PodeEndpoint -Address 0.0.0.0 -Port 8000 -Protocol http
  Add-PodeRoute -Method Get -Path / -ScriptBlock {
    Write-PodeHtmlResponse -Value '<h1>Web App is Running</h1>'
  }
}