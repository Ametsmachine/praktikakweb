<?php
//Produktu kimikoak///////////////////////////////////////////////////////////////////////////
$conn = connection();

$query = "SELECT p.mota, p.azalpena
FROM erronkaerrekuperazioa.makinenproduktukimikoak m
JOIN erronkaerrekuperazioa.produktukimikoak p
ON m.produktukimikoak_id_produtu = p.id_produtu
WHERE m.makina_id_makina = $id_makina;";
$result = $conn->query($query);
?>
<h1 class="tituloakH1">Produktu kimikoak:</h1>
<div class="containerproduktukimikoak ">

    <ul>
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
                <li><?= $row["mota"] . $row["azalpena"] ?></li>
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