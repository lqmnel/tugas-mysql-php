<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tugas PHP | Luqman Elhakim Ibnu Hasan</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>
<body>
    <div class="container" style="margin-top: 100px">
        <table class="table table-striped" id="table-flight" style="width:100%">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nomor Penerbangan</th>
                <th scope="col">Pesawat</th>
                <th scope="col">Date Time</th>
                <th scope="col">Kedatangan</th>
                <th scope="col">Keberangkatan</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    include 'connection.php';
                    $query = 'SELECT flights.id AS flight_id, 
                                        flight_number, 
                                        planes.code AS plane_code, 
                                        planes.type AS plane_type, 
                                        date_departure, 
                                        time_departure, 
                                        arrival, 
                                        departure 
                                    FROM flights 
                                JOIN planes ON flights.plane_id=planes.id';
                    $flightSchedule = mysqli_query($conn, $query);
                    while ( $row = mysqli_fetch_assoc($flightSchedule)) {
                        echo
                        "<tr>
                            <td>" . $row['flight_id'] . "</td>
                            <td>" . $row['flight_number'] . "</td>
                            <td>" . $row['plane_type'] . ' (' . $row['plane_code'] . ') ' . "</td>
                            <td>" . $row['date_departure'] . ' (' . $row['time_departure'] . ') ' . "</td>
                            <td>" . $row['arrival'] . "</td>
                            <td>" . $row['departure'] . "</td>
                        </tr>";
                    }
                ?>
            </tbody>
        </table>
    </div>
</body>
<script>
    $(document).ready(function() {
        $('#table-flight').DataTable();
    });
</script>
</html>