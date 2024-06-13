<?php
//Arriskuak///////////////////////////////////////////////////////////////////////////
$conn = connection();

$query = "SELECT a.arriskumota
FROM erronkaerrekuperazioa.makinenarriskuak m
JOIN erronkaerrekuperazioa.arriskuak a
ON m.arriskuak_idarriskua = a.idarriskua
WHERE m.makina_id_makina = $id_makina;";
$result = $conn->query($query);
?>
<h1 class="tituloakH1">Arriskuak:</h1>
<?php
if ($id_makina == 14) {
    ?>
    <div class="containerArriskuak containerConImg">
        <?php
} else {
    ?>
        <div class="containerArriskuak">
            <?php
}
?>

        <div class="containerArriskuakText">
            <ul>
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {
                        ?>
                        <li><?= $row["arriskumota"] ?></li>
                        <?php

                    }

                } else {
                    echo "Ez dago irizpide hauek betetzen dituet produkturik.";
                }
                ?>
            </ul>
        </div>

        <?php
        if ($id_makina == 14) {
            ?>
            <div class="containerArriskuakImg">
                <img src="../../public/arriskuak.jpg">
            </div>
            <?php
        }
        ?>


    </div>