<?php
include './Create_Account_Data_Base.php';
$dataOj=new Create_Account_Data_Base();
$value=array('name','password','confirmPassword','email','dep','type','gender','mobile','birthDay','adress','location','latitude','longitude');
$GLOBALS['count']=0;
   
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
         $dataOj->Update_Data($_POST['id'], $_POST['name'], $_POST['password'],
                     $_POST['email'], $_POST['dep'], $_POST['type'], 
                     $_POST['gender'], $_POST['mobile'], $_POST['birthDay'], $_POST['adress'],
                     $_POST['location'], $_POST['latitude'], $_POST['longitude']);
         
        }
        else
        {
          include './Create_Account.php';
        }
      
    }
    

