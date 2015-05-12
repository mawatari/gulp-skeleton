gulp = require('gulp')
gulpif = require('gulp-if')
rename = require('gulp-rename')
uglify = require('gulp-uglify')
webpack = require('gulp-webpack')
config = require('../config')

gulp.task 'webpack', ['clean:scripts'], ->
  gulp.src(config.webpack.entry)
  .pipe(webpack(config.webpack))
  .pipe(gulpif(config.scripts.uglify, uglify()))
  .pipe(gulpif(config.scripts.uglify, rename(suffix: '.min')))
  .pipe gulp.dest(config.scripts.dest)
  return
