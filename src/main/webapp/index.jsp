<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Simple Calculator</title>
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 50px;
  }
  .calculator {
    max-width: 300px;
    margin: auto;
  }
  input[type="text"] {
    width: 100%;
    height: 40px;
    font-size: 1.5em;
    text-align: right;
    margin-bottom: 10px;
    padding: 5px;
    box-sizing: border-box;
  }
  button {
    width: 23%;
    height: 50px;
    font-size: 1.2em;
    margin: 1%;
    cursor: pointer;
  }
</style>
</head>
<body>

<div class="calculator">
  <input type="text" id="display" readonly />
  
  <div>
    <button onclick="appendNumber('7')">7</button>
    <button onclick="appendNumber('8')">8</button>
    <button onclick="appendNumber('9')">9</button>
    <button onclick="appendOperator('/')">÷</button>
  </div>
  <div>
    <button onclick="appendNumber('4')">4</button>
    <button onclick="appendNumber('5')">5</button>
    <button onclick="appendNumber('6')">6</button>
    <button onclick="appendOperator('*')">×</button>
  </div>
  <div>
    <button onclick="appendNumber('1')">1</button>
    <button onclick="appendNumber('2')">2</button>
    <button onclick="appendNumber('3')">3</button>
    <button onclick="appendOperator('-')">−</button>
  </div>
  <div>
    <button onclick="appendNumber('0')">0</button>
    <button onclick="appendNumber('.')">.</button>
    <button onclick="clearDisplay()">C</button>
    <button onclick="appendOperator('+')">+</button>
  </div>
  <div>
    <button style="width: 98%;" onclick="calculate()">=</button>
  </div>
</div>

<script>
  const display = document.getElementById('display');

  function appendNumber(num) {
    display.value += num;
  }

  function appendOperator(op) {
    const lastChar = display.value.slice(-1);
    if (['+', '-', '*', '/'].includes(lastChar)) {
      // Replace operator if last char is operator
      display.value = display.value.slice(0, -1) + op;
    } else if (display.value !== '') {
      display.value += op;
    }
  }

  function clearDisplay() {
    display.value = '';
  }
  function clearDisplay() {
    display.value = '';
  }


  function calculate() {
    try {
      // Evaluate the expression safely
      const result = eval(display.value);
      display.value = result;
    } catch (e) {
      display.value = 'Error';
    }
  }
</script>

</body>
</html>
