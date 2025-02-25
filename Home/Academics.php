
<?php
include '../Sesion/Session.php';
$oj=new Academics();
class Academics {
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
                     <h2 align="center">Academics</h2>
                     <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3191.9612562099546!2d89.5437855!3d22.8193037!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ff9aac28b2453f%3A0x4ca90d328aa3b943!2sNorth+Western+University!5e1!3m2!1sen!2sbd!4v1455716880356" width="100%" height="400px" frameborder="0" style="border:0" allowfullscreen=""></iframe>
                 ';
       $this->oj->Article("Home",$from); 
    }
    
}
?>
