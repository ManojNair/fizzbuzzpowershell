
$InputNumber = $LambdaInput.body 
$result = $InputNumber | ConvertFrom-Json
$InputNumber = $result.Number
Write-Host "The number is $InputNumber"


if ($null -eq $InputNumber) {
    $result = "Number is null"
}
  

if (($InputNumber % 3 -eq 0) -and ($InputNumber % 5 -eq 0)) {
    $result = "FizzBuzz"
}
elseif ($InputNumber % 3 -eq 0) {

    $result = "Fizz"
        
}
elseif ($InputNumber % 5 -eq 0) {

    $result = "Buzz"
       
}
else {
    $result = $InputNumber
}


@{
    statusCode = 200
    body       = $result
    headers    = @{'content-type' = 'application/json' }
}

