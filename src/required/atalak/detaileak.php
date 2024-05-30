<?php 
//Makinaren detaileak///////////////////////////////////////////////////////////////////////////
            $conn = connection();
            
            $query = "SELECT * FROM atalak WHERE id_makina = 3";
            $result = $conn->query($query);
            ?>
            <h1 class="tituloakH1">Makinaren detaileak:</h1>
            <div class="containerdetaileak containerConImg">
                <div class="containerdetaileaktext">
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
                <div class="containerdetaileakirudia">
                    <img src="../../public/makinaParteak/detaileak.jpg">
                </div>

            </div>
            
            <?php
            $conn->close();
            ?>