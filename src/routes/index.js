const { Router } = require('express');
const router = Router();

const { getEmpleados, createEmpleados, getEmpleadoID, deleteEmpleado, updateEmpleado } = require('../controllers/index.controller')


router.get('/empleados',getEmpleados);
router.get('/empleados/:id',getEmpleadoID);
router.post('/empleados',createEmpleados)
router.delete('/empleados/:id',deleteEmpleado)
router.put('/empleados/:id',updateEmpleado)




module.exports = router;