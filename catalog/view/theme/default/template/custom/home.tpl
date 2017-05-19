<?php echo $header; ?>
<div id="content">
	<?php echo $content_top; ?>
	<?php echo $gallery; ?>
	<!-- <img class="img-rounded center-block" src="/image/catalog/demo/banners/gallery.png" alt="gallery" style="max-height: 600px;"><br><br> -->

	<p class="text-center" style="font-size: 20px; font-weight: bold;">Обеспечивает идеальную посадку.</p>
	<p class="text-center" style="font-size: 20px; font-weight: bold;">Эти высококачественные изделия хорошо впишутся в гардероб мужчины любого возраста.</p>
	<p class="text-center" style="font-size: 20px; font-weight: bold;">Разработаны в тесном сотрудничестве с немецким дизайнером Алексом.</p><br>

	<div id="logo">
		<?php if ($logo) { ?>
		<img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive center-block" style="max-height: 400px;"/>
		<?php } else { ?>
		<h1>
			<a href="<?php echo $home; ?>"><?php echo $name; ?></a>
		</h1>
		<?php } ?>
	</div>

	<p class="text-center" style="font-size: 20px; font-weight: bold;">Обеспечивает идеальную посадку.</p>
	<p class="text-center" style="font-size: 20px; font-weight: bold;">Эти высококачественные изделия хорошо впишутся в гардероб мужчины любого возраста.</p>
	<p class="text-center" style="font-size: 20px; font-weight: bold;">Разработаны в тесном сотрудничестве с немецким дизайнером Алексом.</p><br>

	<img class="img-rounded center-block" src="/image/catalog/homeImage.png" alt="homeImage" style="max-height: 300px;"><br><br>

	<a href="<?php echo $order_page; ?>" class="btn btn-default center-block btn btn-success btn-lg" style="font-size: 20px; width: 150px; border-radius: 15px" role="button">Order</a>
</div>	
<!-- GL -->
<!DOCTYPE HTML>
<html>
  <head>
    <title>Slider en CSS3 et JS</title>
    <style>
      *{        
        padding:0;
        margin:0;
        list-style-type:none;
      }
      #slider{
        background-image:url('/image/resources/background.png');
        width:960px;
        height:370px;
        margin:50px auto;
        position:relative;
      }
      #mask{
        width:100%;
        height:100%;
        position:absolute;
        overflow:hidden;
      }
      .fleche{
        position:absolute;
        top:145px;
        cursor:pointer;
      }
      #fleche_gauche{
        left:-17px;
      }
      #fleche_droite{
        right: -17px;
      }
      #image_container{
        position:absolute;
        width:400%;
        height:100%;
        /* La transition sur tout les navigateurs */
           /* Chrome */ 
          -webkit-transition-property:all;
          -webkit-transition-duration:1s;

           /* Firefox */ 
          -moz-transition-property:all;
          -moz-transition-duration:1s;
          
           /* Opera */ 
          transition-property:all;
          transition-duration:1s;

      }
      
      /* Les différentes positions du slider */
      .image1 #image_container{
        left:0;
      }
      .image2 #image_container{
        left:-100%;
      }
      .image3 #image_container{
        left:-200%;
      }
      .image4 #image_container{
        left:-300%;
      }
      
      /* Les images */
      #image_container li{
        float:left;
      }
      
      /* L'encart Bleu */
     /* #encart{
        position:absolute;
        top:-15px;
        left:200px;
        background-image: url('/image/resources/text.png');
        width:328px;
        height:396px;
      }*/
      
     /* #bouton{
        position:relative;
        width:244px;
        height:55px;
        margin: 300px 0px 0px 40px;
        cursor:pointer;
      }*/
      
      /* Les points de navigation */
      #dots{
        width:130px;
        margin:auto;
      }
      
      /* les points, avec leur background non selectionné */
      #dots li{
        float:left;
        margin: 0px 2px;

        width:12px;
        height:12px;
        background-image: url('/image/resources/empty-dot.png');
        cursor:pointer;
      }
      /* Point au survol */
      #dots li:hover{
        background-image: url('/image/resources/selected-dot.png');
      }
      
      /* Point "selectionné". De la même manière que l'image, on change en fonction de la classe de slider */
      .image1 #dots li.button1, .image2 #dots li.button2, .image3 #dots li.button3, .image4 #dots li.button4{
        background-image: url('/image/resources/selected-dot.png');
      }

      /* Un eyecandy */
      #glass{
        position:absolute;
        top:0px;
        left:0px;
      }
    </style>
  </head>
  <body>
    <div id="slider">
    <!-- La banderolle qui contiens toute les images -->
      <div id="mask">
        <ul id="image_container">
          <li><img src="/image/images/bird.jpg"></li>
          <li><img src="/image/images/red_bird.jpg"></li>
          <li><img src="/image/images/spring.jpg"></li>
          <li><img src="/image/images/winter.jpg"></li>
        </ul>
      </div>
      <img src="/image/resources/glass.png" id="glass">
      <!-- l'encart bleu. Quoter s'il est genant -->
      <div id="encart">
        <img src="/image/resources/bouton.png" id="bouton">
        <ul id="dots">
          <!-- les petits points qui affichent ou nous en somme sur le slide -->
          <li class="button1" onClick="changeImage(1)" ></li>
          <li class="button2" onClick="changeImage(2)" ></li>
          <li class="button3" onClick="changeImage(3)" ></li>
          <li class="button4" onClick="changeImage(4)" ></li>
        </ul>
      </div>
      <!-- fin du quote -->
      <!-- Les fleches de navigations -->
      <img src="/image/resources/fleche-gauche.png" id="fleche_gauche" class="fleche" onClick="prevImage()" >
      <img src="/image/resources/fleche-droite.png" id="fleche_droite" class="fleche" onClick="nextImage()" >
    </div>
    <script>
      // Des Variables pour pouvoir modifier facilement ce qui doit l'être
      var secDuration = 5;
      var image = 1;
      var maxImages = 4;
      var slider = document.getElementById('slider');
      var timeout
      
      // La fonction qui change les images. Peut pointer vers une image spécifique, ou bien être appelée vide, pour passer ç celle d'apres
      function changeImage(requiredImage) {
      
        // Début de l'algorithme  .
        if (!requiredImage && requiredImage != 0){ //Si nous n'avons pas spécifié une image
          if(image < maxImages){// Si l'image n'est pas la dernière, on avance d'une image
            image++;
          }
          else{
            image = 1;//Si Nous sommes sur la dernière, on reviens au début 
          }
        }
        else{ // Si nous avont spécifié une image
          if(requiredImage > maxImages){//Si nous avont spécifié une image au dela de la dernière, on revient à la première
            image = 1;
          }
          else if(requiredImage < 1){ //Si nous avont spécifié une image 0 ou moins, on vas à la dernière image
            image = maxImages;
          }
          else{
            image = requiredImage; // Sinon, on vas à l'image spécifiée.
          }
        }
        //On dis au slider à travers sa classe quel image il doit afficher
        slider.className = "image"+image;
        
        // On nettoie et relance le timeout
        clearTimeout(timeout)
        timeout = setTimeout("changeImage()",secDuration*1000);
      }
      
      //Deux petites fonctions tres compréhensibles
      function nextImage(){
        changeImage(image+1);
      }
      function prevImage(){
        changeImage(image-1);
      }
      
      //On met le slide sur l'image par défaut, ici la 1ere
      changeImage(1);
    </script>
  </body>
</html>

<?php echo $footer; ?>