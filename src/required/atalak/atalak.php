<?php
//Babes Ekipoa///////////////////////////////////////////////////////////////////////////
            $conn = connection();

            $query = "SELECT * FROM ekipoak";
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
                                <li><?= $row["BabeserakoEkipoak"] ?></li>
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