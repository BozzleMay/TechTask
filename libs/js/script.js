$('#myTable').DataTable({
  
    ajax: {
      url:  "/libs/php/getData.php",
      dataSrc: 'data',
      cache: true,
      responsive: true,
      "columnDefs": [ {
        "targets": -1,
        "data": null,
        
    } ]
     
    },
    columns: [
        
    
    {data: 'section name'},
    {data: 'title'},
    {data: 'created'}
   
              
            ],
            
        
          //  if (result.status.name == "ok") {
         
            
            
          
          // } 
          })