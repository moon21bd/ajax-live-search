<?php
$inputValues = $_POST['input'];

// print_r($inputValues);
$conn = mysqli_connect('localhost', 'root', 'nopass', 'technogenius');

if(!$conn){
  die('Could not connect: ' . mysqli_error($conn));
}

// Good to go with db query

$sql_query = "SELECT * FROM customers WHERE `name` LIKE '%$inputValues%' OR country LIKE '%$inputValues%'";

$result = mysqli_query($conn, $sql_query);

$output = "";
if(mysqli_num_rows($result) > 0) {

$output .= '<table class="myTable">';
$output .= '<tr class="header">';
$output .= '<th style="width:60%;">Name</th>';
$output .= '<th style="width:40%;">Country</th>';
$output .= '</tr>';

  while ($row = mysqli_fetch_array($result)) {

    $output .= '<tr>';
    $output .= '<td>' . $row['name'] . '</td>';
    $output .= '<td>' . $row['country'] . '</td>';
    $output .= '</tr>';
  }
    $output .= '</table>';
} else {
  $output .= 'No data matched.';
}

echo $output;

?>
