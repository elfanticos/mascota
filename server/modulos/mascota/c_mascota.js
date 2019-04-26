
'use strict'

const M_mascota = require('./m_mascota');

async function getCombosByMascota(req, res) {
    try {
        res.send({msj:'hola'});
    } catch (err) {
        print_response_error(req.url, err, res);
    }
}
module.exports = {
    getCombosByMascota
};