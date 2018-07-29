module.exports = function(app, db) {
	app.get('/check', function(req, res) {
		res.setHeader('Content-Type', 'application/json');
		res.status(200);
		res.send(JSON.stringify({ status : 'ready' }));			
	});
};
