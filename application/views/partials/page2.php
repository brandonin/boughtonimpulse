<html>
<head>
	<title></title>
</head>
<body>

 <div id="status_infinite">0 | 0</div>
<div id="wrap_infinite"> 
<?php
 for($i = 9; $i< 18; $i++)
{ ?>
	<div class="affiliates">
	<label class="affiliates_label orange-font"><?= $affiliates[$i]['name']?></label><a rel="nofollow" href="<?= $affiliates[$i]['url'] ?>"><img class="affiliates_image" border="0" src="<?= $affiliates[$i]['img']?>"></a><img src="<?= $affiliates[$i]['tracker_id']?>" width="1" height="1" border="0" alt="" style="border:none !important; margin:0px !important;" />
	</div>
<?php
	}
 ?>
</div>

</body>
</html>