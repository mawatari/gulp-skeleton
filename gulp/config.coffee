path = require('path')
dest = './build'
src = './src'
relativeSrcPath = path.relative('.', src)

module.exports =
  dest: dest
  scripts:
    src: "#{src}/coffee/**"
    dest: "#{dest}/js"
    uglify: true
  webpack:
    entry: "#{src}/coffee/app.coffee"
    output:
      filename: 'bundle.js'
    module:
      loaders: [
        {test: /\.coffee$/, loader: 'coffee-loader'}
      ]
    resolve:
      extensions: ['', '.js', '.coffee']
  copy:
    src: ["#{src}/www/index.html"]
    dest: dest
  fonts:
    src: 'node_modules/font-awesome/fonts/*'
    dest: "#{dest}/fonts/"
  styles:
    src: "#{src}/less/**/!(_)*"
    dest: "#{dest}/css/"
    del: ["#{dest}/css/*", "!#{dest}/css/*.css", "!#{dest}/css/themes"]
    autoprefixer:
      browsers: ['last 2 versions', 'ie 8', 'ios 4', 'android 2.3']
    mqpacker: true
    minifier: true
  images:
    src: "#{src}/images/**"
    dest: "#{dest}/img/"
    imagemin:
      progressive: true
      interlaced: true
  watch:
    images: "#{relativeSrcPath}/images/**"
    scripts: "#{relativeSrcPath}/coffee/**"
    styles: "#{relativeSrcPath}/less/**"
    www: "#{relativeSrcPath}/www/index.html"
