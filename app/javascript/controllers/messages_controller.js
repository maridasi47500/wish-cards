window.onload=function(){
if($("#myaudio").length > 0){
	myaudio.muted=false;
	    myaudio.play();
}
}

console.log("okok bienvenue messages");
var myid11=$("#myid1"); 
var myid;
if (myid11[0]){
myid=$("#myid1").html(); 
}
var mytexts=document.getElementsByClassName("mytext");//message_texts_attributes_0_x   //edit value
var mypics=document.getElementsByClassName("mypic");//message_texts_attributes_0_x   //edit value
var ball;
var balll={};
var ballll={};
for (var y = 0;y<mypics.length;y++){
		                   ballll[y] = mypics[y];
	ballll[y].onmousedown = function(event) {
			     myid=event.target.id.split("_")[1];
		let zatball=event.target;
		console.log(zatball,myid)

		                   var pic = document.getElementById('mypic'+window.location.pathname.split("/")[2]).getBoundingClientRect();
	//zatball.style.top="0"+"px";
	//zatball.style.left="0"+"px";
		  let addleft = zatball.getBoundingClientRect().left;
		  let addright= zatball.getBoundingClientRect().top;
		console.log(addleft,addright);
		  let shiftX = event.clientX - zatball.getBoundingClientRect().left;
		  let shiftY = event.clientY - zatball.getBoundingClientRect().top;


	console.log(zatball,zatball.style.top);
		//var div1 = document.createElement('div');
		//$(div1).addClass("mytext")
		//    .html(zatball.innerHTML);
		//
		//zatball.remove();	
		//zatball=div1;


		  zatball.style.position = 'absolute';
		  zatball.style.zIndex = 1000;



		  document.body.append(zatball);


		  moveAt(event.pageX, event.pageY);

		     function moveAt(pageX, pageY) {

		  var myball = zatball.getBoundingClientRect();
		                   var pic = document.getElementById('mypic'+window.location.pathname.split("/")[2]).getBoundingClientRect();
		                   console.log('message_pics_attributes_'+myid+'_x');
		                   var msgw = document.getElementById('message_pics_attributes_'+myid+'_x');
		                   var msgh = document.getElementById('message_pics_attributes_'+myid+"_y");
		                   console.log('message_pics_attributes_'+myid+"_y",zatball.dataset.top,zatball.dataset.left);
		         zatball.style.left = pageX - shiftX + 'px';

		             zatball.style.top = pageY - shiftY + 'px';



			     if ($("#frm-editmsg").length > 0){
		         msgw.value = myball.left - pic.left;
		         msgh.value = myball.top - pic.top;
			     }

		               }
		
		                 function onMouseMove(event) {
		                     moveAt(event.pageX, event.pageY);
		                       }
		
		                         // move the ball on mousemove
		                           document.addEventListener('mousemove', onMouseMove);
		
		                             // drop the ball, remove unneeded handlers
		                               zatball.onmouseup = function() {
		                                   document.removeEventListener('mousemove', onMouseMove);
		                                       zatball.onmouseup = null;
			     myid=event.target.id.split("_")[1];
			     if ($("#css-frm")[0]){
				     console.log("css animations");
			     }
			     console.log("[id^='form_picanimations"+myid+"'][value="+$("#percent").val()+"]");
			     console.log($("#css-frm").length > 0);
			     console.log($("[id^='form_picanimations"+myid+"'][value="+$("#percent").val()+"]").length == 0);
			     if ($("#css-frm").length > 0 && $("[id^='form_picanimations"+myid+"'][value="+$("#percent").val()+"]").length === 0){

var mypicid=$("#pic_id"+myid)[0];
				     console.log("ajoute un champ");
				     console.log(mypicid);
		                   var pic = document.getElementById('mypic'+window.location.pathname.split("/")[2]).getBoundingClientRect();
var myleft=event.target.getBoundingClientRect().left - pic.left - Number(event.target.dataset.myx);
var mytop=event.target.getBoundingClientRect().top - pic.top - Number(event.target.dataset.myy);

$.ajax({url:"/codeform/pics",data:{percent:$("#percent").val(),rotate: $("#rotate").val(), x:myleft,y:mytop, picid: mypicid.dataset.id, objid:myid,picanimid:mypicid.dataset.anim}, success:function(data){
				     console.log("insérer après", $(".pictable"+(mypicid.dataset.myid)));
				     $(".pictable"+(mypicid.dataset.myid)).after(data);
	mypicid.dataset.anim=Number(mypicid.dataset.anim)+1;
	event.target.style.transform="rotate("+$("#rotate").val()+"deg)";
}});
			     }

		                                         };
		
		                                         };
		
		                                         ballll[y].ondragstart = function() {
		                                           return false;
		                                           };
	console.log(ballll)
}
for (var i = 0;i<mytexts.length;i++){
		                   balll[i] = mytexts[i];
	console.log(mytexts[i]);
	balll[i].onmousedown = function(event) {
			     myid=event.target.id.split("_")[1];
		let zatball=event.target;
		console.log(zatball)

		                   var pic = document.getElementById('mypic'+window.location.pathname.split("/")[2]).getBoundingClientRect();
	//zatball.style.top="0"+"px";
	//zatball.style.left="0"+"px";
		  let addleft = zatball.getBoundingClientRect().left;
		  let addright= zatball.getBoundingClientRect().top;
		console.log(addleft,addright);
		  let shiftX = event.clientX - zatball.getBoundingClientRect().left;
		  let shiftY = event.clientY - zatball.getBoundingClientRect().top;


	console.log(zatball,zatball.style.top);
		//var div1 = document.createElement('div');
		//$(div1).addClass("mytext")
		//    .html(zatball.innerHTML);
		//
		//zatball.remove();	
		//zatball=div1;


		  zatball.style.position = 'absolute';
		  zatball.style.zIndex = 1000;



		  document.body.append(zatball);


		  moveAt(event.pageX, event.pageY);

		     function moveAt(pageX, pageY) {

		  var myball = zatball.getBoundingClientRect();
		                   var pic = document.getElementById('mypic'+window.location.pathname.split("/")[2]).getBoundingClientRect();
		                   console.log('message_texts_attributes_'+myid+'_x');
		                   var msgw = document.getElementById('message_texts_attributes_'+myid+'_x');
		                   var msgh = document.getElementById('message_texts_attributes_'+myid+"_y");
		                   console.log('message_texts_attributes_'+myid+"_y",zatball.dataset.top,zatball.dataset.left);
		         zatball.style.left = pageX - shiftX + 'px';
		             zatball.style.top = pageY - shiftY + 'px';


			     if ($("#frm-editmsg").length > 0){
		         msgw.value = myball.left - pic.left;
		         msgh.value = myball.top - pic.top;
			     }
		               }
		
		                 function onMouseMove(event) {
		                     moveAt(event.pageX, event.pageY);
		                       }
		
		                         // move the ball on mousemove
		                           document.addEventListener('mousemove', onMouseMove);
		
		                             // drop the ball, remove unneeded handlers
		                               zatball.onmouseup = function() {
		                                   document.removeEventListener('mousemove', onMouseMove);
		                                       zatball.onmouseup = null;
			     myid=event.target.id.split("_")[1];
			     if ($("#css-frm")[0]){
				     console.log("css animations");
			     }
			     console.log("[id^='form_textanimations"+myid+"'][value="+$("#percent").val()+"]");
			     console.log($("#css-frm").length > 0);
			     console.log($("[id^='form_textanimations"+myid+"'][value="+$("#percent").val()+"]").length == 0);
			     if ($("#css-frm").length > 0 && $("[id^='form_textanimations"+myid+"'][value="+$("#percent").val()+"]").length === 0){

var mypicid=$("#text_id"+myid)[0];
				     console.log("ajoute un champ");
				     console.log(mypicid);
		                   var pic = document.getElementById('mypic'+window.location.pathname.split("/")[2]).getBoundingClientRect();
var myleft=event.target.getBoundingClientRect().left - pic.left - Number(event.target.dataset.myx);
var mytop=event.target.getBoundingClientRect().top - pic.top - Number(event.target.dataset.myy);

$.ajax({url:"/codeform/texts",data:{color:event.target.style.color,rotate: $("#rotate").val(), percent:$("#percent").val(), x:myleft,y:mytop, picid: mypicid.dataset.id, objid:myid,picanimid:mypicid.dataset.anim}, success:function(data){
				     console.log("insérer après", $(".texttable"+(mypicid.dataset.myid)));
				     $(".texttable"+(mypicid.dataset.myid)).after(data);
	event.target.style.transform="rotate("+$("#rotate").val()+"deg)";
	mypicid.dataset.anim=Number(mypicid.dataset.anim)+1;
}});
			     }

		                                         };
		
		                                         };
		
		                                         balll[i].ondragstart = function() {
		                                           return false;
		                                           };
	console.log(balll)
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
	      if($("#pic-frm")[0]){
	      $("#pic-frm").on("submit", function(event){
			                                    console.log("zertyu");
			                                    var picfrm=$("#pic-frm")[0];
		              var formData = new FormData(this);
			                                    $.ajax({url:picfrm.action, type:picfrm.method, 
								                data:formData,
								                cache:false,
								                contentType: false,
								                processData: false,
								                                                                        success:function(data){
																		                                                                                                                  console.log(data);
																		                                                                                                          }});
		      event.preventDefault(event);
		      return false;
	      });
	      }
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

