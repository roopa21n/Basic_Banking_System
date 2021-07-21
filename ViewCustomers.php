<?php
    $servername = "localhost";
    $username = "root"; 
    $password = ""; 
    $dbname = "spark bank"; 
    $conn = new mysqli($servername, $username, $password, $dbname); 
    if ($conn->connect_error) { 
    die("Connection failed: " . $conn->connect_error); 
    } 
    //$sql = "SELECT * FROM customerinfo" ;
    $sql = "SELECT * FROM accountdetails" ;
    $result = $conn->query($sql);
?>
            
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer View</title>    
    <!-- CSS style sheet -->
 
  <style>
        html {
            position: relative;
            min-height: 100%;
        }
        body {
               padding-top: 60px;
               font-size:25px;
               padding-bottom: 100px;
               background: #f5fce3;
               background: #F0F8FF;
               
         

              }
        .container{      
                padding-top:10px;
                display: block;
                margin-top: 30px;
                margin-left: auto;
                margin-right: auto;
                width: 60%;    
                
                
        }

        td,th { border: 1px solid #ddd; padding: 17px;}
        #Table{ font-family: Arial,Helvetica, sans-serif; border-collapse: collapse; margin-bottom: 17px;}
        #Table tr:nth-child(even){ background-color: #d2d3d4;text-align:Center; }
        #Table tr:nth-child(odd){ background-color: #dee2e3;text-align:Center }
        #Table tr:hover{ background-color: #b5d0eb; }
        #Table th { padding-top: 12px; padding-bottom: 12px; text-align:Center; background-color: #D2691E; color:white; }
        footer {
            background-color: ;
            position: absolute;
            left: 0;
            bottom: 0;
            height: 100px;
            width: 100%;
            overflow: hidden;
         
          
        }
    </style>
</head>

<body>
  <!-- home_page -->
  <?php include('home_page.php'); ?>
       <div class="container">
            <h2 style="text-align: ">Customers Profile</h2>
            <br>                   
            <table id="Table">
                <thead>
                    <tr>
                    <th>S.No.</th>
                    <th>Account No.</th>
                    <th>User Name</th>
                    <th>User EMail</th>
                    <th>Current Balance</th>  
                    </tr>
                </thead>                     
                <?php
                while($row = $result->fetch_assoc()) { 
                ?> 
                <tr>
                    <td><?php echo $row['sno']; ?></td>
                    <td><?php echo $row['accID']; ?></td>
                    
                    <td ><?php echo $row['name']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['balance']; ?></td>
                    
                </tr>
                <?php
                }
                $conn->close();
                ?> 
            </table>
        </div>
        <footer style="text-align: center">

        </footer>
</body>
</html>


