<?php

// Connexion BDD
require_once "app/config.php";

/**
 * Première requête qui supprime les commentaires
 */

// Récupération id
$article_id = $_GET['article_id'];

// Préparation
$query = $pdo->prepare("
    DELETE 
    FROM comments 
    WHERE id_post = $article_id;
");  

// Execution
$query->execute();


/**
 * Deuxième requête qui supprime le post
 */

 // Préparation
$query = $pdo->prepare("

    DELETE 
    FROM posts 
    WHERE id_post = $article_id;
");  

// Exécution
$query->execute();

// Stockage message
$delete_msg = "l'article a bien été supprimé!";


include 'templates/delete_post_view.html';

?>