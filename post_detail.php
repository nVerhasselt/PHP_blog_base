<?php

/**
 * REQUETE AFFICHAGE DE L'ARTICLE
 */

//Connexion à la BDD
require_once "app/config.php";

// Récupération de l'id du post via requête url index.php
$article_id = $_GET['article_id'];

// Préparation de la requête SQL
$query = $pdo->prepare(
    'SELECT *
    FROM posts
    WHERE id_post = :id'
);

// Attribution des valeurs
$query->bindParam(':id', $article_id, PDO::PARAM_INT);

// Execution
$query->execute();

// On récupère le résultat de la requête dans un tableau nommé $article
$article = $query->fetch();


// Inclusion du php affichage des commentaire
require_once "display_comments.php";

// Inclusion du php d'ajout des commentaires
require_once "add_comment.php";

// Inclusion html associé
include 'templates/post_detail_view.html';