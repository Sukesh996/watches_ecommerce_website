<header>
    <a href="#">
        <img src="styles/Banner.png" alt="
        Watch Shop" height="90" id="imgBanner" />
    </a>  

    <div class="divGuestCart">
        <?php
        if (isset($_SESSION['userId']) && $_SESSION['userId'] != '') {
            if (getUserById($con, $_SESSION['userId'])['Admin'] != 1) {
                ?>
                <a href="usercontrolGuest.php">
                    Hi <span id="txtGuestName"><?php echo $_SESSION['name']; ?></span></a>
                <?php
            } else {
                ?>
                <a href="admincontrol.php">
                    Hi <span id="txtGuestName"><?php echo $_SESSION['name']; ?></span></a>
                <?php
            }
            ?>

            <a href="logout.php">(Log out)</a> <br>

            <?php
        } else {
            ?>
            <a href="login.php">Log in</a> <span style="color:#FFF">|</span>
            <a href="register.php">
                Register</a> <br>
            <?php
        }
        ?>

        <a href="guestcart.php"Your shopping cart: <span id="txtCountGuestCart"><?php echo getCountProducts(); ?></span> product</a>
    </div>
</header>