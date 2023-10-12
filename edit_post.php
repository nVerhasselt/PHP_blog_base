<?php

// Connexion BDD
require_once "app/config.php";

// Récupération de l'id du post dans une variable
$id = $_GET['article_id'];

try{
    $query = $pdo->prepare(
        'SELECT *
        FROM posts
        WHERE id_post = :id');

    // Liaison de la valeur du paramètre à la variable.
    $query->bindParam(':id', $id, PDO::PARAM_STR);
    
    // Execution
	$query->execute();
}

catch(PDOException $e){
    echo "Erreur" . $e->getMessage();
}

// Récupération du résultat de la requête
$article_to_edit = $query->fetch();

include "templates/edit_post_view.html";

// var_dump pour vérifier que les infos de $_SESSION sont bien accessible sur toutes les pages
//var_dump($_SESSION['pseudo']);