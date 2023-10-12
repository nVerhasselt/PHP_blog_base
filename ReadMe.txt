02/05/2023

Je sais faire:
x-liste des articles
x-détail d'un articles
x-créer un articles

Difficultés:
x-Editer un articles(modifier)
x-Ajouter un commentaire
x-Supprimer une publication et tous les commentaires(requête delete?)

Facultatif selon le temps restant:
1. Options utilisateurs
2. Sécuriser: Vérification des input - utilisation htmlEntities etc... (voir exercice formulaire nouvelle techno)
3. Ajouter bootstrap et css
_______________________________________________________________________________________________________________

1-Création de la BDD sur php my admin - Attention au moteur de stockage -> InnoDB
10h10 OK

2-Fonctionnalité créer un article
11h38 OK

3-Page derniers articles postés
12h03 OK

4-Page détail article
13h09 OK

5-Fonctionnalité commentaires
.Je souhaite que lorsque j'ajoute un commentaire, l'id du poste commenté soit inséré dans la colonne id_post de la table comments

15h13 
Problème pour l'ajout de commentaire, ma requête n'est pas prise en compte, lorsque je clique sur envoyer, rien ne se passe.
Je test la requête dans phpMyAdmin:
Problème de typage sur le nom, j'ai oublié les guillemets pour les string. 
Je vérifie le typage dans ma requête dans mon php. La valeur récupérée dans mon $_GET est une string, ça doit être un int.
Dois-je la convertir en int avant le bindParam?
Recherche d'une méthode qui convertit en int: https://www.php.net/manual/fr/function.intval.php
Je fais un essai.
Rien ne s'ajoute dans ma table
Le problème n'est pas le typage.

16h00 
Joker aide de mon conjoint. Problème avec l'id de l'article qui n'est pas récupéré.
Ajout de la requête url dans l'action du formulaire.

16h12 
Fonctionnalité ajout commentaire OK!

Ajouter la liste des commentaires liée à l'article.
17h28 OK

17h52
-Supprimer une publication et tous les commentaires(requête delete?)

21h08
Pour supprimer une ligne de la table, utiliser DELETE voir doc: https://www.w3schools.com/php/php_mysql_delete.asp
Je pense qu'il faut faire deux requêtes. 

22h57
La suppression d'articles + commentaires associés fonctionne.

Les priorités pour demain:
-Editer (modifier) un article
-Gestion catégories. Losqu'un article est créée, on peut lui attribuer une catégorie mais la catégorie n'apparait pas dans ma table catégorie.
-Les fonctionnalité Options
-Sécuriser avec condition et failles XSS (htmlEntities etc...)
-Faire un retour à Yasmina

_______________________________________________________________________________________________________________________________________________

03/05/2023

8h45
Après relecture du sujet je vais revoir la structure de mes pages.
x.Mettre la liste des articles directement sur la page index
x.Ajouter bouton annuler au formulaire add_post_view.html
x.Revoir structure de la page post_detail_view pour coller à la maquette
x.Mettre liste des commentaires et ajout de commentaires sur la page post_detail
x.Ajouter fonctionnalité Editer article.

10h28
J'essaie de mettre le detail de l'article, les commentaires et le formulaire d'ajout de commentaires sur la même page car ils étaient sur des pages différentes.
Niveau affichage c'est ok mais à l'ajout de commentaire, je tombe sur une page pleine d'erreurs. Il y a un problème avec la récupération de l'id du post.

11h11
Il y avait effectivement un problème dans la récupération, grâce à cette ligne: <form action="add_comment.php?article_id=<?= $article['id_post'] ?>" method="POST">
Je peux récupérer l'id. J'utilisai POST pour récupérer le tableau à cause de la method="POST" juste à côté de la requête. Je peux récupérer le contenu d'une requête url uniquement avec $_GET.

6- Fonctionnalité Editer articles
x.Lorsque je clique sur éditer, je souhaite être dirigée sur une page contenant un formulaire dont les input contiennent les valeurs initiales. 
Je dois pouvoir les modifer et être redirigée vers la page index (pour le moment). 
Les modifications doivent apparaître.
Utilisation de la commande UPDATE
Il faut récupérer les valeurs de l'articles sélectionné dans la table posts pour les insérer dans les input.

