<?php
include '../Sesion/Session_Chack.php';

//if($_SERVER['REQUEST_METHOD']=="POST" && isset($_POST['submit']))
//{
//    //include './Create_Account_Chack.php';
//    include_once './Create_Account_Data_Base.php';
//    $oj=new Create_Account();
//}
//else
//{
  include_once './Create_Account_Data_Base.php';
  $oj=new Create_Account();  
//}

class Create_Account {
     private $oj="";
     private $dataBaseOj="";
     private $data=["name","password","confirmPassword","email","dep","type","gender","mobile","birthDay","adress"];
     private $data1=["Name","Password","Confirm Pasaword:","E-mail:","Department:","Type:","Gender:","Mobile:","Birth Day:","Adress:"];
    public function __construct() {
        include '../Lay_Out/Lay_Out_CSS.php';
        include '../Lay_Out/Lay_Out.php';
        $this->dataBaseOj=new Create_Account_Data_Base();
        $this->oj=new Lay_Out();
        $this->oj->Top("Create Account");
        $this->oj->Head($_SESSION['type']);   
        $this->Account_Article();
        $this->oj->Fotter("Copyright &copy; RTTP");
    }
    public function Account_Article()
    {   
         
          $from= $this->Data().$this->Google_Map_Location() .$this->Java_Script();
       $this->oj->Article("Admin_Create_Account",$from); 
    }
    
    public function Data()
    {
        for($l=0;$l<10;$l++)
        {
            $value[$l]="";
           if(isset($_POST[''.$this->data[$l].'']))
            {
                $value[$l]=$_POST[''.$this->data[$l].''];
            } 
           
        }
        
       $from='<form action="./Create_Account_Chack.php" method="POST" name="from" id="from">';
        for($i=0;$i<10;$i++)
        {
            if($i==4)
            {
                $from=$from.'<p>' .$this->data1[$i].'</p>';
                $from=$from.'<Select name="dep" value="'.$value[$i].'" >  
                 '.$this->dataBaseOj->Show_All_Department().'
                </select>';
            }
            else if($i==5)
            {
                $from=$from.'<p>' .$this->data1[$i].'</p>';
                $from=$from.'<Select name="type" value="'.$value[$i].'" >  
                 '.$this->dataBaseOj->Show_All_Type().'
                </select>';
            }
            else if($i==6)
            {
                $from=$from.'<p>' .$this->data1[$i].'</p>';
                $from=$from.'<Select name="gender" value="'.$value[$i].'" >  
                       <option value="Male">  Male </option>
                       <option value="Female">  Female </option>
                       <option value="Other">  Other </option>
                </select>';
            }
            else if($i==8)
            {
                $from=$from.'<p>' .$this->data1[$i].'</p>';
                 $from=$from.'<input class="markIn" type="date" id="'.$this->data[$i].'" name="'.$this->data[$i].'" placeholder="'.$this->data[$i].
                         '" value="'.$value[$i].'"  onchange="Get_Value'.$i.'()"/>';
            }
            else if($i==1 || $i==2)
            {
                $from=$from.'<p>' .$this->data1[$i].'</p>';
                 $from=$from.'<input class="markIn" type="password" id="'.$this->data[$i].'" name="'.$this->data[$i].'" placeholder="'.$this->data[$i].
                         '"  value="'.$value[$i].'" onchange="Get_Value'.$i.'()"/>';
            }
            else
            {
                $from=$from.'<p>' .$this->data1[$i].'</p>';
                 $from=$from.'<input class="markIn" type="text" id="'.$this->data[$i].'" name="'.$this->data[$i].'" placeholder="'.$this->data[$i].
                         '" value="'.$value[$i].'" onchange="Get_Value'.$i.'()"/>';
            }
        }
         
           $from=$from.'<br><label id="lblresult"></label>
                         <input type="hidden" id="location" name="location">
                        <input type="hidden" id="latitude" name="latitude">
                        <input type="hidden" id="longitude" name="longitude">
                          <br><input type="submit" name="submit" />
              </form>'; 
           
           return $from;
    }

    public function Java_Script()
{
    $data='';
    
    for($i=0;$i<10;$i++)
    {
        if($i!=4 &&$i!=5&&$i!=6)  
        {
            $data=$data. 
              '<script type="text/javascript">
                  function Get_Value'.$i.'() {
                var getValue =document.from.'.$this->data[$i].'.value; 
                var i =Number('.$i.');     
                var pass=""; 
                 if(i==2)
                 { 
                   pass= document.from.password.value;  
                 }
                      
                try { 
                    if(getValue.length <4 )
                      {
                       throw "Value Is More Then 4 !!!";
                      }
                    
                     if(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(getValue)==false && i==3)  
                      {  
                        throw "In Valid Email !!!";
                      } 
                    if(pass.localeCompare(getValue)!=0 && i==2)
                       {
                         throw "Password Is Not Match !!!";
                       }  
                     if(isNaN(getValue) && i==7)
                      {
                      throw "Mobile Is Not Charecter !!!";
                      }   
                      if(!isNaN(getValue) && i==0)
                      {
                      throw "Name Is Not Number !!!";
                      } 
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
 public function Google_Map_Location()
{    
     //../Lay_Out/Google_Map.js
     $data= 
              ' <script type="text/javascript" src="mytest.js"></script>
                    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDuuKarQ6iRzy71iMmY-1GKmT0REgrYw30&libraries=places"></script>
                    <script type="text/javascript">
                        google.maps.event.addDomListener(window, "load", intilize);
                        function intilize() {
                            var autocomplete = new google.maps.places.Autocomplete(document.getElementById("adress"));

                            google.maps.event.addListener(autocomplete, "place_changed", function () {

                                var place = autocomplete.getPlace();
                                var location = "<br>Address: " + place.formatted_address + "<br/>";
                                location += "Latitude: " + place.geometry.location.lat() + "<br>";
                                location += "Longitude: " + place.geometry.location.lng() + "<br>";
                                document.getElementById("lblresult").innerHTML = location

                                var longitude = place.geometry.location.lng();
                                var latitude = place.geometry.location.lat();
                                var location = place.formatted_address;
                                
                                var locationForm = document.getElementById("location");
                                var latitudeForm = document.getElementById("latitude");
                                var longitudeForm = document.getElementById("longitude");
                                
                                locationForm.value = location;
                                longitudeForm.value = longitude;
                                latitudeForm.value = latitude;
                            });

                        }
                        ;

                    </script>';
     return $data;
 } 
}
?>
