<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Product Cost Calculator</title>
</head>
<body><!-- Script 4.1 - calculator.html -->
  <?php include "navbar.php"; ?>
  <div>
    <p>Fill out this form to calulate the total cost:</p>
    <form action="handle_calc.php" method="post">
      <p>Price: <input type="text" name="price" size="5"></p>
      <p>Quantity: <input type="number" name="quantity" size="5" min="1" value="q"></p>
      <p>Discount: <input type="text" name="discount" size="5"></p>
      <p>Tax: <input type="text" name="tax" size="5"> (%)</p>
      <p>Shipping method: 
        <select  name="shipping">
          <option value="5.00">Slow ad steady.</option>
          <option value="8.95">Put a move on it.</option>
          <option value="19.36">I need it yesterday!</option>
        </select>
      </p>

      <p>Number of payments to make: <input type="number" name="payments" size="5" min="1" value="1"></p>

      <input type="submit" name="submit" value="Calculate!">
    </form>
  </div>
</body>
</html>
