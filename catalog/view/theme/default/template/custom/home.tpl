<?php echo $header; ?>
	<div id="content">
<?php echo $content_top; ?>
		<img class="img-rounded center-block" src="../../../../../../image/catalog/demo/banners/gallery.png" alt="gallery" style="max-height: 600px;"><br><br>

		<p class="text-center" style="font-size: 20px; font-weight: bold;">Обеспечивает идеальную посадку.</p>
		<p class="text-center" style="font-size: 20px; font-weight: bold;">Эти высококачественные изделия хорошо впишутся в гардероб мужчины любого возраста.</p>
		<p class="text-center" style="font-size: 20px; font-weight: bold;">Разработаны в тесном сотрудничестве с немецким дизайнером Алексом.</p><br>

		<div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive center-block" style="max-height: 100px;"/></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>

		<p class="text-center" style="font-size: 20px; font-weight: bold;">Обеспечивает идеальную посадку.</p>
		<p class="text-center" style="font-size: 20px; font-weight: bold;">Эти высококачественные изделия хорошо впишутся в гардероб мужчины любого возраста.</p>
		<p class="text-center" style="font-size: 20px; font-weight: bold;">Разработаны в тесном сотрудничестве с немецким дизайнером Алексом.</p><br>

		<img class="img-rounded center-block" src="../../../../../../image/catalog/homeImage.png" alt="homeImage" style="max-height: 300px;"><br><br>

		<button type="button" class="btn btn-default center-block btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px">Order</button>
	</div>			
<?php echo $footer; ?>