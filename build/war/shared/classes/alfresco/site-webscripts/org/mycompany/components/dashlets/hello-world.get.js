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
}

main();