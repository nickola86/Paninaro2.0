$(document).ready(function(){
  $("#product_id").change(function(){
    full_id = $(this).val().split('_');
    supplier_id = full_id[0];
    product_id = full_id[1];
    if($.trim(full_id)!=""){
      $.get("/suppliers/"+supplier_id+"/products/"+product_id+".json",function(data){
        $("#product_details").hide();
        $("#product_details #name").text(data.name);
        $("#product_details #description").text(data.description);
        $("#product_details #price").text(to_currency(data.price));
        $("#product_details").show();
        $("#add_order").removeAttr("disabled");
      }).error(function(){
        alert("..e mo sei cagato!");
      });
    }else{
      $("#add_order").attr("disabled","disabled");
      $("#product_details").hide();
    }
  });
  $("#add_order").attr("disabled","disabled");
});
