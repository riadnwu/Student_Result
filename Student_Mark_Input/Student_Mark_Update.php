<?php
include './Student_Mark_Data_Base.php';
$ojData=new Student_Mark_Database();

$techerCourseId= $_GET['techerCourseId']; 
$tableRowData= $_GET['tableRow'];  
$getValue= (float)$_GET['getValue']; 
$i= (float)$_GET['i'];  
$j= (float)$_GET['j']; 


$totalData=$ojData->Show_Student_Mark_Table($techerCourseId);
$data= $ojData->Search_CtNo_And_CtType($techerCourseId);
$ctNo=$data[0];
$ctType=$data[1];

$studentMarkId=$totalData[$i][0];
$ct1=$totalData[$i][2];
$ct2=$totalData[$i][3];
$ct3=$totalData[$i][4];
if($j>5)
  {
    $sumCt=$totalData[$i][5];
      if($j ==6)
      {
        $sumTotal=$sumCt+$totalData[$i][7]+$totalData[$i][8]+$getValue; 
      }
      if($j ==7)
      {
        $sumTotal=$sumCt+$totalData[$i][6]+$totalData[$i][8]+$getValue; 
      }
      if($j ==8)
      {
        $sumTotal=$sumCt+$totalData[$i][7]+$totalData[$i][6]+$getValue; 
      }
  }
else if($j<5)
  {
    if($ctType=="BestOne")
     {
       if($ctNo==1 && $j==2)
        {
          $sumCt=$getValue;
        }
       else if($ctNo==2)
        {
           if($j==2)
            {
              $sumCt=max($ct2,$getValue);
            }
           else if($j==3)
            {
              $sumCt=max($ct1,$getValue);
            }

        } 
       else if($ctNo==3)
        {
           if($j==2)
            {
             $sumCt=max($ct2,$ct3,$getValue);
            }
           else if($j==3)
            {
             $sumCt=max($ct1,$ct3,$getValue);
            }
            else if($j==4)
            {
              $sumCt=max($ct1,$ct2,$getValue);
            }
        }
     }
    else if($ctType=="BestTwo")
     {

       if($ctNo==1 && $j==2)
        {
          $sumCt=$getValue;
        }
       else if($ctNo==2)
        {  
             if($j==2)
            {
              $sumCt=($ct2+$getValue)/2;
            }
           else if($j==3)
            {
              $sumCt=($ct1+$getValue)/2;
            }

        } 
       else if($ctNo==3)
        {
           $max1=0;
           $max2=0;
          if($j==2)
          {
            $ct1=$getValue;
          }
          else if($j==3)
          {
            $ct2=$getValue;
          }
          else if($j==4)
          {
            $ct3=$getValue;
          }
           $max1=max($ct1,$ct2);
           $max2=min($ct1,$ct2);
           $temp1=max($max1,$ct3);
           $temp2=min($max1,$ct3);
           
           $max1=$temp1;
           $max2=max($temp2,$max2);
          
           $sumCt=($max1+$max2)/2;
        }
     }
    else if($ctType=="Average")
     {
        if($ctNo==1 && $j==2)
        {
          $sumCt=$getValue;
        } 
       else if($ctNo==2)
        { 
          if($j==2)
            {
               $sumCt=($ct2+$getValue)/2;
            }
           else if($j==3)
            {
               $sumCt=($ct1+$getValue)/2;
            }

        } 
       else if($ctNo==3)
        {
          if($j==2)
          {
            $sumCt=($ct2+$ct3+$getValue)/3;
          }
          else if($j==3)
          {
            $sumCt=($ct1+$ct3+$getValue)/3;
          }
          else if($j==4)
          {
            $sumCt=($ct2+$ct1+$getValue)/3;
          }

        }
     } 
   $sumTotal=$sumCt+$totalData[$i][6]+$totalData[$i][7]+$totalData[$i][8];
   
  }
$ojData->Update_Student_Mark_Table($studentMarkId,$tableRowData,$getValue,$sumCt,$sumTotal); 
