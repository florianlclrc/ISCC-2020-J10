<?php
    function connect_to_database(){
         $servername = "localhost";
         $username = "root";
         $password = "root";
         $databasename = "BaseTest01";

         try {
             $pdo = new PDO("mysql:host=$servername;dbname=$databasename", $username, $password);
             $pdo ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

             echo "Connected successfully";
             //on est connectee
             return $pdo;
         } catch (PDOException $e) {
             echo "Connection failed: ". $e->getMessage();
         }
    }
    $pdo = connect_to_database();
    //apres la connection on peut effectuer des enregistrement
    //requete qui recupere un seul enregistrement
    $query = $pdo->query("SELECT * FROM masupertable");
    $user = $query->fetch();
    var_dump($user);

    //requete qui recupere  plusieurs enregistrements
    $users = $pdo->query("SELECT * FROM masupertable")->fetchAll();
    // Ensuite on peut afficher
    var_dump($users);
    foreach ($user as $user) {
        echo $user['Nom']. "<br/>";
    }
?>