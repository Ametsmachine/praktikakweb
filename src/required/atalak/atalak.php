<?php
//Makinaren atalak///////////////////////////////////////////////////////////////////////////
$conn = connection();

$query = "SELECT a.atalak
FROM erronkaerrekuperazioa.makinenatalak m
JOIN erronkaerrekuperazioa.atalak a
ON m.atalak_id_atalak = a.id_atalak
WHERE m.makina_id_makina = $id_makina;";
$result = $conn->query($query);
?>
<h1 class="tituloakH1">Makinaren atalak:</h1>
<div class="containeratalak containerConImg">
    <div class="containeratalaktext">
        <ul>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    ?>
                    <li><?= $row["atalak"] ?></li>
                    <?php

                }

            } else {
                echo "Ez dago irizpide hauek betetzen dituet produkturik.";
            }
            ?>
        </ul>
    </div>
    <div class="containeratalakirudia">
        <img src="../../public/makinaParteak/<?= $id_makina ?>.jpg">
    </div>

</div>

<?php
$conn->close();
?>