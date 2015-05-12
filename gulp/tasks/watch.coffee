gulp = require('gulp')
watch = require('gulp-watch')
config = require('../config').watch

gulp.task 'watch', ['build:development'], ->
  watch config.scripts, ->
    gulp.start ['webpack']
    return

  watch config.images, ->
    gulp.start ['images']
    return

  watch config.styles, ->
    gulp.start ['styles']
    return

  watch config.www, ->
    gulp.start ['copy']
    return
  return

gulp.task 'w', ['watch'] # is alias
