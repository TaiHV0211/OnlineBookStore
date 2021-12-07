<?php
    require_once './fpdf184/fpdf.php';
    require_once '../include/config.php';

    $sql = "SELECT * FROM products"; 
    $result = mysqli_query($con, $sql);

    if(isset($_POST['pdf'])){
        $pdf = new FPDF('p','mm','a4');
        $pdf->SetFont('arial','b','14');
        $pdf->AddPage();
        $pdf->cell('40','10','Product Name','1','0','C');
        $pdf->cell('40','10','Category','1','0','C');
        $pdf->cell('40','10','Subcategory','1','0','C');
        $pdf->cell('40','10','Company Name','1','0','C');
        $pdf->cell('40','10','Product Creation Date','1','0','C');
        $pdf->Output();
    }
?>