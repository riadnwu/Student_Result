<?php
$logOj=new Log_In();
class Log_In {
     private $oj="";
     private $row="";
     private $dataOj="";
    public function __construct() {
        
        session_start();
        if(!isset($_SESSION['id'])&& !isset($_SESSION['password']))
           {
                header("location:../Home/Home.php");
           }
       else {
              include './Log_In_Data_Base.php';
              $this->dataOj= new Log_In_Data_Base();
              $this->row=(array) $this->dataOj->Show_Data( $_SESSION['id'],$_SESSION['password']);
              $this->Main_Log_In();
            }
       
       
    }
    public function Main_Log_In()
    {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        $this->oj=new Lay_Out();
        $this->oj->Top($this->row[0]."'s Account");
        $this->oj->Head($this->row[6]);   
        $this->Log_In_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }

    public function Log_In_Article()
    {    
           $from=' <table>
                      <tr style="background-color:#e0f2fb;">
                         <td >
                           <p>Name:&nbsp&nbsp&nbsp&nbsp'. $this->row[0].'</p>
                           <p>Id:&nbsp&nbsp&nbsp&nbsp'. $this->row[1].'</p>
                           <p>PassWord:&nbsp&nbsp&nbsp&nbsp'. $this->row[2].'</p>
                           <p>Email:&nbsp&nbsp&nbsp&nbsp'. $this->row[3].'</p>
                           <p>Dep:&nbsp&nbsp&nbsp&nbsp'. $this->row[4].'</p>
                           <p>Session:&nbsp&nbsp&nbsp&nbsp'. $this->row[5].'</p>   
                           <p>Type:&nbsp&nbsp&nbsp&nbsp'. $this->row[6].'</p>   
                           <p>Gender:&nbsp&nbsp&nbsp&nbsp'. $this->row[7].'</p>
                           <p>Mobile:&nbsp&nbsp&nbsp&nbsp'. $this->row[8].'</p>   
                           <p>Birth Day:&nbsp&nbsp&nbsp&nbsp'. $this->row[9].'</p><br><br><br><br><br><br>
                          </td> 
                         <td>
                            <br><br><br><br><p>Adress:&nbsp&nbsp&nbsp&nbsp'. $this->row[10].'</p> 
                            <p>Location:&nbsp&nbsp&nbsp&nbsp'. $this->row[11].'</p>     
                            <iframe src="Google_Map.php" height="500" width="800"></iframe>
                         </td> 
                         </tr>
                     </table>   
                   ';
       $this->oj->Article("Admin_Home",$from); 
    }

}
