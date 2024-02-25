<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Processamento de Agendamento</title>
</head>
<body>
    <center>
        <h1>Processamento de Agendamento</h1>

        <?php
            include 'conecta.php';

            
                            

            if (isset($_POST['date'], $_POST['time'], $_POST['list'])) {
                $date = $_POST['date'];
                $time = $_POST['time'];
                $services = implode(',', $_POST['list']);

                $currentDate = date('Y-m-d');
                $twoDaysBefore = date('Y-m-d', strtotime('-2 days', strtotime($date)));

                if ($currentDate > $twoDaysBefore) {
                    echo "Desculpe, a alteração só pode ser feita com pelo menos dois dias de antecedência.";
                } else {
                    $sql = "INSERT INTO agendamentos (date, time, services) VALUES ('$date', '$time', '$services')";
                    if ($conn->query($sql) === TRUE) {
                        echo "Agendamento realizado com sucesso!";
                    } else {
                        echo "Erro ao agendar: " . $conn->error;
                    }
                }
            } else {
                echo "Por favor, preencha todos os campos do formulário.";
            }

            $conn->close();
        ?>

        <a href="agendamento.html"><h1>Voltar para o Formulário</h1></a>
    </center>
</body>
</html>
