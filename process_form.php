<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="processamento.css">
    <title>Processamento de Agendamento</title>
</head>
<body>
    <header>
      <nav>
        <a class="logo" href="homepage.html">Cabeleleila Leila</a>
        <div class="mobile-menu">
          <div class="line1"></div>
          <div class="line2"></div>
          <div class="line3"></div>
        </div>
        <ul class="nav-list">
          <li><a href="agendamento.php">Marcar um horário</a></li>
          <li><a href="#">Ligar agora</a></li>
          <li><a href="#">Endereço</a></li>
        </ul>
      </nav>
    </header>
    <center>
        <br>

        <h1>Processamento de Agendamento</h1>

        <br>
        <br>
        <br>

        <?php
            include 'conecta.php';

            // Incluir arquivo inserir_servicos.php
            $service_ids = include 'inserir_servicos.php';
            
            if (isset($_POST['date'], $_POST['time'], $_POST['services'])) {
                $date = $_POST['date'];
                $time = $_POST['time'];
                $service_names_post = $_POST['services'];

                $currentDate = date('Y-m-d');
                $twoDaysBefore = date('Y-m-d', strtotime('-2 days', strtotime($date)));

                if ($currentDate > $twoDaysBefore) {
                    echo "Desculpe, a alteração pelo site só pode ser feita com pelo menos dois dias de antecedência. Ligue para gente para verificarmos a disponibilidade de encaixe (14)99999-9999";
                } else {
                    $data_hora = $date . ' ' . $time;

                    session_start();
                    $cliente_id = $_SESSION['id'];

                    $status = 'pendente';

                    $sql_agendamento = "INSERT INTO agendamento (cliente_id, data_hora, status) VALUES ('$cliente_id', '$data_hora', '$status')";
                    if ($conn->query($sql_agendamento) === TRUE) {
                        $agendamento_id = $conn->insert_id;

                        foreach ($service_names_post as $service_name_post) {
                            $sql_service_id = "SELECT servico_id FROM servico WHERE nome = '$service_name_post'";
                            $result = $conn->query($sql_service_id);
                            if ($result->num_rows > 0) {
                                $row = $result->fetch_assoc();
                                $service_id_post = $row['servico_id'];
                                $sql_agendamento_servico = "INSERT INTO agendamento_servico (agendamento_id, servico_id) VALUES ('$agendamento_id', '$service_id_post')";
                                $conn->query($sql_agendamento_servico);
                            } else {
                                echo "Erro ao agendar: Serviço '$service_name_post' não encontrado.";
                            }
                        }

                        echo "<h3>Agendamento realizado com sucesso!<h3>";
                    } else {
                        echo "Erro ao agendar: " . $conn->error;
                    }
                }
            } else {
                echo "Por favor, preencha todos os campos do formulário.";
            }

            $conn->close();
        ?>

        <br>
        <br>
        <br>

        <a href="agendamento.php"><h1>Voltar para o Formulário</h1></a>
    </center>
</body>
</html>
