<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agendamento de Serviços</title>
    <link rel="stylesheet" href="style.css">
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
          <li><a href="(14)99999-9999">Ligar agora</a></li>
          <li><a href="https://www.google.com.br/maps/place/Cabeleleila+Leila/@-31.7672774,-52.3416396,17z/data=!3m1!4b1!4m6!3m5!1s0x9511b50114d56beb:0x902203d489eb0a92!8m2!3d-31.7672774!4d-52.3390593!16s%2Fg%2F11k68jdy34?entry=ttu" target="_blanck" >Endereço</a></li>
        </ul>
      </nav>
    </header>

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
            <div>
                <input type="checkbox" id="corte" name="services[]" value="Corte de Cabelo">
                <label for="corte">Corte de Cabelo</label><br>    
            </div>
            <div>
                <input type="checkbox" id="coloracao" name="services[]" value="Coloração">
                <label for="coloracao">Coloração</label><br>
            </div>
            <div>
                <input type="checkbox" id="pedicure" name="services[]" value="Pedicure">
                <label for="pedicure">Pedicure</label><br>
            </div>
            <div>
                <input type="checkbox" id="hidratacao" name="services[]" value="Hidratação Capilar">
                <label for="hidratacao">Hidratação Capilar</label><br>
            </div>
            <div>
                <input type="checkbox" id="progressiva" name="services[]" value="Escova Progressiva">
                <label for="progressiva">Escova Progressiva</label><br>
            </div>
            <div>
                <input type="checkbox" id="depilacao" name="services[]" value="Depilação">
                <label for="depilacao">Depilação</label><br>
            </div>
            <div>
                <input type="checkbox" id="sobrancelha" name="services[]" value="Design de Sobrancelha">
                <label for="sobrancelha">Design de Sobrancelha</label><br>
            </div>
            <div>
                <input type="checkbox" id="maquiagem" name="services[]" value="Maquiagem">
                <label for="maquiagem">Maquiagem</label><br>
            </div>
            <div>
                <input type="checkbox" id="spa" name="services[]" value="Spa Facial">
                <label for="spa">Spa Facial</label><br>
            </div>
            <div>
                <input type="checkbox" id="massagem" name="services[]" value="Massagem Relaxante">
                <label for="massagem">Massagem Relaxante</label><br>
            </div>
            <br>

            <label for="date">Data do Agendamento:</label>
            <input type="date" id="date" name="date" required><br>

            <label for="time">Horário do Agendamento:</label>
            <input type="time" id="time" name="time" required><br>

            <button type="submit">Agendar</button>
        </form>
    </div>

</body>
</html>
