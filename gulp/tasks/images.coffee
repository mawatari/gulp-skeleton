gulp = require('gulp')
imagemin = require('gulp-imagemin')
size = require('gulp-size')
config = require('../config').images

gulp.task 'images', ['clean:images'], ->
  gulp.src(config.src)
  .pipe(imagemin(config.imagemin))
  .pipe(gulp.dest(config.dest))
  .pipe(size(title: 'images'))
