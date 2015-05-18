 <script language ="javaScript"  type="text/javascript">
 
     function changeContent(){
         var element = document.getElementById("content");
          element.innerHTML="new content";
     }
     
     var xmlhttp;
     
     function getNum(){
         xmlhttp = new XMLHttpRequest();
         xmlhttp.onreadystatechange = callback; 

         xmlhttp.open("GET","http://localhost:3333/authors",true);
         xmlhttp.send();        
     }
     
     function callback(){
         
         if(xmlhttp.readyState==4 && xmlhttp.status==200){
              document.getElementById('result').innerHTML = xmlhttp.responseText;
         }
      }
 	
 </script>
</head>

<body>
 <h2>hello3</h2>
 <a href ="prov_checkclaimstatus.jsp">CSI</a>
 
 <form action = "${pageContext.request.contextPath}/main/Controller" method ="post" enctype="multipart/form-data" id = "test-csi-form">

   <div>
      <input type="hidden" name="fn" value="function-1">
   </div>
   
      <div id ="content"> this is a text.
      </div>
      
      <div id ="result"> this is a result.
      </div>
      
      <button type="button" onclick="changeContent()"> check it</button><br><br>
      <button type="button" onclick="getNum()"> getNum</button><br>
 
   <div>
   <label for ="text-1">firstName</label>
      <input name="firstname" type="text"  id="text-1" required ="required" value="Jia"> <br>

      <button type="submit">Submit</button>
   </div>
   
 </form>
 <hr>
 