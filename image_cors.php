<?php
$imageUrl = "http:" . $_GET['url'];
if (filter_var($imageUrl, FILTER_VALIDATE_URL)) {
    header("Access-Control-Allow-Origin: *");
    header('Content-Type: image/jpeg');

    readfile($imageUrl);
} else {
    header("HTTP/1.0 404 Not Found");
    echo "URL inválida";
}
?>