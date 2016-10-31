from flask import Flask, jsonify, abort, make_response, request

import psycopg2

conn = psycopg2.connect("dbname=muequeta user=Meili")

app = Flask(__name__)

@app.route('/lugares', methods=['GET'])
def get_lugares():
	cur = conn.cursor()
	sql = "SELECT gid,nombre,descripcion,geom FROM lugares"
	cur.execute(sql)
	data = cur.fetchall()
	cur.close()
	return jsonify({'lugares': data})

@app.route('/lugaresCerca', methods=['POST'])
def get_lugares_cerca():
	if not request.json or not 'latitud' in request.json or not 'longitud' in request.json:
		abort(400)

	latitud = request.json["latitud"]
	longitud = request.json["longitud"]
	cur = conn.cursor()
	sql = "SELECT l.gid,l.nombre,l.descripcion FROM lugares l JOIN (SELECT ST_Buffer(ST_SetSRID(ST_Point(\'%f\',\'%f\'),4326),0.008) AS geom) b ON ST_INTERSECTS(l.geom,b.geom)" % (longitud, latitud)
	print sql
	cur.execute(sql)
	data = cur.fetchall()
	cur.close()
	return jsonify({'lugares': data})	

@app.route('/agregarLugar', methods=['POST'])
def agregar_lugar():
	nombre = request.json['nombre']
	descripcion = request.json['descripcion']
	latitude = request.json['latitud']
	longitude = request.json['longitud']

	cur = conn.cursor()
	sql = "INSERT INTO lugares (nombre,descripcion,latitud,longitud) VALUES (\'%s\', \'%s\',\'%f\', \'%f\')" % (nombre, descripcion, latitude, longitude)
	print sql
	cur.execute(sql)
	cur.close()	

	cur = conn.cursor()
	sql = "SELECT gid FROM lugares WHERE nombre = \'%s\' AND descripcion = \'%s\'" % (nombre, descripcion)
	cur.execute(sql)
	gid = cur.fetchone()
	cur.close()		

	cur = conn.cursor()
	sql = "UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(\'%f\', \'%f\'), 4326) WHERE gid = \'%d\'" % (longitude, latitude, gid[0])
	print sql
	cur.execute(sql)
	cur.close()
	conn.commit()

	cur = conn.cursor()
	sql = "SELECT gid,nombre,descripcion,geom FROM lugares WHERE nombre = \'%s\'" % (nombre)
	print sql
	cur.execute(sql)
	data = cur.fetchone()
	cur.close()

	return jsonify({'lugares': data})

@app.route('/lugares/<Id>/agregarImagen', methods=['POST'])
def agregar_imagen(Id):
	nombre = request.json['nombre']
	descripcion = request.json['descripcion']

	cur = conn.cursor()
	sql = "INSERT INTO imagenes (\"idLugar\", \"nombre\", \"descripcion\") VALUES (\'%s\', \'%s\',\'%s\')" % (Id, nombre, descripcion)
	print sql
	cur.execute(sql)
	cur.close()	

	cur = conn.cursor()
	sql = "SELECT nombre,descripcion FROM imagenes WHERE \"idLugar\" = \'%s\'" % (Id)
	print sql
	cur.execute(sql)
	data = cur.fetchall()
	cur.close()
	conn.commit()

	return jsonify({'imagenes': data})	

@app.route('/lugares/<Id>/imagenes', methods=['GET'])
def get_imagenes(Id):

	cur = conn.cursor()
	sql = "SELECT nombre,descripcion FROM imagenes WHERE \"idLugar\" = \'%s\'" % (Id)
	print sql
	cur.execute(sql)
	data = cur.fetchall()
	cur.close()

	return jsonify({'imagenes': data})	

@app.route('/lugares/<Id>/agregarVideo', methods=['POST'])
def agregar_video(Id):
	nombre = request.json['nombre']
	descripcion = request.json['descripcion']

	cur = conn.cursor()
	sql = "INSERT INTO videos (\"idLugar\", \"nombre\", \"descripcion\") VALUES (\'%s\', \'%s\',\'%s\')" % (Id, nombre, descripcion)
	print sql
	cur.execute(sql)
	cur.close()	

	cur = conn.cursor()
	sql = "SELECT nombre,descripcion FROM videos WHERE \"idLugar\" = \'%s\'" % (Id)
	print sql
	cur.execute(sql)
	data = cur.fetchall()
	cur.close()
	conn.commit()

	return jsonify({'videos': data})	

@app.route('/lugares/<Id>/videos', methods=['GET'])
def get_videos(Id):

	cur = conn.cursor()
	sql = "SELECT nombre,descripcion FROM videos WHERE \"idLugar\" = \'%s\'" % (Id)
	print sql
	cur.execute(sql)
	data = cur.fetchall()
	cur.close()

	return jsonify({'videos': data})		

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

if __name__ == '__main__':
	app.run(host= '0.0.0.0',port=8080)