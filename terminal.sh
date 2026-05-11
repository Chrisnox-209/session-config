#!/bin/sh

echo "Voulez-vous installer zsh ? (O/n)"
read reponse_zsh

case "$reponse_zsh" in
  O|o|oui|Oui|"")
    echo "Installation de zsh..."
    sudo apt update && sudo apt install -y zsh
    ;;
  N|n|non|Non)
    echo "zsh non installé."
    ;;
  *)
    echo "Réponse non reconnue, arrêt."
    exit 1
    ;;
esac


echo "Voulez-vous installer Oh My Zsh ? (O/n)"
read reponse_omz

case "$reponse_omz" in
  O|o|oui|Oui|"")
    echo "Installation de Oh My Zsh..."

    # Vérifie si zsh est installé
    if ! command -v zsh >/dev/null 2>&1; then
      echo "zsh n'est pas installé. Installation..."
      sudo apt update && sudo apt install -y zsh
    fi

    # Installation Oh My Zsh en mode non interactif
    RUNZSH=no CHSH=yes sh -c \
      "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ;;
  N|n|non|Non)
    echo "Oh My Zsh non installé."
    ;;
  *)
    echo "Réponse non reconnue, arrêt."
    exit 1
    ;;
esac


echo "Voulez-vous installer eza ? (O/n)"
read reponse_eza

case "$reponse_eza" in
  O|o|oui|Oui|"")
    echo "Installation de eza..."
    sudo apt update && sudo apt install -y eza
    ;;
  N|n|non|Non)
    echo "eza non installé."
    ;;
  *)
    echo "Réponse non reconnue, arrêt."
    exit 1
    ;;
esac


echo "Voulez-vous installer JetBrainsMono Nerd Font ? (O/n)"
read reponse_font

case "$reponse_font" in
  O|o|oui|Oui|"")
    echo "Installation de JetBrainsMono Nerd Font..."

    mkdir -p ~/.local/share/fonts

    wget -q https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip -O JetBrainsMono.zip

    unzip -o JetBrainsMono.zip -d ~/.local/share/fonts

    rm -f JetBrainsMono.zip

    fc-cache -fv

    echo "Police installée avec succès."
    echo ""
    echo "\033[1;31m+--------------------------------------------------+\033[0m"
    echo "\033[1;31m|       Changer la police de ton terminal en :     |\033[0m"
    echo "\033[1;31m|       JetBrainsMono Nerd Font                    |\033[0m"
    echo "\033[1;31m+--------------------------------------------------+\033[0m"
    echo ""
    ;;
  N|n|non|Non)
    echo "Police non installée."
    ;;
  *)
    echo "Réponse non reconnue, arrêt."
    exit 1
    ;;
esac