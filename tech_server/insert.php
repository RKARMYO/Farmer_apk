<?php
	include 'connection.php';
?>
<?php
	//for security fun
	function security($string){
		return htmlspecialchars(stripslashes(trim($string)));
	}

	if(isset($_POST['posttype']))
	{
		$table="";
		$check=security($_POST['posttype']);
		if($check==1) $table="farmer";
		else if($check==2) $table="plant";
		else if($check==3) $table="insects";
		else if($check==4) $table="flower";

		$image=$_FILES["file"]["name"];
		if(!empty($image))
		{
			$tmp=$_FILES['file']['tmp_name'];
			//extension
			$ext=pathinfo($image,PATHINFO_EXTENSION);
			// Valid Extensions 
			$valid_extensions = array("jpg","jpeg","png");
			if( in_array(strtolower($ext),$valid_extensions) )
			{
				$location="images/".time().$image;//echo $location;
				if(move_uploaded_file($tmp,$location))
				{
					//$sql=$conn->prepare("INSERT INTO $table (title,part1,part2,image) VALUES (?,?,?,?)");
					$sql=$conn->prepare("INSERT INTO tech_news (title,part1,part2,image) VALUES (?,?,?,?)");
					$sql->bind_param("ssss",$ti,$p1,$p2,$img);
					$ti=security($_POST['title']);
					$p1=security($_POST['textareapart1']);
					$p2=security($_POST['textareapart2']);
					$img=time().$image;
					if($sql->execute())
					{
						echo 101;
					}
					else
					{
						echo "can't execute";
					}
				}
				else
				{
					echo "can't upload!";
				}
			}
			else
			{
				echo "only allow jpg/jpeg/png";
			}
		}
		else
		{
			echo "no image!";
		}
	}

?>