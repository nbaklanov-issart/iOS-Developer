const temperatureRoutes = require('./temperature_route');
const humidityRoutes = require('./humidity_route');
const pressureRoutes = require('./pressure_route');
const checkRoutes = require('./check_route');

module.exports = function(app,  db) {
	temperatureRoutes(app, db);
	humidityRoutes(app, db);
	pressureRoutes(app, db);
	checkRoutes(app, db);
};
