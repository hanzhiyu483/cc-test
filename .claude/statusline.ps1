$input | Out-String | ConvertFrom-Json | ForEach-Object {
  $dir = $_.workspace.current_dir
  $model = $_.model.display_name
  $pct = $_.context_window.remaining_percentage
  if ($pct) {
    Write-Output "$dir | $model | $([math]::Round($pct))%"
  } else {
    Write-Output "$dir | $model"
  }
}
