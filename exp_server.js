var express = require('express');

var app = express();

app.get('/', function(request,response){
    console.log(" GET method connected ...");
	
    var respBody = JSON.stringify(request.headers,null,'');
	
	response.status(200).send(respBody);
	
});

app.get('/authors', function(request,response){

    response.header("Access-Control-Allow-Origin", "*");
    response.header("Access-Control-Allow-Headers", "X-Requested-With");
         //res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    console.log(" GET /authors  method connected ...");
	var randNum = Math.floor((Math.random() * 4000) + 1) + ""; 
	console.log("sleeping ... " + randNum);
	var  millis =randNum;
    var respBody = JSON.stringify(randNum,null,'');
	 
	var date = new Date();
    var curDate = null;
    do { curDate = new Date(); }
    while(curDate-date < millis);
     
	response.status(200).send(respBody);
	
});

app.listen(3333);