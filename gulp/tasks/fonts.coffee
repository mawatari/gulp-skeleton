gulp = require('gulp')
size = require('gulp-size')
config = require('../config').fonts

gulp.task 'fonts', ['clean:fonts'], ->
  gulp.src(config.src)
  .pipe(gulp.dest(config.dest))
  .pipe(size(title: 'fonts'))
