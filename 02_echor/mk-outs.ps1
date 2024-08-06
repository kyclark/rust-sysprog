$OUTDIR = "tests\expected"
if (-not (Test-Path $OUTDIR)) {
    New-Item -ItemType Directory -Path $OUTDIR | Out-Null
}

"Hello there" | Out-File -FilePath "$OUTDIR\hello1.txt"
"Hello", "there" -join ' ' | Out-File -FilePath "$OUTDIR\hello2.txt"
"Hello  there" | Out-File -FilePath "$OUTDIR\hello1.n.txt" -NoNewline
"Hello", "there" -join ' ' | Out-File -FilePath "$OUTDIR\hello2.n.txt" -NoNewline
