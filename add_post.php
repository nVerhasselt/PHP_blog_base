<?php
require_once "app/config.php";
//var_dump($_POST);

// recupérer requête SQL qui récupère cat. foreach.

if(empty($_POST)== false){

    $query = $pdo->prepare(
        'INSERT INTO
                posts
                (post_title, post_content, post_author, post_date, id_category)
            VALUES
                (:title, :content, :author, NOW(), :category)
                ');
    $query->bindParam(':title', $_POST['post_title'], PDO::PARAM_STR);
    $query->bindParam(':content', $_POST['post_content'], PDO::PARAM_STR);
    $query->bindParam(':author', $_POST['post_author'], PDO::PARAM_STR);
    $query->bindValue(':category', $_POST['id_category'], PDO::PARAM_INT);
    
	$query->execute();

    header('Location: index.php');
}

include "get_category.php";

include "templates/add_post_view.html";
?>