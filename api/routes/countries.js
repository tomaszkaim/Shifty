var express = require('express');
var router = express.Router();
var oracledb = require('oracledb');

/* Get all countries */
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
          "SELECT * FROM shifty.countries",
          function(err, result)
          {
            if (err) { 
              res.status(500).send({'error':err});
            } else {
              var response = [];
              for (i=0; i<result.rows.length; i++) {
                response.push({'country_id': result.rows[i][0], 'country_name': result.rows[i][1]});
              }
              res.status(200).send({'countries': response});
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
          "SELECT * FROM shifty.countries WHERE country_id=:1", [countryId],
          function(err, result)
          {
            if (err) { 
              res.status(500).send({'error':err});
            } else {
              if (result.rows.length == 1) {
                res.status(200).send({'country_id': result.rows[0][0], 'country_name': result.rows[0][1]});
              } else {
                res.status(404).send({'error': 'Not found'});
              }
            }
          });
        }
    });
});


module.exports = router;