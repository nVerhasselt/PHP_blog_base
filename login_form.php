<?php
// Connexion à la base de données
require_once "app/config.php";

// Récupère info du POST dans des variables
$alias = $_POST['user_alias'];
$password = $_POST['user_password'];

// Déclaration de variable qui contiendra le message à afficher
$connexion_msg ="";


if(!empty($_POST))
{
    if(isset($alias, $password) && 
    !empty($alias) && 
    !empty($password)){

        try
        {
        // Préparation
        $query = $pdo->prepare(
        'SELECT *
        FROM users
        WHERE user_alias = :alias && user_password = :user_password'
        );

        // Liaison
        $query->bindParam(':alias', $alias, PDO::PARAM_STR);
        $query->bindParam(':user_password', $password, PDO::PARAM_STR);

        // Execution
        $query->execute();

        // Récupération de la requête sous forme de tableau dans une variable
        $user=$query->fetch();

        // On définit des variables de session
        $_SESSION['pseudo'] = $alias;

        // Message 
        $connexion_msg = "Bonjour ".$_SESSION['pseudo'].", vous êtes connecté(e) !";

        // Donner l'accès à l'ajout d'article et de commentaire (in progress)
        
        }
        catch(PDOException $e)
        {
            $connexion_msg = "Aucun compte trouvé !";
        }
    }   
}
else
{
    $connexion_msg ="Couple mdp/utilisateur incorrect.";

}


include "templates/connexion_msg_view.html"

?>