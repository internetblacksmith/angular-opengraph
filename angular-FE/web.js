var useragent = require("express-useragent");
var express = require("express");
var gzippo = require("gzippo");
var morgan = require("morgan");
var request = require("request");
var path = require("path");
var url = require("url");
var dotenv = require("dotenv");
var config = require("./config.json");

var app = express();

dotenv.config();

app.use(morgan("dev"));
app.use(useragent.express());
app.set("view engine", "ejs");

app.use(gzippo.staticGzip("" + __dirname + "/dist/"));

app.get("*", function(req, res) {
  var id = req.originalUrl.split(/[\s/]+/).pop(-1);
  var url = req.protocol + "://" + req.get("host") + req.originalUrl;
  if (
    req.useragent["source"] ==
    "facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)"
  ) {
    request(config.BE_URL + "/posts/" + id, function(err, response, body) {
      console.log("err: ", err);
      if (err || response.statusCode !== 200) {
        return res.sendStatus(500);
      }
      // console.log("JSON: ", JSON.parse(body));
      res.render("opengraph", { post: JSON.parse(body), url: url });
    });

    // res.render("opengraph");
  } else {
    res.render(path.join(__dirname + "/dist/index.html"));
  }
});

app.listen(5000);
