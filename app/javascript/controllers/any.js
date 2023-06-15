function valForm(){
	                      console.log("zertyu");
	                      var frm=$("#text-frm")[0];
	                      $.ajax({url:frm.action, type:frm.method, data:$(frm).serialize(),
				                                    success:function(data){
									                                          console.log(data);
									                                  }});
};
