<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Usuário</title>
    <link rel="stylesheet" href="cadastro.css">
</head>
<body>
    <div class="main-cadastro">
        <div class="left-cadastro">
            <h1>Cadastre-se e agende seu horário <br>com a Cabeleleila Leila</h1>
            <img src="assets/hairdresser.svg" class="left-cadastro-image" alt="Cabeleireira animação">
        </div>
        <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $nome = $_POST["nome"];
                $email = $_POST["email"];
                $senha = $_POST["senha"];

                require_once "conecta.php";

                $sql = "INSERT INTO usuarios (nome, email, senha) VALUES (?, ?, ?)";
                $stmt = $conn->prepare($sql);
                
                if ($stmt === false) {
                    echo "Erro ao preparar a consulta: " . $conn->error;
                } else {
                    // Hash da senha
                    $hashed_password = password_hash($senha, PASSWORD_DEFAULT);

                    $stmt->bind_param("sss", $nome, $email, $hashed_password);
                    if ($stmt->execute()) {
                        echo "Usuário cadastrado com sucesso!";
                        header("Location: login.php");
                        exit();
                    } else {
                        echo "Erro ao cadastrar o usuário: " . $stmt->error;
                    }
                    $stmt->close();
                }

                $conn->close();
            }
        ?>

        <div class="rigth-cadastro">
            <div class="card-cadastro">
                <form action="" method="post">
                    <div class="textfield">
                        <label for="nome">Nome</label>
                        <input type="text" name="nome" placeholder="Nome">
                    </div>
                    <div class="textfield">
                        <label for="email">E-mail</label>
                        <input type="email" name="email" placeholder="E-mail">
                    </div>
                    <div class="textfield">
                        <label for="senha">Senha</label>
                        <input type="password" name="senha" placeholder="Senha">
                    </div>
                    <button class="btn-cadastro" type="submit">Cadastrar</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
