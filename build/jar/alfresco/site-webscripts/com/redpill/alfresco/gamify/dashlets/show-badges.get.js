function main()
{
   var s = new XML(config.script);
   var greeting = s.greeting;

   // Set the model object
   if (greeting == "hello")
   {
      model.greeting = "hello";
   }
   else
   {
      model.greeting = "goodbye";
   }
   
   
   //get the users achievements and create a list out of it
   
   //pass the list to a model in order to be displayed in the dashlet
   model.achievements=[];
   model.achievements.push("document_junkie");
   model.achievements.push("red_alert");
   
}

main();