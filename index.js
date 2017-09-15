var inquirer = require('inquirer');
var mysql = require('mysql');
var connection = mysql.createConnection({
  host: 'localhost',
  port: 8889,

  user: 'root',

  password: 'root',
  database: 'bamazon_DB',
});

inquirer
  .prompt([
    {
      type: "input",
      message: "What is the ID of the product you would like to buy?",
      name: "id",
    },
    {
      type: "input",
      message: "How many would you like to buy?",
      name: "qty",
        }
  ]).then (function(res){

    connection.connect(function(err){
      if (err) {
        return console.log(err);
      }

      connection.query("SELECT * FROM item_id", function(err, res){
        if (err){
          return console.log(err);
        }
        // console.log(res);

      });

    writeTable();

    });

    function writeTable(){
      var create = "INSERT INTO inventory (item, price, itemCondition) VALUES ?";
      var values = [
        [res.item, res.starting, res.condition]

      ];
      connection.query(create, [values] ,function (err, result) {
        if (err) throw err;
        console.log("Number of records inserted: " + result.affectedRows);
        });
    }
  })
}
});
