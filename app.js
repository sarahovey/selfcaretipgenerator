var express = require('express');
var mysql = require('mysql');
var app = express();
app.set("view engine", "ejs");

//Move this to its own file soon, use dbconn from Flip for final
var conn = mysql.createConnection({
   host: "localhost" ,
   user: "sarahovey",
   database: 'sctips'
});

conn.connect(function(err){
   if(err){
       console.log(err);
   } 
   console.log("Connected!");
});

app.get("/", function(req,res){
    var q = 'SELECT * FROM tips';
    conn.query(q, function(err, results){
       if(err){
           console.log(err);
       } 
    //   var num = Math.floor(Math.random()*results.length);
    //   var message = results[num].tip;
    //   res.send(message);
    res.render("home",{results:results});
    
    });
});

//Listener
// app.listen(8080, function(){
//     console.log("Server running on 8080!");
// });

app.listen(process.env.PORT, process.env.IP, function(){
    console.log("server is listening....");
})