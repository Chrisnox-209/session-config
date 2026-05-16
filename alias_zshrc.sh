#!/bin/sh

ZSHRC="$HOME/.zshrc"

add_block() {
  NAME="$1"
  CONTENT="$2"

  echo ""
  echo "Ajouter $NAME à zsh ? (O/n): "
  read rep

  case "$rep" in
    O|o|oui|Oui|"")
      if grep -q "$NAME" "$ZSHRC"; then
        echo "⚠️  $NAME déjà présent dans .zshrc"
      else
        echo "Ajout de $NAME..."
        echo "" >> "$ZSHRC"
        echo "# ===== $NAME =====" >> "$ZSHRC"
        echo "$CONTENT" >> "$ZSHRC"
        echo "✔ Ajout terminé"
      fi
      ;;
    N|n|non|Non)
      echo "$NAME ignoré"
      ;;
    *)
      echo "Réponse non reconnue"
      ;;
  esac
}

### ---------------- ALIAS EZA ----------------
EZA_BLOCK='
alias ls="eza --icons --group-directories-first"
alias l="eza -la --header --icons"
alias tree="eza --tree --header"
'

### ---------------- GIT 42 ----------------
GIT_BLOCK='
alias git42='"'"'git config user.name "cpietrza" && git config user.email "cpietrza@student.42lyon.fr" && echo "Config Git: 42 (Vogsphere)"'"'"'

alias gitperso='"'"'git config user.name "Chrisnox-209" && git config user.email "89594242+Chrisnox-209@users.noreply.github.com" && echo "Config Git: Perso (GitHub)"'"'"'

alias gitcheck='"'"'git config user.name && git config user.email'"'"'
'

### ---------------- COMMITS ----------------
COMMIT_BLOCK='
# ===== CONFIG COMMITS =====

function gctweak     { git commit -m "🛠 tweak($1): ${@:2}"; }
function gcfeat      { git commit -m "🧩 feat($1): ${@:2}"; }
function gcfix       { git commit -m "🐛 fix($1): ${@:2}"; }
function gcdocs      { git commit -m "📝 docs($1): ${@:2}"; }
function gcadd       { git commit -m "➕ add($1): ${@:2}"; }
function gcrefactor  { git commit -m "🔨 refactor($1): ${@:2}"; }
function gcwip       { git commit -m "🚧 wip($1): ${@:2}"; }
function gcstyle     { git commit -m "💄 style($1): ${@:2}"; }
function gcchore     { git commit -m "🔧 chore($1): ${@:2}"; }
function gctest      { git commit -m "✅ test($1): ${@:2}"; }
function gcperf      { git commit -m "⚡ perf($1): ${@:2}"; }
function gcci        { git commit -m "👷 ci($1): ${@:2}"; }
function gcbuild     { git commit -m "⏪ build($1): ${@:2}"; }
function gcremove    { git commit -m "❌ remove($1): ${@:2}"; }
function gcmedia     { git commit -m "🎨 media($1): ${@:2}"; }
function gcconfig    { git commit -m "⚙️ config($1): ${@:2}"; }
function gcupgrade   { git commit -m "⬆️ upgrade($1): ${@:2}"; }
function gcdowngrade { git commit -m "⬇️ downgrade($1): ${@:2}"; }
function gchotfix    { git commit -m "🚑 hotfix($1): ${@:2}"; }
function gcmerge     { git commit -m "🔀 merge($1): ${@:2}"; }

# ---------- Git commit help ----------
gchelp() {
cat << 'EOF'
📘 Git Emoji Commit Helpers (préfixe gc)
========================================

Usage:
  gc<type> <scope> "message"

Exemples:
  gcfix api "corrige validation token"
  gcdocs README "update structure"
  gcmedia media "ajout screenshots"

Scopes suggérés 📦
  api, cli, parser, auth, README, config, gitignore
  assets, media, docker, env, core, utils

Tips 💡
  gcdocs README "update"
  gctest tests "ajout tests"

Types de commit disponibles :
🧩 gcfeat        ➜ Nouvelle fonctionnalité
🐛 gcfix         ➜ Correction de bug
📝 gcdocs        ➜ Documentation
🛠  gctweak       ➜ Petit ajustement / renommage
🔨 gcrefactor    ➜ Refactor sans changement fonctionnel
💄 gcstyle       ➜ Formatage / normes / lint
➕ gcadd         ➜ Ajout fichiers / assets / media
🚧 gcwip         ➜ Travail en cours (WIP)
🔧 gcchore       ➜ Tâches techniques / maintenance
✅ gctest        ➜ Tests unitaires / fonctionnels
⚡ gcperf        ➜ Amélioration performance
👷 gcci          ➜ CI/CD / pipelines
⏪ gcbuild       ➜ Build / artefacts
❌ gcremove      ➜ Suppression fichiers / modules
🎨 gcmedia       ➜ Media / images / vidéos
⚙️  gcconfig      ➜ Configuration / setup
⬆️  gcupgrade     ➜ Upgrade dépendances / packages
⬇️  gcdowngrade   ➜ Downgrade dépendances / packages
🚑 gchotfix      ➜ Hotfix / correction urgente
🔀 gcmerge       ➜ Merge branches

EOF
}
'

add_block "ALIAS EZA" "$EZA_BLOCK"
add_block "CONFIG GIT 42" "$GIT_BLOCK"
add_block "CONFIG COMMITS" "$COMMIT_BLOCK"


echo ""
echo "🔄 Recharge automatique de zsh..."

# IMPORTANT : source final demandé
if [ -f "$ZSHRC" ]; then
  # shellcheck disable=SC1090
  . "$ZSHRC"
fi

echo "✔ Terminé ! .zshrc rechargé"
