var http = require("http");

http.createServer(function(request,response){
 console.log("Someone connected!");
  response.writeHead(200,{"Content-Type":"text/plain"});
  response.write("Hello World,Jia!");
  response.end();
}).listen(3333);