# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls="clear"
alias ccw="cc -Werror -Wextra -Wall"
alias nn="norminette"
alias paco='/home/cpietrza/francinette/tester.sh'

# Alias for ZFT tool
alias zft='bash /home/cpietrza/Downloads/zft/run.sh'


# Switch vers config 42 (Vogsphere)
alias git42='git config user.name "cpietrza" && git config user.email "cpietrza@student.42lyon.fr" && echo "Config Git: 42 (Vogsphere)"'

# Switch vers config GitHub Personnel
alias gitperso='git config user.name "Chrisnox-209" && git config user.email "89594242+Chrisnox-209@users.noreply.github.com" && echo "Config Git: Perso (GitHub)"'

# Optionnel : Voir la config actuelle
alias gitcheck='git config user.name && git config user.email'
alias chrome="$HOME/apps/chrome/opt/google/chrome/google-chrome --no-sandbox"


# ---------- Git commit helpers avec emoji (préfixe gc) ----------

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
  gcfeat python8/ex2 "ajout check_data"
  gcfix api "corrige validation token"
  gcdocs README "update structure"
  gcmedia media "ajout screenshots"
  gcperf python8/ex2 "optimisation boucle"
  gcupgrade deps "mise à jour packages"

Types de commit disponibles :
🧩 gcfeat      ➜ Nouvelle fonctionnalité
🐛 gcfix       ➜ Correction de bug
📝 gcdocs      ➜ Documentation
🛠  gctweak    ➜ Petit ajustement / renommage
🔨 gcrefactor ➜ Refactor sans changement fonctionnel
💄 gcstyle    ➜ Formatage / normes / lint
➕ gcadd      ➜ Ajout fichiers / assets / media
✅ gctest     ➜ Tests unitaires / fonctionnels
⚡ gcperf     ➜ Amélioration performance
👷 gcci       ➜ CI/CD / pipelines
⏪ gcbuild    ➜ Build / artefacts
❌ gcremove   ➜ Suppression fichiers / modules
🎨 gcmedia    ➜ Media / images / vidéos
⚙️  gcconfig    ➜ Configuration / setup
⬆️  gcupgrade  ➜ Upgrade dépendances / packages
⬇️  gcdowngrade ➜ Downgrade dépendances / packages
🚑 gchotfix    ➜ Hotfix / correction urgente
🔀 gcmerge     ➜ Merge branches

Scopes suggérés 📦
  api, cli, parser, auth, README, config, gitignore
  python7/ex1, python7/ex2, python7/ex3, python7/ex4
  python8/ex1, python8/ex2, tests, deps, ci
  assets, media, docker, env, core, utils

Tips 💡
  gcfeat python8/ex2 "message"
  gcfix python8/ex2 "message"
  gcdocs README "update"
  gctest tests "ajout tests"
EOF
}
