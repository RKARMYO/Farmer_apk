<?php
	include 'connection.php';
?>
<?php
	//for security fun
	function security($string){
		return htmlspecialchars(stripslashes(trim($string)));
	}

	//==================retrive data from server============
	if(isset($_GET['tech_news']))
	{
		//echo $_GET['lastid'];
		$sql=$conn->prepare("SELECT * FROM tech_news WHERE dbId>?");
		$sql->bind_param("i",$lastid);
		$lastid=security(($_GET['lastid']));//echo $lastid;
		$sql->execute();
		$result=$sql->get_result();
		$row=$result->num_rows;
		if($row > 0)
		{
			$arr=array();
			while($data=$result->fetch_assoc())
			{
				$arr[]=$data;
			}
			echo json_encode($arr);
		}
		else
		{
			echo 404;
		}
	}
	$conn->close();
?>