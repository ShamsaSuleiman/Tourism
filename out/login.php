
<?php
header ("Content-Type:application/json");
$request=json_decode(file_get_contents("php://input"),true);
require('config.php');
if(isset($request['login']))
{
	$username=$request['username'];
	$password=md5($request['password']);

	$sql ="SELECT id,username FROM regtb WHERE username=:username and Password=:password";

	$query= $conn -> prepare($sql);
    $query-> execute(['username'=>$username,'password'=>$password]);

	if($query->rowCount() >= 1){
        $results=$query->fetch(PDO::FETCH_ASSOC);

        $data = [
            "message" => "success",
            "status" => "201",
            "data" =>  $results
        ];


    echo json_encode($data);
	} else{

        $data = [
            "message" => "fail",
            "status" => "404",
        ];
    echo json_encode($data);

}

}
else{
    $data = [
        "message" => "undefined action",
        "status" => "400",
    ];
echo json_encode($data);

}
?>