<html>
 <head>
  <title>PHP-Test</title>
 </head>
 <body>
 <?php echo '<p>Hallo Benjamin, ich hab ein PHP file in docker gehostet</p>'; ?>
 
 <?php

 $client = new MongoDB\Client("mongodb://localhost:27017");
 $collection = $client->emojiDB->emojis;

 $result = $collection->find();
 ?>
</body>
</html>
