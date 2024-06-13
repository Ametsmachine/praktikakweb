<?php
//Babes Ekipoa///////////////////////////////////////////////////////////////////////////
$conn = connection();

$query = "SELECT e.id_ekipoak, e.azalpena
FROM erronkaerrekuperazioa.makinenekipoak m
JOIN erronkaerrekuperazioa.ekipoak e
ON m.ekipoak_id_ekipoak = e.id_ekipoak
WHERE m.makina_id_makina = $id_makina;";
$result = $conn->query($query);
?>
<h1 class="tituloakH1">Norberaren babeserako ekipoak:</h1>
<div class="containerBabesEkipoa containerConImg">
    <div class="containerBabesEkipoatext">
        <ul>
            <?php
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    ?>
                    <li><?= $row["azalpena"] ?></li>
                    <?php

                }

            } else {
                echo "Ez dago irizpide hauek betetzen dituet produkturik.";
            }
            ?>
        </ul>
    </div>
    <div class="containerBabesEkipoairudia">
        <img src="../../public/babesEkipoa.jpg">
    </div>

</div>
<?php
$conn->close();
?>