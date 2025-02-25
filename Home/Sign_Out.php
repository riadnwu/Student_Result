<?php
include '../Sesion/Session.php';
$sessionOj=new Session();
$sessionOj->Destroy_Session();
$oj=new Sign_Out();
class Sign_Out {
    private $oj="";
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        $this->oj=new Lay_Out();
        $this->oj->Top("North Western University");
        $this->oj->Head('Home');   
        $this->Log_In_From();
        $this->oj->Fotter("Copyright &copy; RTTP");
       
    }
    public function Log_In_From()
    {    
        
        $from='<form action="../Log_In/Log_In_Chack.php"  method="POST">
            User Id:
            <input type="text" name="id" value="" />
            <br>Password:
            <input type="password" name="password" value="" /><br>
             <input type="submit" value="Submit" />
        </form>';
       $this->oj->Article("Home",$from); 
    }
    
}
?>
