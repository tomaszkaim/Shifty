var express = require('express');
var router = express.Router();
var oracledb = require('oracledb');

/* Get for all countries */
router.get('/', function(req, res) {
  oracledb.getConnection(
    {
      user          : "shifty_app",
      password      : "shifty_password",
      connectString : "192.168.56.131/xepdb1"
    },
    function(err, connection)
    {
      if (err) { 
        res.status(500).send({'error':err});
      } else {
        connection.execute(
          "SELECT * FROM shifty.holidays",
          function(err, result)
          {
            if (err) { 
              res.status(500).send({'error':err});
            } else {
              var response = [];
              for (i=0; i<result.rows.length; i++) {
                response.push({'country_id': result.rows[i][0], 'holiday_date': result.rows[i][1], 'holiday_name': result.rows[i][2]});
              }
              res.status(200).send({'holidays': response});
            }
          });
        }
    });
});

/* Get data for specific country */
router.get('/:countryId', function(req, res) {
  countryId = req.params.countryId;
  oracledb.getConnection(
    {
      user          : "shifty_app",
      password      : "shifty_password",
      connectString : "192.168.56.131/xepdb1"
    },
    function(err, connection)
    {
      if (err) { 
        res.status(500).send({'error':err});
      } else {
        connection.execute(
          "SELECT * FROM shifty.holidays WHERE country_id=:1", [countryId],
          function(err, result)
          {
            if (err) { 
              res.status(500).send({'error':err});
            } else {
              var response = [];
              for (i=0; i<result.rows.length; i++) {
                response.push({'country_id': result.rows[i][0], 'holiday_date': result.rows[i][1], 'holiday_name': result.rows[i][2]});
              }
              res.status(200).send({'holidays': response});
            }
          });
        }
    });
});


module.exports = router;