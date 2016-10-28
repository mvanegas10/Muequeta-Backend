# Muequeta Backend Services
Server for the cultural iOS Application Muequeta

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

Some prerequisites are:
* [PostgreSQL](https://www.postgresql.org/download/)
* [PostGIS](http://postgis.net/install/)
* [Python](https://www.python.org/downloads/)
* [Flask](http://flask.pocoo.org/docs/0.11/installation/)

### Installing

Create a new *role* in postgres:

```
CREATE ROLE Meili;
```
Create the database:

```
CREATE DATABASE muequeta
    WITH 
    OWNER = 'Meili'
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
```
```
ALTER DATABASE muequeta
    SET search_path TO '"$user", public, topology';
```
Create PostGIS extensions:
```
-- Enable PostGIS (includes raster)
CREATE EXTENSION postgis;
-- Enable Topology
CREATE EXTENSION postgis_topology;
-- Enable PostGIS Advanced 3D 
-- and other geoprocessing algorithms
-- sfcgal not available with all distributions
CREATE EXTENSION postgis_sfcgal;
-- fuzzy matching needed for Tiger
CREATE EXTENSION fuzzystrmatch;
-- rule based standardizer
CREATE EXTENSION address_standardizer;
-- example rule data set
CREATE EXTENSION address_standardizer_data_us;
-- Enable US Tiger Geocoder
CREATE EXTENSION postgis_tiger_geocoder;
```
Download [data](data/) to populate the DB. Then, populate the DB using the following command:
```
psql -U admin -f data.sql muequeta
```

## Deployment
In order to deploy the server, run the flask app.
```
export FLASK_APP=server.py
```
And run:
```
flask run
```
## Authors
<!-- Contributors table START -->
| [![Jairo Bernal](https://avatars.githubusercontent.com/jibernal27?s=10000000)<br /><sub>Jairo Bernal</sub>](https://github.com/jibernal27)<br /> | [![Meili Vanegas](https://avatars.githubusercontent.com/mvanegas10?s=5)<br /><sub>Meili Vanegas</sub>](https://github.com/mvanegas10)<br /> |
| :---: | :---: |

<!-- Contributors table END -->

