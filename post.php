<?php
require_once 'header.php';
require_once 'connect.php';

$requestedSlug = $_GET['slug'];

try {
    // fetch post based on slug
    $query = "SELECT * FROM posts WHERE slug = :slug";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':slug', $requestedSlug);
    $stmt->execute();
    $post = $stmt->fetch(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $post['title']; ?></title>
</head>
<body>
    <h3><?php echo $post['title']; ?></h3>
    <p><?php echo $post['created_at']; ?></p>
    
    <?php if (!empty($post['image_default'])): ?>
        <img src="<?php echo $post['image_default']; ?>" alt="Post Image">
    <?php else: ?>
        <img src="https://www.thebrand.ai/i/uploads/blog/202307/img_64afce13320925-40899747-89813831.jpg" alt="Default Image">
    <?php endif; ?>

</body>
</html>
