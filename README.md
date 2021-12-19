# Nook (Look-inna-Book) Online Bookstore
An online bookstore built with Node.js and PostgresSQL
## Prerequisites
1. Latest versions of Node.js and npm must be installed
2. Postgres must be installed
3. Optional: have pgAdmin installed to make database setup easier.
## How to
For all steps involving `node` and `npm` described below, ensure to `cd` into the project directory
### Install Dependencies
1. Run `npm install`

### Initialize Database
1. Create a database for the project. This can be done through pgAdmin.
2. In the `sql/ddl-dml` directory, run the provided `DDL.sql` file on the created database
3. Once the tables have been created, run the provided `all_inserts.sql` file to insert the mock data
4. Once that is done, navigate to the `sql/triggers` directory, and run the `all_triggers.sql` file to create the required triggers for the database that takes care of keeping the stock up-to-date (reducing on order and automatically reordering once reaching a given threshold)

### Connect Database to Application
1. Once the database has been initialized, create a file by the name of `.env`
2. In the file, write the database information in the following format by replacing the `<...>` with the appropriate information:
```
PGUSER = "<postgres-username>"
PGHOST = "localhost"
DATABASE = "<db-name>"
PASSWORD = "<postgres-user-password>"
PGPORT = <port the database is running on>
```

### Run Server
Ensure that the database has been initialized before running server.
#### Run server without auto-restart on changes to `.js` files
1. Run `npm start` or `npm run start`
    1.1. Optionally, you may also choose to run `node app.js`

#### Run server with auto-restart on changes to `.js` 
1. Run `npm run devstart`

### View application
1. Once the server is running, navigate to https://localhost:3000/ on the browser of choice to view the different pages
