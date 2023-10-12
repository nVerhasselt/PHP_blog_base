<?php

// Connexion BDD
require_once "app/config.php";

//prepare
$query = $pdo->prepare(
    'SELECT 
    id_post, post_title, 
    SUBSTRING(post_content,1,50) AS post_content, 
    post_author, 
    post_date, 
    id_category 
    FROM posts
    ORDER BY post_date DESC
    LIMIT 6
    ');

// excute
$query->execute();

// Récupération résultat dans $articles
$articles = $query->fetchAll();
