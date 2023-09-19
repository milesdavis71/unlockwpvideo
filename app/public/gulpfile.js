var gulp = require("gulp"),
  settings = require("./settings"),
  webpack = require("webpack"),
  browserSync = require("browser-sync").create(),
  postcss = require("gulp-postcss"),
  rgba = require("postcss-hexrgba"),
  autoprefixer = require("autoprefixer"),
  cssvars = require("postcss-simple-vars"),
  nested = require("postcss-nested"),
  cssImport = require("postcss-import"),
  mixins = require("postcss-mixins"),
  colorFunctions = require("postcss-color-function");

gulp.task("styles", function () {
  return gulp
    .src(settings.themeLocation + "css/style.css")
    .pipe(
      postcss([
        cssImport,
        mixins,
        cssvars,
        nested,
        rgba,
        colorFunctions,
        autoprefixer,
      ])
    )
    .on("error", (error) => console.log(error.toString()))
    .pipe(gulp.dest(settings.themeLocation));
});

gulp.task("scripts", function (callback) {
  webpack(require("./webpack.config.js"), function (err, stats) {
    if (err) {
      console.log(err.toString());
    }

    console.log(stats.toString());
    callback();
  });
});

function reload(done) {
  browserSync.reload();
  done();
}
devWatch = () => {
  browserSync.init({
    proxy: "https://unlockwpvideo.local",
    port: 3000,
    notify: false,
  });
  gulp.watch("./**/*.php", reload);
  gulp.watch("./**/*.css", reload);
  // gulp.watch("./**/*.js", reload);
};
exports.watch = devWatch;
