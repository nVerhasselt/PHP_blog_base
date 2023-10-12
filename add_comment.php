<?php

//Connexion BDD
require_once "app/config.php";

$article_id = $_GET['article_id'];

// Si les champs ne sont pas vides...
if(!empty($_POST))
{
    try{
        // Préparation de la requête
        $query2 = $pdo->prepare(
            'INSERT INTO
                    comments
                    (comment_author, comment_content, comment_date, id_post)
                VALUES
                    (:author, :content, NOW(), :article_id)
                    ');

        $query2->bindParam(':author', $_POST['comment_author'], PDO::PARAM_STR);
        $query2->bindParam(':content', $_POST['comment_content'], PDO::PARAM_STR);
        $query2->bindParam(':article_id', $article_id, PDO::PARAM_INT);
        
        // execute
        $query2->execute();
    }

    catch(PDOException $e){
        echo "Erreur" . $e->getMessage();
    }
    
    // Redirection vers la page d'accueil
    header('Location: post_detail.php?article_id='.$article_id);
    exit();

}


//include "templates/post_detail_view.html";