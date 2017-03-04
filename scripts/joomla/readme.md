
replace the escaped db query with true prepared query

plguins/authentication/joomla.php line 71
```
$dbConfig =& JFactory::getConfig();

$host 		= $dbConfig->getValue('config.host');
$user 		= $dbConfig->getValue('config.user');
$password 	= $dbConfig->getValue('config.password');
$database	= $dbConfig->getValue('config.db');
$prefix 	= $dbConfig->getValue('config.dbprefix');
$driver 	= $dbConfig->getValue('config.dbtype');

$pdo = new PDO($driver . ":host={$host};dbname={$database}", $user, $password);
$statement = $pdo->prepare("SELECT `id`, `password`, `gid`"
    . " FROM `{$prefix}users`"
    . " WHERE username= ?");
$statement->bindParam(1, $credentials['username']);
$statement->execute();
$result = $statement->fetchObject();
```

move xmlrpc folder out of public html