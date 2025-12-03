# Introduction au cloud :
Le cloud computing est la fourniture de ressources informatiques via internet à la demande, sans gestion physique des serveurs

---

## Avantages :
- Scalabilité : Augmenter et réduire les ressources
- Haute disponibilité : Trés peu de pannes
- Paiement à l'usage : Payer ce qu'on consomme
- Sécurité : AWS protége l'infrastructure
- Rapidité : Serveur créé en une minute

---

## IaaS, PaaS et SaaS :
1. IaaS : Infrastructure as Service --> utilisé par les DevOps
- Tu loues:
    - Serveurs
    - Réseaux
    - Disques

- Tu gères:
    - Le systéme
    - Les mises à jour
    - Les sécurités OS

- Exemple:
    - AWS EC2
    - Google Compute Engine
    - Azure VM

---

2. PaaS : Platform as Service --> utilisé par les développeurs simples
- Tu donnes juste ton code

- Le fournisseur gère:
    - Serveurs
    - Sécurité
    - Mise à jour

- Exemple:
    - AWS Elastic Beanstalk
    - Heruko
    - Google App Engine

---

3. SaaS : Software as Service --> utilisé par tout le monde
- Tu utilises juste un logiciel en ligne

- Exemples : Gmail, Dropbox, Google Docs, Office 365

---

## Régions, AZ, EDGE :
1. Région --> une zone géographique

2. Availability Zone (AZ) :
- Une région contient plusieurs AZ
- Chaque AZ = datacenter indépendant
- Avantages :
    - si une AZ tombe, l'autre fonctionne
    - haute disponibilité

3. EDGE :
- serveurs de cache
- rapprochent le contenu de l'utilisateur
- utilisé par :
    - CloudFront (CDN)
    - Latence ultra faible

---

## modèle de responsabilité partagée (le plus important)
1. AWS ne gère pas tout (toi non plus)

2. AWS est responsable de :
- Datacenters
- Physique des serveurs
- Matériel réseau
- Sécurité Physique

3. Toi tu es responsable de :
- Tes utilisateurs (IAM)
- Tes mots de passe
- Tes applications
- Tes données
- Tes régles frirewall