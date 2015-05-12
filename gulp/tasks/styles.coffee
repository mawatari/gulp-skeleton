gulp = require('gulp')
gulpif = require('gulp-if')
less = require('gulp-less')
notify = require('gulp-notify')
pleeease = require('gulp-pleeease')
plumber = require('gulp-plumber')
rename = require('gulp-rename')
size = require('gulp-size')
del = require('del')
config = require('../config').styles

gulp.task 'styles:main', ->
  gulp.src(config.src)
  .pipe(plumber({errorHandler: notify.onError('<%= error.message %>')}))
  .pipe(less())
  .pipe(pleeease(config))
  .pipe(gulpif(config.minifier, rename(suffix: '.min')))
  .pipe(size(title: 'css'))
  .pipe(gulp.dest(config.dest))

gulp.task 'styles', ['clean:styles', 'styles:main'], ->
  del config.del, (err, deletedFiles) ->
    console.log(err) if err?
#    console.log('Files deleted:', deletedFiles.join(', '))
