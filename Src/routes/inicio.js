const express = require('express');
const router = express.Router();

const conInicio = require('../controllers/controladorInicio');

router.get('/', conInicio.cargar);
router.get('/menu', conInicio.menu);
router.get('/recuperarContra', conInicio.recuperar);
router.get('/docentes', conInicio.docentes);
router.post('/ingresar', conInicio.ingresar);
router.get('/ingresar', conInicio.ingresar);
router.get('/crearCuenta',conInicio.crearusuario);
router.post('/agregarusuario',conInicio.agregarusuario);
router.post('/crearCuenta',conInicio.agregarusuario); 
router.get('/materias',conInicio.materias);
router.get('/perfildocentes',conInicio.perfildocentes);
router.get('/detallematerias',conInicio.detallematerias);
router.get('/agregarcomentario',conInicio.agregarcomentario);

module.exports = router;