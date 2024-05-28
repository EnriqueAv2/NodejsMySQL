// creamos un objeto controler
const controller = {};

controller.cargar = (req, res) => { 
    res.render('inicio', {
        
    });
};

controller.agregarcomentario = (req, res) => { 
    res.render('agregarcomentario', {
        
    });
};

controller.detallematerias = (req, res) => { 
    res.render('detallemateria', {
        
    });
};

controller.ingresar = (req, res) => {
    datos = req.body;

    req.getConnection((err, conn) => {

        conn.query('SELECT ID_Usuario from usuarios where Correo_Institucional_Usuario = ? and Contraseña_Usuario = ?',[datos.email,datos.password], (err, values) => {
            console.log(values);
            if (values.length > 0) {
                res.redirect('/menu');
            }else{
                
                res.redirect('/');

            }

        });

    })

};

controller.crearusuario = (req, res) => {
    res.render('crearusuarios', {

    });
};

controller.menu = (req, res) => {
    res.render('menu', {

    });
};

controller.materias = (req, res) => {
    req.getConnection((err, conn) => {

        conn.query('SELECT * FROM materias ORDER BY Nombre_Materias ASC', (err, values) => 
            {

                if(err){
                    res.json(err);
                }
                res.render('materias',{
                    data: values
                });
        
            });

    })
};

controller.perfildocentes = (req, res) => {

    res.render('perfildocentes');
};

controller.agregarusuario = (req, res) => {
    const data = req.body;
    console.log(data); 
    req.getConnection((err, conn) => {

        conn.query('INSERT INTO usuarios values (null,?,?,?)', [data.institucional,data.alternativo,data.password], (err, values) => {
                res.redirect('/menu');
        });

    })

};

controller.recuperar = (req, res) => {
    res.render('recuperarcuenta', {});
};

controller.docentes = (req, res) => {
    req.getConnection((err, conn) => {

        conn.query('SELECT * FROM docentes ORDER BY Nombre_Docentes ASC', (err, values) => 
            {

                if(err){
                    res.json(err);
                }
                res.render('docentes',{
                    data: values
                });
        
            });

    })
     
};

module.exports = controller;
