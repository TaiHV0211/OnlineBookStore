<?php
    require_once('../../include/config.php');
    $sql = "SELECT * FROM userlog";  
    $result = mysqli_query($con, $sql);
?>
<html>  
  <head>  
    <title>Export UserLog data to Excel in PHP</title>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
  </head>  
<body>  
    <div class="container">  
    <br /><br /><br />  
    <div class="table-responsive">  
      <h2 align="center">Export User Log data to Excel in PHP</h2><br /> 
    <table class="table table-bordered">
      <tr> 
        <th>#</th>  
        <th>User Email</th>  
        <th>Login Time</th>  
        <th>LogOut Time</th>
        <th>Status</th>
      </tr>
     <?php
        while ($row = mysqli_fetch_array($result)) {
        ?>
          <tr>
            <td><?php echo htmlentities($row['id']); ?></td>
            <td><?php echo htmlentities($row['userEmail']); ?></td>
            <td><?php echo htmlentities($row['loginTime']); ?></td>
            <td><?php echo htmlentities($row['logout']); ?></td>
            <td><?php $st = $row['status'];
                if ($st == 1) {
                    echo "Successfull";
                } else {
                    echo "Failed";
                }
            ?></td>
          <?php } ?>
    </table>
    <br />
    <form method="post" action="Exportlog.php">
     <input type="submit" name="Exportlog" class="btn btn-success" value="Exportlog" />
    </form>
   </div>  
  </div>  
 </body>  
</html>
