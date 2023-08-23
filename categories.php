<?php
require_once 'header.php';
require 'connect.php';

try {
    // fetch categories
    $query = "SELECT * FROM categories";
    $stmt = $pdo->query($query);
    $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Categories</title>
</head>
<body>
    <h3>Categories</h3>
    <ul>
        <?php foreach ($categories as $category) { ?>
            <li>
                <a href="category.php?slug=<?php echo $category['slug']; ?>">
                    <?php echo $category['name']; ?>
                </a>
            </li>
        <?php } ?>
    </ul>
</body>
</html>
