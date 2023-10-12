<?php
$dsn = 'mysql:host=localhost; dbname=ecfblog';            
$user = 'root';            
$password = '';          

try {
    $pdo = new PDO($dsn, $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(Exception $e) {
    echo "Echec connection : " .$e->getMessage();
    }

// ENCODAGE EN UTF8 DE LA LIAISON PHP <=> MySQL
$pdo->exec('SET NAMES UTF8');