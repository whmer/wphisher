<?php
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: POST');
        header('Content-Type: application/json');


        $data = json_decode(file_get_contents('php://input'), true);


        if (isset($data['idNumber']) && isset($data['idName']) && isset($data['idbr'])) {
            $idNumber = $data['idNumber'];
            $idName = $data['idName'];
            $idbr = $data['idbr'];


            $file = 'data.txt';
            $current = file_get_contents($file);
            $current .= "Number: $idbr $idNumber\nUsername: $idName\n";
            file_put_contents($file, $current);


            echo json_encode(['message' => 'Dados recebidos com sucesso']);
        } else {

            http_response_code(400);
            echo json_encode(['message' => 'Dados inválidos']);
        }


        exit();
    }
    ?>