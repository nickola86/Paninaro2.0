$(document).ready(function(){
  $("#supplier_id").change(function(){
    //$("#product_id option").hide();
    //$("#product_id option[value^="+$(this).val()+"_]").show();
    //$("#product_id option:selected").removeAttr("selected");
    //$("#product_id").val("");
    if($(this).val()!=""){
    s_id = $(this).val();
    $.get("/suppliers/"+s_id+"/products.json",function(data){
      $("#product_id").hide();
      $("#product_id").html("");
      $("#product_details").hide();
      o=$("<option></option>");
      o.val("");
      o.text("Select product");
      $("#product_id").append(o);
      $(data).each(function(i,e){
	o=$("<option></option>");
	o.val(s_id+"_"+e.id);
	o.text(e.name);
        $("#product_id").append(o);
      });
      $("#product_id").show();
    });
  }
  });
  $("#supplier_id option").removeAttr("selected");
  $("#supplier_id").val("");
  $("#product_id").html("");
  $("#product_id").hide();
});
