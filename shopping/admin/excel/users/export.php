<?php  
    require_once('../../include/config.php');
//     $sql = "SELECT * FROM users";  
//     $result = mysqli_query($con, $sql);
$output = '';
 //export.php  
 if(!empty($_POST["export"]))  
 {  
     $sql = "SELECT * FROM users order by id ASC"; 
     $result = mysqli_query($con, $sql);
     if(mysqli_num_rows($result) > 0){
          $output .= "  
          <label class='text-success'>Data Inserted</label>  
          <table class='table table-bordered'>  
               <tr> 
                    <th>#</th>  
                    <th>Name</th>  
                    <th>Email</th>  
                    <th>Contact</th>
                    <th>Shipping</th>
               </tr>"; 
               while ($row = mysqli_fetch_array($result)) {
                    $output .= '  
                     <tr>  
                          <td>'.$row['id'].'</td>  
                          <td>'.$row['name'].'</td>  
                          <td>'.$row['email'].'</td>  
                          <td>'.$row['contactno'].'</td>  
                          <td>'.$row['shippingAddress'].'</td>  
                     </tr>  
                     ';  
               } 
               $output .= '</table>'; 
               header('Content-Type: application/xls');
               header('Content-Disposition: attachment; filename=download.xls');
               echo $output; 
          }
     } 
 ?>  