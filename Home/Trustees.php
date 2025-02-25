<?php
include '../Sesion/Session.php';
$oj=new Trustees();
class Trustees {
    private $oj="";
    private $dataOj="";
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        include './Home_Data_Base.php';
        $this->dataOj=new Home_Data_Base();
        $this->oj=new Lay_Out();
        $this->oj->Top("North Western University");
        $this->oj->Head('Home');   
        $this->Log_In_From();
        $this->oj->Fotter("Copyright &copy; RTTP");
       
    }
    public function Log_In_From()
    {    
        
       $from=' <h2 align="center"><img src="../Image/nwu.jpg"  style="width:128px;height:128px;"><h2>
                     <h2 align="center">Board of Trustees of North Western University Trust</h2>
                     <p>'.$this->dataOj->Show_Data(3).'</p>
                 ';
       $this->oj->Article("Home",$from); 
    }
    
}
?>
