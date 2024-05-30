<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MEKANIKA</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../css/index.css">
</head>

<body class="bodyIndex">

    <header class="header">

        <h2 class="headerM">MEKANIKA</h2>
        <button class="btn btn-primary sidebar-button" type="button" data-bs-toggle="offcanvas"
            data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">☰
        </button>

        <?php
        include_once ("../required/sideBar.php");
        ?>
    </header>


    <div class="containerMakinak">
        <?php

        include_once ("../required/atalak/makinak.php");
        include_once ("../required/atalak/arriskuak.php");
        include_once ("../required/atalak/babes.php");
        include_once ("../required/atalak/proKimi.php");
        include_once ("../required/atalak/hondakinak.php");
        include_once ("../required/atalak/atalak.php");
        if ($id_makina == 14) {
            include_once ("../required/atalak/detaileak.php");

        }


        include_once ("../required/atalak/bideoak.php");
        ?>
    </div>
    <?php
    include_once ("../required/footer.php");
    ?>
</body>

</html>