14h47 Problème avec ma page edit_post. Le formulaire ne s'affiche pas. Ma page html récupère bien le tableau correspondant à l'article que je veux modifier. Mais le formulaire ne s'affiche pas. 
Je souhaite placer les infos de mon tableau dans les input appropriées mais je ne peux pas vérifier.

15h07
La partie Action en haut de page posait problème, je l'ai enlevée et ça fonctionne, je verrai pour la remettre avec le bouton supprimer plus tard.
Je passe à la requête update pour modifier l'article.
La requête fonctionne sur PhpMyAdmin.

15h57
Ca fonctionne, le post modifié s'affiche bien dans ma table. Il se met à jour sur ma page d'accueil
Je met du temps à passer et récupérer correctement les bonnes infos via les requêtes url et les forms mais ça fini par fonctionner.
Je remet la partie action avec le bouton supprimer.

16h11
Catégories
Ajouter les catégories via PhpMyAdmin
Possibilité de sélectionner parmis les catégories existantes récupérées via requête SQL dans table catégory
Possibilité de créer une catégorie vide, ajouter une colonne id_post avec la case null cochée à la table catégorie?

x.Création de 5 catégories via PhpMyAdmin et ajout d'une colonne id_post.
Après avoir manipuler la table sur PhpMyAdmin, je pense qu'une colonne supplémentaire n'est pas nécessaire, je la supprime 

20h53
Options
Je souhaite que lorsque je choisis une catégorie pour un article ce soit le nom de la catégorie qui s'affiche dans ma liste d'articles et pas son identifiant.
Ma fonctionnalité éditer ne fonctionne plus. Erreurs dans la requête. J'ai du modifier quelque chose par erreur, je réctifie.

_______________________________________________________________________________________________________________________________________________

04/05/2023

8h51
Je relis le sujet, je test les fonctionalités du blog.

.Options
.Sécuriser
.Css, bootstrap...

1.Options
x.Créer un table users
x.Créer register_form_view.html
x.Créer register_form.php
x.Créer login_form_view.html (peut-être sur la même page que register_form_view?)
x.Créer login_form.php

.Je dois vérifier qu'il y a une correspondance avec la BDD
.Si oui lancer une session 
.Mettre des conditions sur Ajouter article, ajouter commentaires (si session ouverte?)
.Mettre condition sur modification d'article (si post_author = $_SESSION['post_author']).
.Il faudra trouver un moyen de modifier le header lorsqu'une session est ouverte et transformer "se connecter" par "se déconnecter" 

Je décide de mettre les 2 formulaires sur 2 pages séparées pour le moment.

Je cherche comment donner accès à certaines pages uniquement après connexion.
https://www.w3schools.com/php/php_sessions.asp
https://www.pierre-giraud.com/php-mysql-apprendre-coder-cours/session-definition-utilisation/
https://openclassrooms.com/fr/courses/918836-concevez-votre-site-web-avec-php-et-mysql/4239476-conservez-des-donnees-grace-aux-sessions-et-aux-cookies

Lorsque j'interroge $_SESSION sur une autre page, elle est vide pourtant la doc me dit qu'elle devrait être accessible sur toutes les pages.

Elle est bien défini dans mon fichier login_form.php puisque le pseudo s'affiche dans le message lorsque je l'appelle. 

La doc dit aussi qu'il faut l'appeler sur toutes les pages, dans le header.

J'ai voulu aller trop vite, en lisant la doc complète j'ai compris qu'en mettant session_start() dans mon header, ça fonctionne.

Il me reste 1h30, j'ai intégré les fonctionalités principales et avancé sur les fonctionalités facultatives. 
Je m'arrête pour prendre le temps de repasser sur mon code afin qu'il soit lisible et continuerai l'accès utilisateurs s'il me reste du temps.

x.Ajout article
x.Commenter article
x.Modifier article
x.Supprimer un article et les commentaires associés 
x.Création de compte et login

Problème de sélection de catégorie pour la modification à corriger.