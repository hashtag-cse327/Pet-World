<?php require_once("conn.php"); ?>
<!-- Inserting Selected Items to the cart -->
<?php  
      
      $q = $_POST["quantity1"];
      $s = $_POST["stock1"];

      if($q > $s){
        echo "Quantity: ". $q . " is out of stock!";
      }	else {

    	if(isset($_SESSION["shopping_cart"])) {
      		$item_array_id = array_column($_SESSION["shopping_cart"], "item_id");
      		
      		if(!in_array($_POST["id1"], $item_array_id)) {
        		$count = count($_SESSION["shopping_cart"]);
        		$_SESSION["cart_no"] = $count + 1;
		        $item_array = array(
		          'item_id'     =>  $_POST["id1"],
		          'item_name'     =>  $_POST["name1"],
		          'item_price'    =>  $_POST["price1"],
		          'item_img'    =>  $_POST["img1"],
		          'item_quantity'   =>  $_POST["quantity1"]
		        );
        		array_push($_SESSION['shopping_cart'], $item_array);
        		echo "Added to Cart";
      		}
      		else {
        		echo "Item already added!";
      		}
    	}
    	else {
      
	      $item_array = array(
	        'item_id'     =>  $_POST["id1"],
	        'item_name'     =>  $_POST["name1"],
	        'item_price'    =>  $_POST["price1"],
	        'item_img'    =>  $_POST["img1"],
	        'item_quantity'   =>  $_POST["quantity1"]
	      );
      	  $_SESSION["shopping_cart"][0] = $item_array;
      	  $_SESSION["cart_no"] = 1;
      	  echo "Added to Cart";
    	}
  	}
?>