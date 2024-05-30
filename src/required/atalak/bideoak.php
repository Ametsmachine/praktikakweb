<?php
//Bideoak///////////////////////////////////////////////////////////////////////////
$conn = connection();

$query = "SELECT * FROM makina WHERE id_makina = $id_makina";
$result = $conn->query($query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        ?>
        <center>
        <h1>Erabilpen instrukzioak:</h1>    
        <div class="video-container">
            <iframe src='<?= $row["bideoa"] ?>' frameborder="0"
                allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
            </iframe>
        </div></center>
        <?php

    }

} else {
    echo "Ez dago irizpide hauek betetzen dituet produkturik.";
}
