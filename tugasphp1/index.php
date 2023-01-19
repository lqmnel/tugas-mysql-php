<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Studi Kasus PHP I | Luqman Elhakim Ibnu Hasan</title>
</head>

<body>
    <form action="" method="post">
        <input type="text" name="width">
        <input type="text" name="length">
        <input type="submit" name="submit">
    </form>

    <?php
        if(isset($_POST['submit'])){
            $total = $_POST['width'] * $_POST['length'];
            echo($total);
        }
    ?>
</body>
</html>