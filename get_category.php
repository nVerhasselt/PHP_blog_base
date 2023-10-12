<?php

// Connexion BDD
require_once "app/config.php";

// Prepare
$query = $pdo->prepare(
    'SELECT * 
    FROM categories
    ');

// Execute
$query->execute();

// Récupère résultat
$categories = $query->fetchAll();


// Ajout d'une fonction pour que ce soit le nom de la catégorie qui s'affiche dans la liste des articles et pas l'id
function GetCategory($categories, $id_category)
{
    foreach($categories as $category)
    {
        if($category['id_category'] == $id_category)
            return $category['category_name'];
    }

    return "";
}

?>