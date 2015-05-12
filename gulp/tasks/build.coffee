gulp = require('gulp')
config = require('../config')

buildTasks = ['copy', 'images', 'fonts', 'styles', 'webpack']

gulp.task 'build', ['build:production'] # is alias

gulp.task 'build:production', buildTasks

gulp.task 'build:development', ['build:config:development'].concat(buildTasks)

gulp.task 'build:config:development', ->
  config.scripts.uglify = false
  config.styles.minifier = false
