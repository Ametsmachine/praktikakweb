<?php
//Hondakinak///////////////////////////////////////////////////////////////////////////
$conn = connection();
$query = "SELECT s.azalpena
FROM erronkaerrekuperazioa.makinenhondakinak m
JOIN erronkaerrekuperazioa.sorrarazitakohondakinak s
ON m.sorrarazitakohondakinak_id_hondakinak = s.id_hondakinak
WHERE m.makina_id_makina = $id_makina;";
$result = $conn->query($query);
?>
<h1 class="tituloakH1">Sortarazitako hondakinak:</h1>
<div class="containerHondakinak ">

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
<?php
$conn->close();
?>