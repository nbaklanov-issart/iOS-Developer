module.exports = function(app, db) {
	app.get('/pressure', function(req, res) {
		spawn = require('child_process').spawn;
		temperatureVal = spawn('python', ['./python_scripts/barometer.py']);
		
		temperatureVal.stdout.on('data', function(data) {
			res.setHeader('Content-Type', 'application/json');
			res.status(200);
			res.send(JSON.stringify({ pressure : data.toString() }));
		});
	});
};
