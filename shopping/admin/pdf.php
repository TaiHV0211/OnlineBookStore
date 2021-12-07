<?php
        require_once './FPDF/fpdf184/fpdf.php';
        define('FPDF_FONTPATH',"./tfpdf/font/");
        require('./tfpdf/tfpdf.php');
        require_once 'config.php';
            $sql = "SELECT * FROM products"; 
            $query = mysqli_query($con, $sql);
            if(isset($_POST['pdf_db'])){
                $pdf = new tFPDF();
                $pdf->AddPage();

                $fontName = 'Helvetica';
                $pdf->SetFont($fontName,'B',14);
                $pdf->cell('10','10','ID','1','0','C');
                $pdf->cell('15','10','Cate','1','0','C');
                $pdf->cell('15','10','Sub','1','0','C');
                $pdf->cell('150','10','Product Name','1','1','C');
                $pdf->SetFont($fontName,'',11);
                while ($row = mysqli_fetch_assoc($query)) {
                    $pdf->cell('10','10',$row['id'],'1','0','C');
                    $pdf->cell('15','10',$row['category'],'1','0','C');
                    $pdf->cell('15','10',$row['subCategory'],'1','0','C');
                    $pdf->cell('150','10',$row['productName'],'1','1','C');

                }        
                $pdf->Output();
        }
?>