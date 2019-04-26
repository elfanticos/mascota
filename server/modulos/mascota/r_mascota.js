'use strict'

const express = require('express'),
    ctrl      = require('./c_mascota'),
    api       = express.Router();

api
    .get('/getCombosByMascota', ctrl.getCombosByMascota)
module.exports = api;