<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Predefined Variables</title>
</head>
<body>
  <!-- Script 3.1 - feedback .html-->
  <?php include "navbar.php"; ?>
    <p>Please complet this for to cusbmit your feedback:</p>
    <form action="handle_form.php" method="POST">
      <p>Name: <select name="title" required>
        <option value="Mr.">Mr.</option>
        <option value="Mrs">Mrs.</option>
        <option value="Ms">Ms</option>
      </select>
      <input type="text" name="name" size="20" require></p>

      <p>Email Address:
        <input type="email" name="email" size="20" required></p>

      <p>Response: This is...
      <input type="radio" name="response" value="excellent"> excellent
      <input type="radio" name="response" value="okay"> okay
      <input type="radio" name="response" value="boring">boring</p>

      <p>Comments: <textarea  name="comments" cols="30" rows="3"></textarea></p>

      <input type="submit" name="submit" value="Send My Feedback">
    </form>
    <p></p>
    
  </div>
</body>
</html>
