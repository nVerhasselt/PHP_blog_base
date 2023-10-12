<?php

//Connexion BDD
require_once "app/config.php";


if(empty($_POST)==false){

    // Préparation
    $query=$pdo->prepare(
        'INSERT INTO
        users
        (user_name, user_first_name, user_alias, user_email, user_password)
        VALUES
        (:user_name, :first_name, :alias, :email, :user_password)'
        );
    
    $query->bindParam(':user_name', $_POST['user_name'], PDO::PARAM_STR);
    $query->bindParam(':first_name', $_POST['user_first_name'], PDO::PARAM_STR);
    $query->bindParam(':alias', $_POST['user_alias'], PDO::PARAM_STR);
    $query->bindParam(':email', $_POST['user_email'], PDO::PARAM_STR);
    $query->bindParam(':user_password', $_POST['user_password'], PDO::PARAM_STR);

    // Execution
    $query->execute();    
}

include "templates/register_form_view.html";

?>