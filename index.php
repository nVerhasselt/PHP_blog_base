<?php include_once "display_posts.php"; ?>

<?php
include_once "partials/header.html";
include_once "get_category.php";
?>

<h1>Les derniers articles</h1>

<?php foreach ($articles as $article): ?>
      
<h2><a href="post_detail.php?article_id=<?= $article['id_post'] ?>"> <?= $article['post_title'] ?></a></h2>
<p><?= GetCategory($categories, $article['id_category']) ?></p>
<em><?= $article['post_date'] ?></em>
<p><?= $article['post_content'] ?></p>
<p><?= $article['post_author'] ?></p>

<?php endforeach ?>


<?php
include_once "partials/footer.html"
?>