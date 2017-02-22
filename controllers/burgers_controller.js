// var express = require("express");


// var router = express.Router();
var db = require("../models");


module.exports = function(app){


// app.get("/", function(req, res) {
//   db.Burger.findAll({})
//   .then(function(dbPost){
//       //  res.json(dbPost);
 
//     console.log("selectAll consolelog"+dbPost);
//        res.render("index", dbPost);
//   })
// });

  app.get("/", function(req, res) {
    db.Burger.findAll({})
    .then(function(data) {
      // console.log(dbPost);
    var hbsObject = {
      burger: data
    };
      res.render("index", hbsObject);
    });
  });



app.post("/", function(req, res) {
      console.log(req.body);
  
  db.Burger.create({
    burger_name: req.body.burger_name
  }).then(function(data){
    // var hbsObject = {
    //   burger: data
    // };
    // res.render("index", hbsObject);
    //     console.log("create consolelog"+hbsObject);

  res.redirect("/");
    });
});  

app.put("/:id", function(req, res) {

  console.log(req.body);
    db.Burger.update(
      {
    devoured:1
    },{where:{
        id:req.params.id
    }}
      ).then(function(data) {
          res.redirect("/");
    });
  });
};

// router.put('/burgers/update/devour/:id', function(req, res) {
//     //tableName, column, ID, callback
//    models.burgers.update(
//      {
//     devoured:1
//     },{where:{
//         id:req.params.id
//     }}
//    ).then(function(){
//         res.redirect('/');
//    }) 
// });