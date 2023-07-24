const { watch, src, dest } = require("gulp");
const browserSync = require("browser-sync").create();
const concat = require("gulp-concat");
const settings = require("./settings");
// const cssBundle = () =>
//   src("./**/*.css")
//     .pipe(concat("styles.css"))
//     .pipe(dest(settings.themeLocation));

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
  watch("./**/*.php", reload);
  watch("./**/*.css", reload);
  // gulp.watch("./**/*.js", reload);
};
exports.watch = devWatch;
// exports.bundle = cssBundle;
