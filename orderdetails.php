<?php
require_once './data/dbconnect.php';
include './ultility/userultilities.php';
include './ultility/orderultilities.php';
include './ultility/productultilities.php';
session_start();

function getCountProducts() {
    if (isset($_SESSION['GuestCarts'])) {
        return count($_SESSION['GuestCarts']);
    } else {
        return 0;
    }
}

$order = '';
if (isset($_GET['id'])) {
    $order = getOrderById($con, $_GET['id']);
    if ($order != NULL) {
        
    }
    else {
        header("Location: 404.php");
    }
}
else {
    header("Location: 404.php");
}
?>
<!doctype html>
<html>
    <!-- Head HTML -->
    <head>
        <meta charset="utf-8">
        <title>Order details</title>
        <link href="styles/site.css" rel="stylesheet" type="text/css">
        <link href="styles/guestcart.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="javascript.js"></script>
    </head>

    <!-- Body HTML -->
    <body>
        <div class="divContainer">
            <!-- Header -->
            <?php include './Templates/header.php'; ?>

            <!-- Top Menu -->
            <?php include './Templates/topmenu.php'; ?>

            <!-- Body Wrapper Second Level -->
            <div class="divWrapper_2">
                <!-- Body Wrapper First Level -->
                <div class="divWrapper_1">
                    <!-- Left Menu -->
                    <?php include './Templates/leftmenu.php'; ?>

                    <!-- Main -->
                    <div class="divMain">
                        <article class="articleContent">
                            <p class="pPageTitle">Order details <?php $order['Id']; ?></p>

                            <section>
                                <p>Code orders: <?php echo $order['Id']; ?> <br/>
                                Time Order: <?php echo $order['CreateTime']; ?><br/>
                               
Status: <?php echo getOrderStatus($con, $order['Status']); ?><br/>
Delivery address: <?php echo $order['Address']; ?><br/>
Phone number: <?php echo $order['Phone']; ?><br/>
Request: <?php echo $order['Request']; ?><br/>
                                </p>
                            </section>

                            <p>&nbsp;</p>
                            
                            <section>
                                <table class="tableCart" id="tableCart" border="1" cellpadding="5" cellspacing="0">
                                    <!-- Top Table -->
                                    <tr id="trTop_TableCart">
                                        <th width="200px">Product</th>
                                        <th width="140px">Price</th>
                                        <th width="100px">Amount</th>
                                        <th width="140px">into money</th>
                                    </tr>
                                    <?php
                                  
                                        $lines = $order['lines'];
                                        foreach ($lines as $line) {
                                            $thisWatches = getProductById($con, $line['WatchesId']);

                                            if ($thisWatches != NULL) {                                                
                                                ?>
                                                <tr>
                                                    <td><a class="aContent" href="watches.php?id=<?php echo $thisWatches['Id']; ?>"><?php echo $thisWatches['CodeName']; ?></a></td>
                                                    <td><?php echo number_format(floatval($thisWatches['Price']), 0, ".", ",") . " 
Rs"; ?></td>
                                                    <td><?php echo $line['Quantity']; ?></td>
                                                    <td><?php echo number_format(floatval($thisWatches['Price']) * floatval($line['Quantity']), 0, ".", ",") . " 
Rs"; ?></td>
                                                </tr>
                                                <?php
                                            }
                                        }
                                    
                                    ?>
                                    <tr id="trBottom_TableCart">
                                        <td colspan="3" style="text-align: right">Total: </td>
                                        <td style="font-weight: bold"><?php echo $order['total']; ?> Rs</td>
                                    </tr>
                                </table>
                            </section>
                        </article>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <?php include './Templates/footer.php'; ?>
        </div>
    </body>
</html>
