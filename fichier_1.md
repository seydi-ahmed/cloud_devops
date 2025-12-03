# Linux — Commandes Essentielles, Utilisateurs & Permissions (Guide Pratique)

> Niveau : Débutant → Intermédiaire (orienté DevOps)
> Environnement : Ubuntu / Debian

---

## 1) Commandes essentielles du quotidien

### 🔹 Navigation & fichiers

```bash
pwd                 # Afficher le dossier courant
ls                  # Lister les fichiers
ls -la              # Lister en mode détaillé avec fichiers cachés
cd /chemin          # Changer de dossier
cd ..               # Remonter d’un niveau
cd ~                # Aller au home
```

### 🔹 Manipulation de fichiers

```bash
touch fichier.txt           # Créer un fichier
mkdir dossier               # Créer un dossier
mkdir -p a/b/c              # Créer une arborescence
cp source.txt dest.txt      # Copier un fichier
cp -r dossier1 dossier2     # Copier un dossier
mv ancien.txt nouveau.txt  # Renommer / déplacer
rm fichier.txt              # Supprimer un fichier
rm -r dossier               # Supprimer un dossier
rm -rf dossier              # Supprimer sans confirmation (DANGEREUX)
```

### 🔹 Lecture de fichiers

```bash
cat fichier.txt             # Afficher tout le contenu
less fichier.txt            # Lecture page par page
head fichier.txt            # 10 premières lignes
tail fichier.txt            # 10 dernières lignes
tail -f /var/log/syslog     # Suivi temps réel
```

### 🔹 Recherche

```bash
grep "erreur" fichier.txt      # Chercher un mot
grep -R "error" /var/log     # Recherche récursive
find / -name "*.log"         # Chercher par nom
```

---

## 2) Processus & Système

```bash
ps aux              # Processus actifs
top                 # Vue temps réel
htop                # Version améliorée
kill PID            # Tuer un processus
kill -9 PID         # Forcer l’arrêt

df -h               # Espace disque
free -h             # Mémoire RAM
uptime              # Temps de fonctionnement du système
```

---

## 3) Gestion des utilisateurs

### 🔹 Afficher l’utilisateur courant

```bash
whoami
id
```

### 🔹 Création d’un utilisateur

```bash
sudo adduser devops
```

### 🔹 Mot de passe

```bash
sudo passwd devops
```

### 🔹 Suppression

```bash
sudo deluser devops
```

### 🔹 Groupes

```bash
groups devops
sudo groupadd admins
sudo usermod -aG admins devops
```

### 🔹 Switch utilisateur

```bash
su devops
```

---

## 4) Sudo & privilèges

```bash
sudo cat /etc/sudoers
sudo visudo
```

Ajouter un utilisateur au sudo :

```bash
sudo usermod -aG sudo devops
```

---

## 5) Permissions Linux (TRÈS IMPORTANT POUR DEVOPS)

### 🔹 Format

```bash
-rwxr-xr--
```

* r = read (4)
* w = write (2)
* x = execute (1)

### 🔹 Changer permissions

```bash
chmod 755 script.sh
chmod 644 fichier.txt
chmod -R 775 dossier
```

### 🔹 Changer propriétaire

```bash
sudo chown devops fichier.txt
sudo chown devops:admins fichier.txt
sudo chown -R devops:admins dossier
```

---

## 6) Services système (Systemd)

```bash
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
sudo systemctl enable nginx
```

---

## 7) Réseau rapide

```bash
ip a                 # Interfaces réseau
ping google.com      # Tester la connexion
curl http://site.com # Tester une URL
wget http://site.com # Télécharger
```

---

## 8) Variables & Shell

```bash
echo $PATH
export VAR=devops
echo $VAR
```

---

## 9) Historique & productivité

```bash
history
!!        # Dernière commande
!25       # Commande numéro 25
clear
alias ll='ls -la'
```

---

# TP FINAL — UTILISATEURS & PERMISSIONS ✅

## 🎯 Objectif

Créer deux utilisateurs et gérer leurs droits.

---

### ✅ Étape 1 — Créer 2 utilisateurs

```bash
sudo adduser devops
sudo adduser test
```

---

### ✅ Étape 2 — Créer un dossier partagé

```bash
sudo mkdir /srv/partage
```

---

### ✅ Étape 3 — Créer un groupe

```bash
sudo groupadd equipe
sudo usermod -aG equipe devops
sudo usermod -aG equipe test
```

---

### ✅ Étape 4 — Appliquer les permissions

```bash
sudo chown -R devops:equipe /srv/partage
sudo chmod -R 770 /srv/partage
```

---

### ✅ Étape 5 — Vérification

Depuis chaque utilisateur :

```bash
cd /srv/partage
touch test.txt
```

✅ Si les deux peuvent créer un fichier → TP validé

---

## ✅ Validation du module

✔ Tu sais utiliser les commandes Linux de base
✔ Tu sais gérer des utilisateurs
✔ Tu sais configurer des permissions propres
✔ Tu es prêt pour l’administration serveur & DevOps

---

🔥 Prochaine étape : Linux avancé, processus, cron, bash scripting
