<?php
    require_once('../../include/config.php');
    $sql = "SELECT * FROM users";  
    $result = mysqli_query($con, $sql);
?>
<html>  
  <head>  
    <title>Export User data to Excel in PHP</title>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
  </head>  
<body>  
    <div class="container">  
    <br /><br /><br />  
    <div class="table-responsive">  
      <h2 align="center">Export User data to Excel in PHP</h2><br /> 
    <table class="table table-bordered">
      <tr> 
        <th>#</th>  
        <th>Name</th>  
        <th>Email</th>  
        <th>Contact</th>
        <th>Shipping</th>
      </tr>
     <?php
        while ($row = mysqli_fetch_array($result)) {
        ?>
          <tr>
            <td><?php echo htmlentities($row['id']); ?></td>
            <td><?php echo htmlentities($row['name']); ?></td>
            <td><?php echo htmlentities($row['email']); ?></td>
            <td><?php echo htmlentities($row['contactno']); ?></td>
            <td><?php echo htmlentities($row['shippingAddress']);?></td>
     <?php }?> 
    </table>
    <br />
    <form method="post" action="export.php">
     <input type="submit" name="export" class="btn btn-success" value="Export" />
    </form>
   </div>  
  </div>  
 </body>  
</html>
