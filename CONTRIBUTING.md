# Contributing

Merci de vouloir contribuer à ce projet ! Ce document décrit comment proposer un changement, signaler un bug et respecter les conventions du dépôt.

## Avant de commencer

- Vérifiez que votre environnement local est bien configuré (voir `README.md`).
- Parcourez les [issues ouvertes](../../issues) pour voir si le sujet est déjà suivi avant d'en ouvrir une nouvelle.
- Pour tout changement important, ouvrez une issue de discussion avant de commencer à coder, afin d'éviter un travail qui ne serait pas retenu.

## Signaler un bug

Ouvrez une issue avec le label `bug` et incluez :

- Le comportement attendu et le comportement observé
- Les étapes pour reproduire le problème
- L'environnement concerné (OS, version de Node.js, navigateur si pertinent)
- Les logs ou messages d'erreur pertinents (copiés-collés, pas de capture d'écran si le texte est disponible)

## Proposer un changement

1. Forkez le dépôt et créez votre branche à partir de `main` :
   git checkout -b type/nom-court-de-la-fonctionnalite
   Exemples de préfixes : feat/, fix/, docs/, refactor/, test/.

2. Installez les dépendances et vérifiez que le projet tourne en local avant toute modification :
   npm install
   npm run start

3. Codez en respectant les conventions du projet (voir ci-dessous).

4. Testez vos changements localement. Si le projet inclut des tests automatisés, assurez-vous qu'ils passent :
   npm run test
   npm run lint

5. Committez avec un message clair (voir convention plus bas).

6. Ouvrez une Pull Request vers main, en décrivant :
   - Ce que le changement fait et pourquoi
   - Comment le tester
   - Les éventuels tickets/issues liés (Closes #12)

## Convention de commits

Ce projet suit une convention proche de Conventional Commits :

feat(scope): description courte au présent

Exemples :
feat(panier): ajouter la suppression d'un article
fix(auth): corriger l'expiration prématurée du token
docs(readme): clarifier les variables d'environnement

Types courants : feat, fix, docs, style, refactor, test, chore.

## Conventions de code

- Respecter la configuration ESLint fournie (npm run lint avant de committer).
- Nommer les fichiers et variables de façon explicite, en anglais, en camelCase pour les variables/fonctions et en PascalCase pour les composants/classes.
- Garder les fonctions courtes et responsables d'une seule chose.
- Documenter les fonctions non triviales avec un commentaire bref plutôt qu'un pavé de texte.
- Ne pas committer de fichiers générés, de dépendances (node_modules/) ou de secrets (.env) — voir .gitignore.

## Revue de code

- Une Pull Request nécessite au moins une relecture avant fusion.
- Les retours de relecture sont à traiter par de nouveaux commits sur la même branche.
- Soyez factuel et bienveillant dans vos commentaires de relecture : critiquez le code, pas la personne.

## Code de conduite

En participant à ce projet, vous acceptez de maintenir un cadre respectueux et professionnel dans les échanges (issues, PR, discussions).
