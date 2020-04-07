<?php require_once("conn.php"); ?>
<?php include("header.php"); ?>

<!DOCTYPE html>
<html>
<head>
  <title>Pet-World-Delivery</title>
</head>

<div class="headline" style="position: relative;">
      <h1>ORDERS</h1>
    </div>

    <?php 

    if(isset($_POST["done"])){
      $status = True;
      $did = $_POST["did"];

      $sql = "UPDATE orderstatus SET status='$status' WHERE d_id='$did'";
      mysqli_query($conn, $sql);
    }

    if(isset($_POST["notdone"])){
      $status = False;
      $did = $_POST["did"];

      $sql = "UPDATE orderstatus SET status='$status' WHERE d_id='$did'";
      mysqli_query($conn, $sql);
    }

    ?>


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

                $sqli = "SELECT status FROM `orderstatus` WHERE d_id='$did' ";
                $resulti=$conn->query($sqli);
                while($rowi = mysqli_fetch_assoc($resulti)){
                  $status = $rowi["status"];
                }


            ?><table class="table table-bordered shadow p-3 mb-5 bg-white rounded">
              <?php 

                if($status == 1){
              ?>
                <tbody style="background-color: #84eba4;background-image: url(https://www.transparenttextures.com/patterns/always-grey.png);">
              <?php   
                } else {
              ?>
                <tbody style="background: white;">
              <?php
                }
              ?>
              <tr>
                <th>
                  <p style="font-weight: 900;">Delivery No.: <span style="color: red;"><?php echo $did; ?></span></p>
                  <p style="font-weight: 900;">Name: <span style="color: red;"><?php echo $name; ?></span></p>
                  <p style="font-weight: 900;">Mobile: <span style="color: red;"><?php echo $phone; ?></span></p>
                  <p style="font-weight: 900;">Address: <span style="color: red;"><?php echo $address; ?></span></p>
                </th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
              </tr>
              
            <?php 
              $sqlt = "SELECT * FROM `orders` WHERE d_id='$did' ";
              $resultt=$conn->query($sqlt);
              while($rowt = mysqli_fetch_assoc($resultt)){
          ?>      
              <tr>
                <td> <img style="width: 70px;height: 90px;" class="card-img-top img-responsive" src="images/<?php echo $rowt["image"]; ?>"> </td>
                <td><?php echo $rowt["name"]; ?></td>
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
                <tr>
                  <td><form method="post"><input type="hidden" name="did" value="<?php echo $did; ?>"><button class="btn btn-danger" name="notdone">Not Done</button></form></td>
                  <td colspan="3"><form method="post"><input type="hidden" name="did" value="<?php echo $did; ?>"><button class="btn btn-success" name="done">Done</button></form></td>
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