<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Mon blog</title>
        <link href="public/css/style.css" rel="stylesheet" /> 
    </head>
        
    <body>

	<h1>Mon super blog !</h1>
	<p><a href="index.php">Retour à la liste des billets</a></p>

	<p>modification du commentaire  </p>
	<p>Ancien commentaire : <?= nl2br(htmlspecialchars($viewcomment['comment'])); ?></p>	
		
		

				<form action="index.php?action=editComment&amp;id=<?= $_GET['id']?>&amp;postId=<?= $_GET['postId'] ?>" method="post">
	 		<div>
       			 <label for="edit_comment">Commentaire</label><br />
        		 <textarea id="comment" name="comment" rows="10" cols="70"><?php echo (htmlspecialchars($viewcomment['comment'])); ?></textarea>
   			</div>
    		<div>
        		<input type="submit" value="Modifier" />
    		</div>
</form>

    </body>
</html>