function main()
{  
   //get the users achievements and create a list out of it
   var results = remote.call("/com/redpill/get-badges.json");
   var results_data = null;
   
   if(results.status == 200){
	   //pass the list to a model in order to be displayed in the dashlet
	   results_data= eval('(' + results +')');
   }
   model.achievements = results_data.badges;
   
}

main();