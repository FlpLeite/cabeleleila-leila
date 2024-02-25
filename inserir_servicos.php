<?php
    include 'conecta.php';

    // Verifica se os serviços já foram inseridos anteriormente
    $sql_check_services = "SELECT COUNT(*) as total FROM servico";
    $result = $conn->query($sql_check_services);
    $row = $result->fetch_assoc();
    $total_services = $row['total'];

    // Se nenhum serviço foi encontrado, insere os serviços no banco de dados
    if ($total_services == 0) {
        $services = array(
            array("Corte de Cabelo", "Corte moderno e personalizado", 30, 50.00),
            array("Coloração", "Coloração profissional", 60, 80.00),
            array("Pedicure", "Tratamento completo para os pés", 45, 60.00),
            array("Hidratação Capilar", "Hidratação intensiva para cabelos", 45, 70.00),
            array("Escova Progressiva", "Alisamento e redução de volume", 90, 150.00),
            array("Depilação", "Remoção de pelos indesejados", 30, 40.00),
            array("Design de Sobrancelha", "Modelagem de sobrancelhas", 20, 30.00),
            array("Maquiagem", "Maquiagem profissional", 45, 60.00),
            array("Spa Facial", "Tratamento facial relaxante", 60, 90.00),
            array("Massagem Relaxante", "Massagem relaxante e terapêutica", 60, 80.00)
        );

        $service_ids = array(); // Array para armazenar os IDs dos serviços inseridos

        foreach ($services as $service) {
            $nome = $service[0];
            $descricao = $service[1];
            $duracao = $service[2];
            $preco = $service[3];
            
            $sql = "INSERT INTO servico (nome, descricao, duracao, preco) VALUES ('$nome', '$descricao', $duracao, $preco)";
            $conn->query($sql);

            // Armazena o ID do serviço inserido
            $service_ids[] = $conn->insert_id;
        }

        // Retornar os IDs dos serviços inseridos
        return $service_ids;
    } else {
        // Se os serviços já existirem, apenas retorna um array vazio
        return array();
    }
?>
