module.exports = function(app, db) {
	app.get('/humidity', function(req, res) {
		spawn = require('child_process').spawn;
		temperatureVal = spawn('python', ['./python_scripts/humidity.py']);
		
		temperatureVal.stdout.on('data', function(data) {
			res.setHeader('Content-Type', 'application/json');
			res.status(200);
			res.send(JSON.stringify({ humidity : data.toString() }));
		});
	});
};
