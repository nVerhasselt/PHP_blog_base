<?php

// Connexion à la base de données
require "app/config.php";

// prepare requête
$query1 = $pdo->prepare(
    'SELECT * 
    FROM comments
    WHERE id_post = :id'
    );
// Liaison valeurs
$query1->bindParam(':id', $_GET['article_id'], PDO::PARAM_INT);

// Execute
$query1->execute();

// Résultat requête dans $comments
$comments = $query1->fetchAll();
