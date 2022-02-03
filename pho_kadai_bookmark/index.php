<!DOCTYPE html>
<html lang="jp">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bookmark</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>

    </header>
    <main>
        <h1>読みたい本を入力</h1>
        <form method="post" action="bm_insert.php">
            <div class="insert">
                <p>本の名前</p>
                <input type="text" name="book_title" placeholder=""></input>
            </div>
            <div class="insert">
                <p>URL</p>
                <input type="text" name="book_url" placeholder=""></input>
            </div>
            <div class="insert">
                <p>memo</p>
                <textarea name="memo" id="memo" cols="60" rows="10"></textarea>
            </div>
            <div class="insert">
                <input type="submit" value="保存" class="btn">
            </div>
        </form>
    </main>
    <footer>
        
    </footer>
</body>
</html>