from flask import Flask, jsonify, abort, make_response, request

import psycopg2

conn = psycopg2.connect("dbname=muequeta user=admin")

def disconnectTODB(conn):
	conn.close()

app = Flask(__name__)

@app.route('/households', methods=['GET'])
def get_marcas():
	cur = conn.cursor()
	cur.execute("SELECT * FROM households LIMIT 5;")
	data = cur.fetchone()
	cur.close()
	print data
	return jsonify({'households': data})

@app.route('/api/dar_marca', methods=['POST'])
def dar_marca_post():
	if not request.json or not 'Id' in request.json:
		abort(400)
	marca = {
	'Id': request.json['Id'],
	'Dato': request.json.get('Dato', "")
	}
	return jsonify({'marca': marca}), 201

@app.route('/api/dar_marca/<Id>/<Dato>', methods=['GET'])
def dar_marca_get(Id,Dato):
	marca = {
	'Id': Id,
	'Dato': Dato
	}
	return jsonify({'marca': marca}), 201

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

if __name__ == '__main__':
	app.run(host= '127.0.0.1')