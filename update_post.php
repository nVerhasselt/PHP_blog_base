<?php
//Connexion
require_once "app/config.php";

// Récupération id
$id = $_GET['article_id'];


try{
    $query = $pdo->prepare(
        'UPDATE posts
        SET post_title = :title, post_content = :content, post_author = :author
        WHERE id_post = :id');

    // Liaison de la valeur du paramètre à la variable.
    $query->bindParam(':title', $_POST['post_title'], PDO::PARAM_STR);
    $query->bindParam(':content', $_POST['post_content'], PDO::PARAM_STR);
    $query->bindParam(':author', $_POST['post_author'], PDO::PARAM_STR);
    $query->bindParam(':id', $id, PDO::PARAM_INT);
    
    //Execution
	$query->execute();
}

catch(PDOException $e){
    echo "Erreur" . $e->getMessage();
}

// Retour à la page d'accueil
header('Location: index.php');
exit();
