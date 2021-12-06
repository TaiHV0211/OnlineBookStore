<?php  
    require_once('../../include/config.php');
//     $sql = "SELECT * FROM users";  
//     $result = mysqli_query($con, $sql);
$output = '';
 //export.php  
 if(!empty($_POST["Exportlog"]))  
 {  
     $sql = "SELECT * FROM userlog order by id ASC"; 
     $result = mysqli_query($con, $sql);
     if(mysqli_num_rows($result) > 0){
          $output .= "  
          <label class='text-success'>Data Inserted</label>  
          <table class='table table-bordered'>  
            <tr> 
                <th>#</th>  
                <th>User Email</th>  
                <th>Login Time</th>  
                <th>LogOut Time</th>
                <th>Status</th>
            </tr>"; 
               while ($row = mysqli_fetch_array($result)) {
                    $output .= '  
                     <tr>  
                          <td>'.$row['id'].'</td>  
                          <td>'.$row['userEmail'].'</td>  
                          <td>'.$row['loginTime'].'</td>  
                          <td>'.$row['logout'].'</td>  
                          <td>'.$st = $row['status'].'</td>  
                     </tr>  
                     ';  
               } 
               $output .= '</table>'; 
               header('Content-Type: application/xls');
               header('Content-Disposition: attachment; filename=resultlog.xls');
               echo $output; 
          }
     } 
 ?>  