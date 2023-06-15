

console.log("okok bienvenue messages");
var myid11=$("#myid1"); 
if (myid11[0]){
var myid=$("#myid1").html(); 
}
var mytexts=document.getElementsByClassName("mytext");//message_texts_attributes_0_x   //edit value
var ball;
for (var i = 0;i<mytexts.length;i++){
		                   ball = mytexts[i];
	ball.onmousedown = function(event) {

		  let shiftX = event.clientX - ball.getBoundingClientRect().left;
		  let shiftY = event.clientY - ball.getBoundingClientRect().top;

		  ball.style.position = 'absolute';
		  ball.style.zIndex = 1000;
		  document.body.append(ball);

		  moveAt(event.pageX, event.pageY);

		  // moves the ball at (pageX, pageY) coordinates
		   // taking initial shifts into account
		     function moveAt(pageX, pageY) {
			     var myid=ball.id.split("_")[1];
		  var myball = ball.getBoundingClientRect();
		                   var pic = document.getElementById('mypic'+window.location.pathname.split("/")[2]).getBoundingClientRect();
		                   var msgw = document.getElementById('message_texts_attributes_'+myid+'_x');
		                   var msgh = document.getElementById('message_texts_attributes_'+myid+"_y");
		         ball.style.left = pageX - shiftX + 'px';
		         msgw.value = myball.left - pic.left;
		             ball.style.top = pageY - shiftY + 'px';

		         msgh.value = myball.top - pic.top;
		               }
		
		                 function onMouseMove(event) {
		                     moveAt(event.pageX, event.pageY);
		                       }
		
		                         // move the ball on mousemove
		                           document.addEventListener('mousemove', onMouseMove);
		
		                             // drop the ball, remove unneeded handlers
		                               ball.onmouseup = function() {
		                                   document.removeEventListener('mousemove', onMouseMove);
		                                       ball.onmouseup = null;
		                                         };
		
		                                         };
		
		                                         ball.ondragstart = function() {
		                                           return false;
		                                           };
}




		                   ball = document.getElementById('move'+myid);
if (ball){
	ball.onmousedown = function(event) {

		  let shiftX = event.clientX - ball.getBoundingClientRect().left;
		  let shiftY = event.clientY - ball.getBoundingClientRect().top;

		  ball.style.position = 'absolute';
		  ball.style.zIndex = 1000;
		  document.body.append(ball);

		  moveAt(event.pageX, event.pageY);

		  // moves the ball at (pageX, pageY) coordinates
		   // taking initial shifts into account
		     function moveAt(pageX, pageY) {
                              var myid=$("#myid1").html(); 
		                   var pic = document.getElementById('mypic'+myid).getBoundingClientRect();
		                   var zatpic = document.getElementById('mypic'+myid);
		                   var msgw = document.getElementById('message_width');
		                   var msgh = document.getElementById('message_height');
		                   var myball = document.getElementById('move'+myid).getBoundingClientRect();
			     var myleft=pic.left;
			     var mytop=pic.top;
		         ball.style.left = pageX - shiftX + 'px';
		         zatpic.style.width = myball.left - myleft  + 'px';
		         msgw.value = myball.left - myleft;
		             ball.style.top = pageY - shiftY + 'px';

		         zatpic.style.height = myball.top - mytop  + 'px';
		         msgh.value = myball.top - mytop;
		               }
		
		                 function onMouseMove(event) {
		                     moveAt(event.pageX, event.pageY);
		                       }
		
		                         // move the ball on mousemove
		                           document.addEventListener('mousemove', onMouseMove);
		
		                             // drop the ball, remove unneeded handlers
		                               ball.onmouseup = function() {
		                                   document.removeEventListener('mousemove', onMouseMove);
		                                       ball.onmouseup = null;
		                                         };
		
		                                         };
		
		                                         ball.ondragstart = function() {
		                                           return false;
		                                           };
}
$(function(){
	      if($("#text-frm")[0]){
	      $("#text-frm").on("submit", function(event){
			                                    console.log("zertyu");
			                                    var frm=$("#text-frm")[0];
			                                    $.ajax({url:frm.action, type:frm.method, data:$(frm).serialize(),
								                                                                        success:function(data){
																		                                                                                                                  console.log(data);
																		                                                                                                          }});
		      event.preventDefault(event);
		      return false;
	      });
	      }
if ($("#message_body")[0]){
var myid=$("#myid1").html(); 
	      $("#cettepic"+myid).on("click", function(event) {
		                   var pic = document.getElementById('mypic'+myid).getBoundingClientRect();
		                       console.log(event.pageX, this.offsetLeft);
		                       console.log(event.pageY, this.offsetTop);
		                       var x = event.pageX - this.offsetLeft - pic.left;
		                       var y = event.pageY - this.offsetTop - pic.top;
		                   var msgx = document.getElementById('message_bodyx');
		                   var msgy = document.getElementById('message_bodyy');
		      msgx.value=x;
		      msgy.value=y;
		                       //alert("X Coordinate: " + x + " Y Coordinate: " + y);
		              var mybody=$("#mybody"+myid)[0];
		                       var msgbody=$("#message_body")[0];
		                                mybody.style.left=x+"px";
		                                         //mybody.innerHTML=msgbody.value;
		                                                  mybody.style.top=y+"px";
		                                                               });

	      $("#message_body").on("keyup", function(event){
var myid=$("#myid1").html(); 
		                   var body = document.getElementById('mybody'+myid);
		      body.innerHTML=event.target.value.replaceAll("\n","<br>").replaceAll(" ","&nbsp;");
	      });
	      $("#message_image").on("change", function(event){
var myid=$("#myid1").html(); 
		                   var pic = document.getElementById('cettepic'+myid);
	             var input = event.target;
	             var url = $(event.target).val();
	             var ext = url.substring(url.lastIndexOf('.') + 1).toLowerCase();
	console.log(input,pic,ext);
	             if (input.files && input.files[0] && (ext == "gif" || ext == "png" || ext == "jpeg" || ext == "jpg"))
		                {
					console.log("rtyui")
					                           var reader = new FileReader();

					                           reader.onload = function (e) {
									                                             $(pic).attr('src', e.target.result);
									                                          }
					                          reader.readAsDataURL(input.files[0]);
					                       }
	             else
		               {
				                               $(pic).attr('src', '/assets/no_preview.png');
				                             }
	           });

};
});

