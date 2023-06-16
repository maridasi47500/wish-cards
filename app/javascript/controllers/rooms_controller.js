//alert("ertyu")
// Get the modal
 var modal = document.getElementById("myModal");

 // Get the button that opens the modal
 var btn = document.getElementById("myBtn");

 // Get the <span> element that closes the modal
 var span = document.getElementsByClassName("close")[0];

 // When the user clicks on the button, open the modal
 btn.onclick = function() {
   modal.style.display = "block";
   }

   // When the user clicks on <span> (x), close the modal
   span.onclick = function() {
     modal.style.display = "none";
     }

     // When the user clicks anywhere outside of the modal, close it
// Get the modal
 var modalpic = document.getElementById("myModalpic");

 // Get the button that opens the modal
 var btnpic = document.getElementById("myBtnpic");

 // Get the <span> element that closes the modal
 var spanpic = document.getElementsByClassName("closepic")[0];

 // When the user clicks on the button, open the modal
 btnpic.onclick = function() {
   modalpic.style.display = "block";
   }

   // When the user clicks on <span> (x), close the modal
   spanpic.onclick = function() {
     modalpic.style.display = "none";
     }

     // When the user clicks anywhere outside of the modal, close it
     window.onclick = function(event) {
       if (event.target == modal) {
           modal.style.display = "none";
             }
       if (event.target == modalpic) {
           modalpic.style.display = "none";
             }
             } 
