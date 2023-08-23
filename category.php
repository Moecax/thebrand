<?php
require_once 'header.php';
require_once 'connect.php';

$requestedSlug = $_GET['slug'];

try {
    // fetch category based on slug
    $query = "SELECT * FROM categories WHERE slug = :slug";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':slug', $requestedSlug);
    $stmt->execute();
    $category = $stmt->fetch(PDO::FETCH_ASSOC);

    // fetch posts related to the category
    $query = "SELECT * FROM posts WHERE category_id = :category_id";
    $stmt = $pdo->prepare($query);
    $stmt->bindParam(':category_id', $category['id']);
    $stmt->execute();
    $posts = $stmt->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $category['name']; ?></title>
</head>
<body>
    <h3><?php echo $category['name']; ?></h3>
    <p>Description: <?php echo $category['description']; ?></p>
    
    <h4>Posts in this Category:</h4>
    <div class="row">
        <?php foreach ($posts as $post) { ?>
            <div class="col-md-6 mb-4">
                <div class="card">
                    <?php if (!empty($post['image_small'])) { ?>
                        <img src="https://www.thebrand.ai/i/<?php echo $post['image_small']; ?>" class="card-img-left" alt="Post Image">
                    <?php } else { ?>
                        <img src="https://www.thebrand.ai/i/uploads/blog/202307/img_64afce13320925-40899747-89813831.jpg" class=" img-thumbnail card-img-left" alt="Default Image">
                    <?php } ?>
                    <div class="card-body">
                        <h5 class="card-title"><?php echo $post['title']; ?></h5>
                        <a href="post.php?slug=<?php echo $post['slug']; ?>" class="btn btn-primary">Read More</a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</body>
</html>
