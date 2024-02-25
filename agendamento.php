<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agendamento de Serviços</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
        session_start();

        if(!isset($_SESSION['id']) && !isset($_SESSION['nome'])) {
            header("Location: login.php");
            exit();
        }
    ?>

    <div class="container">
        <h1>Agendamento de Serviços</h1>
        <form id="appointment-form" action="process_form.php" method="post">
            <label>Selecione o(s) serviço(s):</label><br>
            <input type="checkbox" id="corte" name="services[]" value="corte">
            <label for="corte">Corte de Cabelo</label><br>
            <input type="checkbox" id="coloracao" name="services[]" value="coloracao">
            <label for="coloracao">Coloração</label><br>
            <input type="checkbox" id="pedicure" name="services[]" value="pedicure">
            <label for="pedicure">Pedicure</label><br>
            <input type="checkbox" id="hidratacao" name="services[]" value="hidratacao">
            <label for="hidratacao">Hidratação Capilar</label><br>
            <input type="checkbox" id="progressiva" name="services[]" value="progressiva">
            <label for="progressiva">Escova Progressiva</label><br>
            <input type="checkbox" id="depilacao" name="services[]" value="depilacao">
            <label for="depilacao">Depilação</label><br>
            <input type="checkbox" id="sobrancelha" name="services[]" value="sobrancelha">
            <label for="sobrancelha">Design de Sobrancelha</label><br>
            <input type="checkbox" id="maquiagem" name="services[]" value="maquiagem">
            <label for="maquiagem">Maquiagem</label><br>
            <input type="checkbox" id="spa" name="services[]" value="spa">
            <label for="spa">Spa Facial</label><br>
            <input type="checkbox" id="massagem" name="services[]" value="massagem">
            <label for="massagem">Massagem Relaxante</label><br>

            <label for="date">Data do Agendamento:</label>
            <input type="date" id="date" name="date" required><br>

            <label for="time">Horário do Agendamento:</label>
            <input type="time" id="time" name="time" required><br>

            <button type="submit">Agendar</button>
        </form>
    </div>

</body>
</html>
