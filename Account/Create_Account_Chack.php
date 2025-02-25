<?php
include './Create_Account_Data_Base.php';
$dataOj=new Create_Account_Data_Base();
$value=array('name','password','confirmPassword','email','dep','type','gender','mobile','birthDay','adress','location','latitude','longitude');
 
 $session="";
 $id="";
 $GLOBALS['count']=0;
    if(date("m")<5)
    {
      $session="Spring".date("-Y");
      $id=$dataOj->Get_Max_Id($session,1,date("Y"),$_POST['type'], $_POST['dep']);
    }
    else if(date("m")>4&&date("m")<9)
    {
      $session="Summer".date("-Y");
      $id=$dataOj->Get_Max_Id($session,2,date("Y"),$_POST['type'], $_POST['dep']);
    }
    else if(date("m")>4&&date("m")<9)
    {
      $session="Fall".date("-Y");
      $id=$dataOj->Get_Max_Id($session,3,date("Y"),$_POST['type'], $_POST['dep']);
    }
    
  
   
if(!isset($_POST['name'])||!isset($_POST['email'])||!isset($_POST['password'])
        ||!isset($_POST['confirmPassword'])||!isset($_POST['mobile'])||!isset($_POST['adress'])
        || empty($_POST['name'])||empty($_POST['email'])||empty($_POST['password'])
        ||empty($_POST['confirmPassword'])||empty($_POST['mobile'])||empty($_POST['adress']))
    {
        echo "<script>alert('Data Must be Fild');</script>";
        include './Create_Account.php';
    }
    else
    {

         if(!preg_match("/^[a-zA-Z ]*$/",$_POST['name']))
        {
             $GLOBALS['count']++;
             echo "<script>alert('Name Is Not Required');</script>";
            
        }
         if(!filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
        {
             $GLOBALS['count']++;
             echo "<script>alert('Email Is Not Required');</script>";
            
        } 
        if($_POST['password']!=$_POST['confirmPassword'])
        {
             $GLOBALS['count']++;
            echo "<script>alert('Password Is Not Match');</script>";
        }
       if(!preg_match("/^[0-9]*$/",$_POST['mobile']))
        {
            $GLOBALS['count']++;
           echo "<script>alert('Mobile Is Not Match');</script>"; 
        }
       
        if( $GLOBALS['count']==0)
        {
                  $dataOj->Insert_Data($id, $_POST['name'], $_POST['password'],
                     $_POST['email'], $_POST['dep'], $session, $_POST['type'], 
                     $_POST['gender'], $_POST['mobile'], $_POST['birthDay'], $_POST['adress'],
                     $_POST['location'], $_POST['latitude'], $_POST['longitude']); 
         
        }
        else
        {
          include './Create_Account.php';
        }
      
    }
    

