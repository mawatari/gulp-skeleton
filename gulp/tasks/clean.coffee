gulp = require 'gulp'
del = require 'del'
config = require('../config')

gulp.task('clean', del.bind(null, [config.dest]))

gulp.task('clean:images', del.bind(null, [config.images.dest]))

gulp.task('clean:scripts', del.bind(null, [config.scripts.dest]))

gulp.task('clean:styles', del.bind(null, [config.styles.dest]))

gulp.task('clean:fonts', del.bind(null, [config.fonts.dest]))
