<?php
include '../Sesion/Session.php';
$sessionOj=new Session();
$sessionOj->Destroy_Session();
$oj=new Home();
class Home {
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
        
       $from='<table h1 class="Top">  
                     <h2 align="center"><img src="../Image/nwu.jpg"  style="width:128px;height:128px;"><h2>
                     <h2 align="center"> North Western University</h2>
                     <p>'.$this->dataOj->Show_Data(1).'</p>
                 <tr>
                    <td>
                       The Vice-Chancellor
                    </td>
                    <td>
                       The Chairman
                    </td>
                    <td>
                       The Treasurer
                    </td>
                    <td>
                       The Faculty
                    </td>
                </tr>
                <tr>
                  <td>
                      <img src="../Image/Professor Dr. Tarapada Bhowmick.jpg"  alt="Mountain View" style="width:128px;height:128px;">
                  </td>
                  <td>
                      <img src="../Image/Talukder_Abdul_Khaleque.jpg"  alt="Mountain View" style="width:128px;height:128px;">
                  </td>
                  <td>
                      <img src="../Image/Fakir Abu Hossain.jpg"  alt="Mountain View" style="width:128px;height:128px;">
                  </td>
                  <td>
                      <img src="../Image/Prof. Dr. Gaji Abdullah-hel Baqui.jpg"  alt="Mountain View" style="width:128px;height:128px;">
                  </td>
                 </tr>
                 <tr>
                  <td>
                     Professor Dr. Tarapada Bhowmick
                  </td>
                  <td>
                      Talukder_Abdul_Khaleque
                  </td>
                  <td>
                      Fakir Abu Hossain
                  </td>
                  <td>
                     Prof. Dr. Gaji Abdullah-hel Baqui
                  </td>
                 </tr>
               </table>';
       $this->oj->Article("Home",$from); 
    }
    
}
?>
