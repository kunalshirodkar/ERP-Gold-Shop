<?php session_start();
?>
<!DOCTYPE html>
<html>
	<head>
 <link rel="stylesheet" type="text/css" href="style.css">
	</head>
<body>
<div id="cssload-pgloading">
		<div class="cssload-loadingwrap">
			<ul class="cssload-bokeh">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	</div>

</body>

</html>
<?php 
include('dist/includes/dbcon.php');

if(isset($_POST['login']))
{

$user_unsafe=$_POST['username'];
$pass_unsafe=$_POST['password'];
$branch=$_POST['branch'];

$user = mysqli_real_escape_string($con,$user_unsafe);
$pass1 = mysqli_real_escape_string($con,$pass_unsafe);

$pass=md5($pass1);
$salt="a1Bz20ydqelm8m1wql";
$pass=$salt.$pass;

date_default_timezone_set('Asia/Manila');

$date = date("Y-m-d H:i:s");

$query=mysqli_query($con,"select * from user natural join branch where username='$user' and password='$pass' and branch_id='$branch' and status='active'")or die(mysqli_error($con));
	$row=mysqli_fetch_array($query);
           $id=$row['user_id'];
           $name=$row['name'];
           $counter=mysqli_num_rows($query);

           $id=$row['user_id'];
           $_SESSION['branch']=$row['branch_id'];
           $_SESSION['skin']=$row['skin'];

  	if ($counter == 0) 
	  {	
	  echo "<script type='text/javascript'>alert('Invalid Username or Password!');
	  document.location='index.php'</script>";
	  } 
	  elseif ($counter > 0)
	  {
	  $_SESSION['id']=$id;	
	  $_SESSION['name']=$name;		
	  

		$remarks="has logged in the system at ";  
		mysqli_query($con,"INSERT INTO history_log(user_id,action,date) VALUES('$id','$remarks','$date')")or die(mysqli_error($con));

	
    $query1=mysqli_query($con,"select * from payment natural join customer where branch_id='$branch' and status<>'paid'")or die(mysqli_error($con));
    while($row1=mysqli_fetch_array($query1)){

      $pid=$row1['payment_id'];	
      $balance=$row1['balance'];	
      $payment_for = date("Y-m-d",strtotime($row1['payment_for']));
      $date = date("Y-m-d");
      $due1 = date("Y-m-d",strtotime($payment_for. " +1 months"));
      $due2 = date("Y-m-d",strtotime($due1. " +5 days"));
        if ($date>$due2)
          {
            $interest=$balance*(0.03);
            mysqli_query($con,"UPDATE payment SET interest='$interest',remaining=remaining+'$interest' where payment_id='$pid'") or die(mysqli_error($con));
           
          } 
        else
          {
            $interest='0';
           
          }
         
 		}                

		 echo "<script type='text/javascript'>document.location='pages/home.php'</script>";
	  }
}	 
?>

	
