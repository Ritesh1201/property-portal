const PropertyDetails = function () {
  $("#propertyDetails").on("click", function(){
    var details = $("#prop-details");

    console.log('clicked');

    details.toggleClass("open");
  })
}


export {
  PropertyDetails
};

