<?php
    $inputOj=new Student_Mark_Table();
class Student_Mark_Table{
     private $studentMarkOj="";
     private $dataBaseOj="";
     private $techerCourseId="";
     private $ctNo="";
     private $ctType="";
     public $tableData="";
     private $tableRowData=array("studentMark", "id", "ct1","ct2","ct3","totalCt","present","assignment","final","total");
     public function __construct() {
        include '../Sesion/Session_Chack.php';
        include './Student_Mark_Data_Base.php';
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        
        $this->dataBaseOj=new Student_Mark_Database();
        $this->techerCourseId=$_POST['techerCourseId'];
        $this->tableData=$this->dataBaseOj->Show_Student_Mark_Table($this->techerCourseId);
        $this->studentMarkOj=new Lay_Out();
        $this->studentMarkOj->Top("Student's Marks");
        $this->studentMarkOj->Head($_SESSION['type']);   
        $this->Student_Mark_Table_Article();
        $this->studentMarkOj->Fotter("Copyright &copy; RTTP");
    }
    public function Student_Mark_Table_Article()
    { 
        
        $data= $this->dataBaseOj->Search_CtNo_And_CtType($this->techerCourseId);
        
        $this->ctNo=$data[0];
        $this->ctType=$data[1];
       $from='
             
             <form name="from" id="from" meth>
             <table style="border: 1px solid black">
               <tr>
                <th>Student Id</th>
                '.$this->Ct_No_Count().' 
                 '.$this->Ct_Type_Count().'   
                <th>Present</th>
                <th>Assignment</th>
                <th>Final Exam</th> 
                <th width="8%">Total</th> 
               </tr>
               '.$this->Table_Data().'
              </table> 
            </form>  
            '. $this->Java_Script().'
             ';
       
       $this->studentMarkOj->Article("Admin_Student_Mark",$from); 
  }

public function Table_Data()
{
    $data='';
    
  for($i=0;$i< count($this->tableData);$i++)
  {
      
      $data= $data.'<tr>';
      for($j=1;$j<10;$j++)
      {
          if($j==1)
              {
                $data= $data.'<td> '.$this->tableData[$i][$j].'</td>';
              }
          else if($j==9 || $j==5)
              {
              $data= $data.'<td> <div id="'.$i.$j.'">'.$this->tableData[$i][$j].'</div></td>';
              }     
          else
          {
             if($this->ctNo==1 && $j !=3 && $j !=4 )
                {
                  $data= $data.'<td> 
                         <input class="markIn" type="text" name="getValue'.$i.$j.'" value="'.$this->tableData[$i][$j].'" onkeyup="Get_Value'.$i.$j.'()"/>
                          </td> ';
                 }   
            else if($this->ctNo==2 && $j !=4 )
                {
                     
                  $data= $data.'<td> 
                             <input class="markIn" type="text" name="getValue'.$i.$j.'" value="'.$this->tableData[$i][$j].'" onkeyup="Get_Value'.$i.$j.'()"/>
                            </td> ';
                }
            else if($this->ctNo==3)
                {
                   $data= $data.'<td> 
                            <input class="markIn" type="text" name="getValue'.$i.$j.'" value="'.$this->tableData[$i][$j].'" onkeyup="Get_Value'.$i.$j.'()"/>
                            </td> ';
                }
          }
          
      }
      $data=$data.'</tr>';
  }
  return $data;
}



public function Java_Script()
{
    $data='';
    
    for($i=0;$i<count($this->tableData);$i++)
    {
       for($j=1;$j<10;$j++) 
       {
          $data=$data. 
              '<script type="text/javascript">
                  function Get_Value'.$i.$j.'() {
                   var request,request1;
                   var display,display1;
                 
                    try{
                       request = new XMLHttpRequest();
                   }catch (e){

                      try{
                         request = new ActiveXObject("Msxml2.XMLHTTP");
                      }catch (e) {
                         try{
                            request = new ActiveXObject("Microsoft.XMLHTTP");
                         }catch (e){
                             alert("Your browser broke!");
                            return false;
                         }
                      }
                   } 
                   request .onreadystatechange = function()
                    {
                      if(request.readyState == 4)
                      {
                            display = document.getElementById("'.$i.'5");
                            display .innerHTML = request.responseText;
                         
                         
                        }
                    }
                    
                try{
                       request1 = new XMLHttpRequest();
                   }catch (e){

                      try{
                         request1 = new ActiveXObject("Msxml2.XMLHTTP");
                      }catch (e) {
                         try{
                            request1 = new ActiveXObject("Microsoft.XMLHTTP");
                         }catch (e){
                             alert("Your browser broke!");
                            return false;
                         }
                      }
                   } 
                   request1 .onreadystatechange = function()
                    {
                      if(request1.readyState == 4)
                      {
                            display1 = document.getElementById("'.$i.'9");
                            display1 .innerHTML = request1.responseText;
                         
                         
                        }
                    }   
                    
                var tableRowData=["studentMark", "id", "ct1","ct2","ct3","totalCt","present",
                "assignment","final","total"];
                var getValue =Number(document.from.getValue'.$i.$j.'.value);
                var i =Number('.$i.'); 
                var j =Number('.$j.'); 
                var techerCourseId =Number('.$this->techerCourseId.');    
                var tableRow=tableRowData[j];      
                    
                try { 
                    if(getValue <0)
                      {
                       throw "Mark Is Not Empty !!!";
                      }
                     if(isNaN(getValue))
                      {
                      throw "Mark Is Not Charecter !!!";
                      }
                    if(getValue> 20 && j>1 && j<5)
                       {
                         throw "CT Mark Is Not Gater Than 20 !!!";
                       }
                    if(getValue>10 && j==6)
                       {
                         throw "Present Mark Is Not Gater Than 10 !!!";
                       }  
                    if(getValue> 10 && j==7)
                       {
                         throw "Assignment Mark Is Not Gater Than 10 !!!";
                       } 
                    if(getValue > 60 && j==8)
                       {
                         throw "Final Mark Is Not Gater Than 60 !!!";
                       }   
                
                var queryString = "?getValue=" + getValue ;
                queryString += "&tableRow=" +tableRow+"&i=" +i+"&j=" +j+"&techerCourseId=" +techerCourseId;
               
               request.open("GET", "Student_Ct_Mark.php" + queryString, true);
               request.send(null);  
               
                var queryString1 = "?getValue=" + getValue ;
                queryString1 += "&tableRow=" +tableRow+"&i=" +i+"&j=" +j+"&techerCourseId=" +techerCourseId;
                
               request1.open("GET", "Student_Total_Mark.php" + queryString1, true);
               request1.send(null);   
                }
                catch(err) {
                    alert(err);
                }  
             }  
         </script>';
       }
    }
    return $data;
 } 
 
public function Ct_No_Count()
{
    if($this->ctNo==1)
    {
        return '
            <th>CT-1</th>
        ';
    }
    else if($this->ctNo==2)
    {
        return '
            <th>CT-1</th>
            <th>CT-2</th>
        ';
    }
    else if($this->ctNo==3)
    {
        return '
            <th>CT-1</th>
            <th>CT-2</th>
            <th>CT-3</th>
        ';
    }
}
  public function Ct_Type_Count()
{
    if($this->ctType=='BestOne')
    {
        return '
            <th width="8%">Best-One</th>
        ';
    }
    else if($this->ctType=='BestTwo')
    {
        return '
            <th width="8%">Best-Two</th>
        ';
    }
    else if($this->ctType=='BestThree')
    {
        return '
            <th width="8%">Average</th>
        ';
    }
}
}
?>

