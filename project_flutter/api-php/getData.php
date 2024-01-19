<?php
checkAuthenticate();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "real_estate";

try {
  
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
 
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


    if ($_SERVER["REQUEST_METHOD"] == "GET") {
    $stmt = $conn->query("SELECT * FROM `Units`");
    $units = $stmt->fetchAll(PDO::FETCH_ASSOC);
    foreach($units as $key=>$unit){
        $stmt = $conn->query("SELECT image FROM `unitimages` where unitId=".$unit['id']);
        $images = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $units[$key]['images']=$images;   
    }
    header('Content-Type: application/json');
    echo json_encode($units);
   }
} catch(PDOException $e) {
    header('Content-Type: application/json');
    echo json_encode(array(
        'status'=>'filer',
        'message'=>'حدث خطأ أثناء الوصول إلى قاعدة البيانات'
    ));

}

$conn = null;



function checkAuthenticate()
{
    if (isset($_SERVER['PHP_AUTH_USER'])  && isset($_SERVER['PHP_AUTH_PW'])) {
        if ($_SERVER['PHP_AUTH_USER'] != "api" ||  $_SERVER['PHP_AUTH_PW'] != "1234"){
            header('WWW-Authenticate: Basic realm="My Realm"');
            header('HTTP/1.0 401 Unauthorized');
            echo 'Page Not Found';
            exit;
        }
    } else {
        exit;
    }
}
?>