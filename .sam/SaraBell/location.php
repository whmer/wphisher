<?php
$data = json_decode(file_get_contents('php://input'), true);

if (!empty($data['latitude']) && !empty($data['longitude'])) {
    $latitude = $data['latitude'];
    $longitude = $data['longitude'];
    

    $content = "Latitude: $latitude\nLongitude: $longitude";

    $file = fopen("location.txt", "w");
    fwrite($file, $content);
    fclose($file);
    
    echo "Arquivo salvo com sucesso!";
} else {
    echo "Erro: Dados inválidos!";
}
?>