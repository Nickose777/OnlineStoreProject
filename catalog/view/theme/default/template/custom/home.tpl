<?php echo $header; ?>
<div id="content">
	<div id="logo">
		<?php if ($logo) { ?>
		<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive center-block" style="max-height: 400px;"/>
		<?php } else { ?>
		<h1>
			<a href="<?php echo $home; ?>"><?php echo $name; ?></a>
		</h1>
		<?php } ?>
	</div>

	<div class="container">
		<p class="main-text slogan-text">
			Im Laufe des Tages streckt sich Ihr Hemd ständig  aus der Hose hinaus?<br>
			Das ewige Einstecken nimmt viel Zeit in Anspruch und passiert meistens zu einem unangemessenen Zeitpunkt?<br>
			Sie wollen Ihr Hemd zu jeder Gelegenheit und jedem Anlass perfekt wie ein „Gentleman“ anhaben?<br>
			<br>
			Wir haben eine Lösung für sie!!!
		</p>
	</div>

	<?php echo $gallery; ?>

	<div class="container">
		<p class="justified-text main-page-text">
			Unser Prinzip  ist einfach. Egal, ob Hemd, Pullover oder Poloshirt, alles was eingesteckt bleiben muss, bleibt auch eingesteckt. Es spielt auch keine Rolle, wie oft und wo Sie ihr Hemd tragen. Aber die Art, wie Sie Ihr Hemd anhaben, sagt schon viel über Sie aus.<br>
			Lassen sie Ihr Lifestyle und Ihr Aussehen nicht unter Verdacht stellen. Egal, wie aktiv Sie im Laufe des Tages sind, sitzt Ihr Hemd immer perfekt auf Ihrem Körper, ohne dass Sie sich dabei irgendwie unbequem fühlen.
		</p>
	</div>

	<img class="img-rounded center-block" src="/image/catalog/homeImage.png" alt="homeImage" style="max-height: 300px;">

	<div class="container">
		<p class="justified-text main-page-text">
			Der „Hemd-Sitzt“ Träger ist eine sichere Lösung gegen das Herausstrecken ihres Hemdes im Laufe des ganzen Tages.<br> 
			Unser Produkt besteht aus leichten elastischen Bändern, die sich an Ihren Oberschenkeln einwandfrei anpassen lassen, und aus speziellen Klammern, die sie am Rand Ihres Hemdes befestigen. Somit bleibt ihr Hemd immer erstklassig  eingesteckt. Außerdem verhindern unsere „Hemd-Sitzt" Träger das Bilden von Falten in den Rücken- und Schulterbereichen und garantieren somit einen ausgezeichneten Sitz Ihres Hemdes, unabhängig von Ihrer Körperposition.
		</p>
	</div>

	<a href="<?php echo $order_page; ?>" class="btn-black center-block" role="button"><?php echo $text_order; ?></a>
</div>
<?php echo $footer; ?>