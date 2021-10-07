$(window).on('load', function () {
  // Animate loader off screen
  $(".se-pre-con").fadeOut("slow");;
});

$.ajax({
  url:  "libs/php/getData.php",
  type: 'POST',
  dataType: 'json',


  success: function (result) {
    
      //  if (result.status.name == "ok") {
       console.log(result)

       for (let i = 0; i < result.data.length; i++) {

        var row = $('<tr class="odd">');
        row.append("<td >" + result.data[i]['section name'] + '</td>');
        row.append('<td >' + result.data[i].title + '</td>');
        row.append('<td ]>' + result.data[i].MaxCreated + '</td>');
       
        
        $('#myTable tbody').append(row)
  
 
       
       
      }
   
    

  },
  error: function (jqXHR, textStatus, errorThrown) {
console.log('error')
  }
})
;

// $('#myTable').DataTable({s
  
//     ajax: {
//       url:  "/libs/php/getData.php",
//       dataSrc: 'data',
//       cache: true,
//       responsive: true,
//       "columnDefs": [ {
//         "targets": -1,
//         "data": null,
        
//     } ]
     
//     },
//     columns: [
        
    
//     {data: 'section name'},
//     {data: 'title'},
//     {data: 'created'}
   
              
//             ],
            
        
//           //  if (result.status.name == "ok") {

//           // } 
//           })
      
          