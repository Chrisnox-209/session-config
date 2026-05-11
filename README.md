# 🚀 Session Config — Zsh / Oh My Zsh / Git Aliases

Configuration rapide et automatisée pour un terminal propre et productif sous Linux.

Ce dépôt permet d’installer facilement :

- ✅ `zsh`
- ✅ `Oh My Zsh`
- ✅ `eza` (remplacement moderne de `ls`)
- ✅ `JetBrainsMono Nerd Font`
- ✅ des aliases Git pratiques
- ✅ des helpers de commits avec emojis
- ✅ une configuration automatique du `.zshrc`

---

# 📦 Contenu du projet

```bash
.
├── terminal.sh      # Installe zsh, Oh My Zsh, eza et la Nerd Font
├── alias_zshrc.sh   # Ajoute les aliases et fonctions dans ~/.zshrc
└── README.md
```

---

# ⚡ Installation rapide

## 1️⃣ Cloner le dépôt

```bash
git clone <URL_DU_DEPOT>
cd <NOM_DU_DEPOT>
```

---

## 2️⃣ Rendre les scripts exécutables

```bash
chmod +x terminal.sh
chmod +x alias_zshrc.sh
```

---

## 3️⃣ Installer le terminal

```bash
./terminal.sh
```

Le script propose automatiquement :

- installation de `zsh`
- installation de `Oh My Zsh`
- installation de `eza`
- installation de `JetBrainsMono Nerd Font`

---

## 4️⃣ Ajouter les aliases et helpers Git

```bash
./alias_zshrc.sh
```

Le script ajoute automatiquement dans `~/.zshrc` :

- aliases `eza`
- configuration Git rapide
- helpers de commits emoji
- fonction `gchelp`

---

# 🖥️ Aliases disponibles

## 📁 Navigation avec eza

```bash
ls
l
la
tree
```

### Exemple

```bash
la
```

Affiche :

- permissions
- fichiers cachés
- icônes
- header

---

# 🔀 Configuration Git rapide

## 🎓 Compte 42

```bash
git42
```

Configure :

```bash
user.name  = cpietrza
user.email = cpietrza@student.42lyon.fr
```

---

## 👤 Compte perso GitHub

```bash
gitperso
```

Configure :

```bash
user.name  = Chrisnox-209
user.email = 89594242+Chrisnox-209@users.noreply.github.com
```

---

## 🔎 Vérification config Git

```bash
gitcheck
```

---

# ✨ Helpers de commits

## Syntaxe

```bash
gc<type> <scope> "message"
```

---

## Exemples

### Bugfix

```bash
gcfix api "corrige validation token"
```

Commit généré :

```bash
🐛 fix(api): corrige validation token
```

---

### Nouvelle feature

```bash
gcfeat parser "ajout parsing JSON"
```

---

### Documentation

```bash
gcdocs README "mise à jour installation"
```

---

# 📚 Liste des helpers

| Commande | Description |
|---|---|
| `gcfeat` | Nouvelle fonctionnalité |
| `gcfix` | Correction de bug |
| `gcdocs` | Documentation |
| `gctweak` | Petit ajustement |
| `gcrefactor` | Refactor |
| `gcstyle` | Formatage |
| `gcadd` | Ajout de fichiers |
| `gcwip` | Work in progress |
| `gcchore` | Maintenance |
| `gctest` | Tests |
| `gcperf` | Performance |
| `gcci` | CI/CD |
| `gcbuild` | Build |
| `gcremove` | Suppression |
| `gcmedia` | Media/assets |
| `gcconfig` | Configuration |
| `gcupgrade` | Upgrade |
| `gcdowngrade` | Downgrade |
| `gchotfix` | Hotfix |
| `gcmerge` | Merge |

---

# 🆘 Aide intégrée

```bash
gchelp
```

Affiche toute la documentation directement dans le terminal.

---

# 🔤 Police recommandée

Le script installe :

```text
JetBrainsMono Nerd Font
```

⚠️ Pense à changer la police de ton terminal après installation.

---

# 🔄 Recharger zsh

Après installation :

```bash
source ~/.zshrc
```

ou redémarre ton terminal.

---

# 🛠️ Dépendances

## Ubuntu / Debian

Le projet utilise :

- `curl`
- `wget`
- `unzip`
- `zsh`
- `eza`

---

# 💡 Recommandations

## Terminal conseillé

- GNOME Terminal
- Warp
- Kitty
- WezTerm

---

## Plugins Oh My Zsh utiles

Dans `~/.zshrc` :

```bash
plugins=(git sudo docker z)
```

---

# 📸 Aperçu attendu

```bash
📁 Icons
🌳 Tree
⚡ Git helpers
🎨 Nerd Font
🚀 Oh My Zsh
```

---

# 📜 Licence

MIT License

---

# 👨‍💻 Auteur

**Chrisnox-209**  
42 Lyon / GitHub Enthusiast 🚀
