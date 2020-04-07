<?php require_once("conn.php"); ?>
<?php include("header.php"); ?>

<!DOCTYPE html>
<html>
<head>
  <title>Pet-World-Delivery</title>
</head>
<div class="headline" style="position: relative;">
      <h1>Statistics</h1>
    </div>



  <div class="container">
    <div class="table-responsive" style="margin-bottom: 20px;"> 
          
            <?php 
              $sql = "SELECT DISTINCT d_id, total, email FROM `orders` ";
              $result=$conn->query($sql);
              while($row = mysqli_fetch_assoc($result)){
                $total = $row["total"];
                $email = $row["email"];
                $did = $row["d_id"];
                
                $sqli = "SELECT phone, address,fullname FROM `users` WHERE email='$email' ";
                $resulti=$conn->query($sqli);
                while($rowi = mysqli_fetch_assoc($resulti)){
                  $address = $rowi["address"];
                  $phone = $rowi["phone"];
                  $name = $rowi["fullname"];
                }


            ?>
            <table class="table table-bordered shadow p-3 mb-5 bg-white rounded">
              
                <tbody style="background-color: #84eba4;background-image: url(https://www.transparenttextures.com/patterns/always-grey.png);">
              
              <tr>
              	<th>Address: </th>
                <th>Delivery No.: </th>
                <th>Quantity</th>
                <th>Price</th>
              </tr>
              
            <?php 
              $sqlt = "SELECT * FROM `orders` WHERE d_id='$did' ";
              $resultt=$conn->query($sqlt);
              while($rowt = mysqli_fetch_assoc($resultt)){
          ?>      
              <tr>
              	<td><?php echo  $rowt["d_id"]; ?></span></p></th>
                <td> <?php echo $rowt["name"]; ?> </td>
                <td><?php echo $rowt["quantity"]; ?></td>
                <td><?php echo $rowt["price"]; ?></td>
              </tr>
                
          <?php }
            ?>
                <tr>
                  <td colspan="2"></td>
                  <td>Total</td>
                  <td style="color: red;font-weight: 900;">TK <?php echo $total; ?></td>
                </tr>
                
            </tbody>
            </table> 
          <?php } ?>
         </div>
  </div>


<!-- </body> -->

<!-- </html> -->

<?php include("contact.php") ?>
<?php include("footer.php"); ?>