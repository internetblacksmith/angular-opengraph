var localtunnel = require("localtunnel");

console.log("copy the BE url in the front end build panel to be used inside the grunt task");
console.log("to test the app plase visit the FE url with your browser");

localtunnel(5000, function(err, tunnel) {
  console.log("FE: ", tunnel.url);
});

localtunnel(4567, function(err, tunnel) {
  console.log("BE: ", tunnel.url);
});
