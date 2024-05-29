<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
    </div>
    <div class="makinakSideBar">
        <?php
        require_once ("../required/functions.php");

        $conn = connection();

        $query = "SELECT * FROM makina";
        $result = $conn->query($query);

        if ($result->num_rows > 0) {

            while ($row = $result->fetch_assoc()) {
                ?>
                <a class="makinaBakoitza" href=".?id_makina=<?= $row["id_makina"] ?>"><?= $row["izena"] ?></a>
                
                <?php
            }

        } else {
            echo "Ez dago irizpide hauek betetzen dituet produkturik.";
        }


        $conn->close();

        ?>
    </div>
</div>