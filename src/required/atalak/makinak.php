<?php
        $id_makina = isset($_GET["id_makina"]) ? $_GET["id_makina"] : 1;
        
        $conn = connection();
        $query = "SELECT * FROM makina where id_makina = $id_makina";
        $result = $conn->query($query);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                ?>
                <div class="containerMakinak">
                    <h1 class="makinaIzena"><?= $row["izena"] ?> Makina:</h1>

                    <table class="tableDatukin">
                        <colgroup>
                            <col>
                            <col>
                        </colgroup>
                        <tbody>
                            <tr>
                                <td class="td ezkColum">Marka</td ezkColum>
                                <td class="td"><?= $row["marka"] ?></td>
                            </tr>
                            <tr>
                                <td class="td ezkColum">Modeloa</td>
                                <td class="td"><?= $row["modeloa"] ?></td>
                            </tr>
                            <tr>
                                <td class="td ezkColum">Fabrikazio Urtea</td>
                                <td class="td"><?= $row["fabrikazioUrtea"] ?></td>
                            </tr>
                            <tr>
                                <td class="td ezkColum">Erosketa Urtea</td>
                                <td class="td"><?= $row["erosketaUrtea"] ?></td>
                            </tr>
                            <tr>
                                <td class="td ezkColum">Kokapena</td>
                                <td class="td"><?= $row["kokapena"] ?></td>
                            </tr>
                            <tr>
                                <td class="td ezkColum">Aktibo zenbakia</td>
                                <td class="td"><?= $row["aktibozenbakia"] ?></td>
                            </tr>
                            <tr>
                                <td class="td ezkColum">CE marka (Bai/Ez)</td>
                                <td class="td"><?= $row["CEmarka"] ?></td>
                            </tr>
                        </tbody>
                    </table>
                    <br><br>





                </div>
                <?php
            }

        } else {
            echo "Ez dago irizpide hauek betetzen dituet produkturik.";
        }
        $conn->close();