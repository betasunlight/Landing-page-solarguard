#!/bin/bash
# ─────────────────────────────────────────────────────────────
# SolarGuard Landing Page — GitHub Push Script
# Run this on your local machine after downloading the 3 files
# ─────────────────────────────────────────────────────────────

REPO="https://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@github.com/betasunlight/Landing-page-solarguard.git"
FOLDER="solarguard-deploy"

echo "→ Creating local folder..."
mkdir -p $FOLDER && cd $FOLDER

echo "→ Initialising git..."
git init
git checkout -b main

echo "→ Copying files (make sure index.html, vercel.json, README.md are in this folder)..."
# Files should already be here — downloaded from Claude

echo "→ Staging files..."
git add index.html vercel.json README.md .gitignore

echo "→ Committing..."
git commit -m "feat: add SolarGuard landing page with Vercel config"

echo "→ Adding remote..."
git remote add origin $REPO

echo "→ Pushing to GitHub..."
git push -u origin main --force

echo ""
echo "✅ Done! Files are now on GitHub."
echo ""
echo "─── NEXT: Connect to Vercel ───────────────────────────────"
echo "1. Go to https://vercel.com/new"
echo "2. Click 'Import Git Repository'"
echo "3. Select: betasunlight/Landing-page-solarguard"
echo "4. Framework Preset: Other"
echo "5. Click Deploy"
echo ""
echo "Your live URL will be:"
echo "  https://landing-page-solarguard.vercel.app"
echo "  (or a custom domain you add in Vercel settings)"
echo "──────────────────────────────────────────────────────────"
