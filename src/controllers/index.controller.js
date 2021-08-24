const {Pool} = require('pg')


const pool = new Pool ({

    host: 'localhost',
    user: 'me',
    password: 'password',
    database: 'api',
    port: '5432'

})

// Obtener la lista de empleados
const getEmpleados =  async (req, res) => {
    const response = await pool.query(' SELECT E."IdEmpleado", concat(E."Nombre", E."Apellido") as Nombre_Completo, O."Puesto" FROM public."Empleados" as E, public."Ocupaciones" as O WHERE E."IdOcupacion" = O."IdOcupacion" ' );
    res.status(200).json(response.rows);
};

// Obtener un empleado por id

const getEmpleadoID = async (req, res) => {
    const id = req.params.id;
    const response = await pool.query('SELECT * FROM public."Empleados" WHERE "IdEmpleado" = $1',[id]);
    res.json(response.rows);
};

// Crear un empleado
const createEmpleados =  async (req, res) => {
    const { IdOcupacion, Nombre, Apellido } = req.body;
    const response = await pool.query('INSERT INTO public."Empleados" ("IdOcupacion","Nombre","Apellido") VALUES($1, $2, $3)',[IdOcupacion,Nombre,Apellido]);
    res.json({
        message: 'Empleado creado con exito',
        body: {
            empleado: {IdOcupacion, Nombre, Apellido}
        }
    })
};

const deleteEmpleado = async (req, res) => {
    const id = req.params.id;
    const response = await pool.query('DELETE FROM public."Empleados" WHERE "IdEmpleado" = $1',[id]);
    console.log(response);
    res.json('Empleado eliminado');
};


const updateEmpleado = async (req, res) => {

    const id = req.params.id;
    const { IdOcupacion, Nombre, Apellido } = req.body;
    const response = await pool.query('UPDATE public."Empleados" SET "IdOcupacion"=$1, "Nombre"=$2, "Apellido"=$3 WHERE "IdEmpleado" = $4',[IdOcupacion,Nombre,Apellido, id]);
    console.log(response);
    res.json('Empleado actualizado');

};


module.exports = {
    getEmpleados,
    createEmpleados,
    getEmpleadoID,
    deleteEmpleado,
    updateEmpleado
}