const express = require('express');
const path = require('path');
const morgan = require('morgan');
const mysql = require('mysql');
const myConnection = require('express-myconnection');

const app = express();

//------------------------------------------------------------------
const customerRoutes = require('./routes/inicio');

//------------------------------------------------------------------
app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

//-------------------------------------------------------------------
app.use(morgan('dev'));

app.use(express.static(path.join(__dirname, '/public')));

app.use(myConnection(mysql, {
    host: 'localhost',
    user: 'root',
    password: 'luis',
    port: 3306,
    database: 'db'
},'single'));

//midleware para desencriptar http lo obtenemos desdeelobjeto body
app.use(express.urlencoded({extended: false}));

//------------------------------------------------------------------
app.use('/', customerRoutes);


//-------------------------------------------------------------------

app.listen(app.get('port'), () => {
    console.log('Server on port 3000');
});