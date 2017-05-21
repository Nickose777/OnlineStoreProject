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