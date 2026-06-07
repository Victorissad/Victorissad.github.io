#!/usr/bin/env bash
# Téléchargement des vrais logos officiels Devicon depuis jsDelivr CDN
# Usage : bash download-icons.sh

set -e

DEST="assets/img/icons"
mkdir -p "$DEST"

# Format: nom_local|chemin_devicon
ICONS=(
  "java|java/java-original.svg"
  "php|php/php-original.svg"
  "javascript|javascript/javascript-original.svg"
  "mysql|mysql/mysql-original.svg"
  "powershell|powershell/powershell-original.svg"
  "spring|spring/spring-original.svg"
  "laravel|laravel/laravel-original.svg"
  "android|android/android-original.svg"
  "react|react/react-original.svg"
  "threejs|threejs/threejs-original.svg"
  "intellij|intellij/intellij-original.svg"
  "androidstudio|androidstudio/androidstudio-original.svg"
  "vscode|vscode/vscode-original.svg"
  "windows|windows11/windows11-original.svg"
  "git|git/git-original.svg"
  "gitlab|gitlab/gitlab-original.svg"
  "maven|apache/apache-original.svg"
  "postman|postman/postman-original.svg"
  "npm|npm/npm-original-wordmark.svg"
  "composer|composer/composer-original.svg"
)

CDN="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons"

echo "Téléchargement des 20 logos officiels Devicon..."
echo ""

success=0
failed=0
for entry in "${ICONS[@]}"; do
  name="${entry%%|*}"
  path="${entry#*|}"
  url="$CDN/$path"

  if curl -fsSL -o "$DEST/$name.svg" "$url"; then
    echo "  ✓ $name.svg"
    ((success++))
  else
    echo "  ✗ $name.svg (échec depuis $url)"
    ((failed++))
  fi
done

echo ""
echo "Terminé : $success réussis, $failed échecs."
echo "Fichiers dans : $DEST/"
