<?php

require_once('model/PostManager.php');
require_once('model/CommentManager.php');

function listPosts()
{
    $postManager = new PostManager(); 
    $posts = $postManager->getPosts(); 

    require('view/frontend/listPostsView.php');
}

function viewComment() // pour voir le commentaire
{
	
	$commentManager = new CommentManager();
    $viewcomment=$commentManager->view($_GET['id']);
 
    require('view/frontend/comment_edit.php');
}

function editComment($postId, $commentId, $newcomment) // pour éditer le commentaire à modifier
{
	$postManager = new PostManager();
	$commentManager = new CommentManager();
	
    $affectedComment = $commentManager->edit($postId, $commentId, $newcomment);
	
 
    if ($affectedComment === false) {
        throw new Exception('Impossible de modifier le commmentaire');
    }
    else {
        header('Location: index.php?action=post&id=' . $_GET['postId']);
    }
}

function post()
{
    $postManager = new PostManager();
    $commentManager = new CommentManager();

    $post = $postManager->getPost($_GET['id']);
    $comments = $commentManager->getComments($_GET['id']);

    require('view/frontend/postView.php');
}

function addComment($postId, $author, $comment)
{
    $commentManager = new CommentManager();

    $affectedLines = $commentManager->postComment($postId, $author, $comment);

    if ($affectedLines === false) {
        throw new Exception('Impossible d\'ajouter le commentaire !');
    }
    else {
        header('Location: index.php?action=post&id=' . $postId);
    }
}

