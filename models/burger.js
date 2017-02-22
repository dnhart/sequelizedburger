module.exports = function(sequelize, DataTypes){


var Burger = sequelize.define ("Burger", {
    id:{
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },

    burger_name: {
        type: DataTypes.STRING,
        allowNull: false,
        // validate:{
        //     is: ["^[a-z]\s'+$",'gi'],
        // }
    },

    devoured: {
        type: DataTypes.BOOLEAN,
        defaultValue: false,
        allowNull: false
    }

    // date: {
    //     type: DataTypes.DATE
    //     // allowNull: false
    // }

});

Burger.sync();
return Burger;

};
// Burger.sync();
//     selectAll: function(cb) {
//         orm.selectAll("burgers", function(res){
//             cb(res);
//         });
//     },

//     insertOne: function(cols, vals, cb) {
//         orm.insertOne("burgers", cols, vals, function(res){
//             cb(res);
//         });
//     },

//     updateOne: function(table, objColVals, condition, cb){
//         orm.updateOne("burgers", objColVals, condition, function(res){
//         cb(res);
//         });
//     }
// };

