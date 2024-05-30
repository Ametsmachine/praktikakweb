<?php
            //Produktu kimikoak///////////////////////////////////////////////////////////////////////////
            $conn = connection();
            if ($id_makina == 14) {
                $limit = 3;
            } else {
                $limit = 2;
            }
            $query = "SELECT * FROM produktukimikoak ORDER BY id_produktukimikoa asc Limit $limit";
            $result = $conn->query($query);
            ?>
            <h1 class="tituloakH1">Produktu kimikoak:</h1>
            <div class="containerproduktukimikoak ">

                <ul>
                    <?php
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            ?>
                            <li><?= $row["Produktukimikoa"] ?></li>
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