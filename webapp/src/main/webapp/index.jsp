<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
    <style>
        input[type="button"] {
            width: 50px;
            height: 50px;
            font-size: 20px;
        }
    </style>
</head>
<body>
    <h1>Simple Calculator</h1>
    <input type="text" id="result" readonly><br>
    <input type="button" value="1" onclick="addToResult('1')">
    <input type="button" value="2" onclick="addToResult('2')">
    <input type="button" value="3" onclick="addToResult('3')">
    <input type="button" value="+" onclick="addToResult('+')"><br>
    <input type="button" value="4" onclick="addToResult('4')">
    <input type="button" value="5" onclick="addToResult('5')">
    <input type="button" value="6" onclick="addToResult('6')">
    <input type="button" value="-" onclick="addToResult('-')"><br>
    <input type="button" value="7" onclick="addToResult('7')">
    <input type="button" value="8" onclick="addToResult('8')">
    <input type="button" value="9" onclick="addToResult('9')">
    <input type="button" value="*" onclick="addToResult('*')"><br>
    <input type="button" value="C" onclick="clearResult()">
    <input type="button" value="0" onclick="addToResult('0')">
    <input type="button" value="=" onclick="calculateResult()">
    <input type="button" value="/" onclick="addToResult('/')">
    
    <script>
        function addToResult(value) {
            document.getElementById('result').value += value;
        }

        function clearResult() {
            document.getElementById('result').value = '';
        }

        function calculateResult() {
            try {
                var result = eval(document.getElementById('result').value);
                document.getElementById('result').value = result;
            } catch (error) {
                document.getElementById('result').value = 'Error';
            }
        }
    </script>
</body>
</html>
