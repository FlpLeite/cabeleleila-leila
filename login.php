<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
    <div class="main-login">
        <div class="left-login">
            <h1>Faça login e agende seu horário <br>
            <center>com a cabeleleila Leila</center>
            </h1>
            <img src="assets/hairdresser.svg" class="left-login-image" alt="Cabelereira animação">
        </div>

        <?php
            include('conecta.php');

            if (empty($_POST['email']) || empty($_POST['senha'])) {

            } else {
                $email = $mysqli->real_escape_string($_POST['email']);
                $senha = $mysqli->real_escape_string($_POST['senha']);

                $sql_code = "SELECT * FROM usuarios WHERE email = '$email'";
                $sql_query = $mysqli->query($sql_code) or die("Falha na execução do código SQL: " . $mysqli->error);

                if ($sql_query->num_rows == 1) {
                    $usuario = $sql_query->fetch_assoc();

                    if (password_verify($senha, $usuario['senha'])) {
                        session_start();
                        $_SESSION['id'] = $usuario['cliente_id'];
                        $_SESSION['nome'] = $usuario['nome'];
                        
                        
                        setcookie("logged", "true", time() + 3600, "/");
                        header("Location: homepage.html");
                        exit();
                    } else {
                        echo "Falha ao logar! Senha incorreta";
                    }
                } else {
                    echo "Falha ao logar! E-mail não encontrado";
                }
            }
        ?>


        <div class="rigth-login">
            <div class="card-login">
                <form action="" method="post">
                    <div class="textfield">
                        <label for="email">E-mail</label>
                        <input type="email" name="email" placeholder="E-mail">
                    </div>
                    <div class="textfield">
                        <label for="senha">Senha</label>
                        <input type="password" name="senha" placeholder="Senha">
                    </div>
                    <button type="submit" class="btn-login">Entrar</button>
                </form>
                <h4>Cadastre-se <a href="cadastro.php">AQUI</a></h4>
            </div>
        </div>
    </div>
</body>
</html>
