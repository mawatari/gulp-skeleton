do ->
  'use strict'
  require('../../node_modules/bootstrap/dist/js/bootstrap.js')
  Hello = require('./components/Hello.coffee')

  hello = new Hello
  console.log hello.message
  return
