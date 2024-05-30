<?php
//Arriskuak///
        $conn = connection();
        if ($id_makina == 14) {
            $limit = 4;
        } else {
            $limit = 3;
        }
        $query = "SELECT * FROM arriskuak Limit $limit";
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
                                <li><?= $row["arriskuak"] ?></li>
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