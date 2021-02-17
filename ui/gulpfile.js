const gulp = require('gulp');
const sass = require('gulp-sass');
const browserSync = require('browser-sync');

// compile sass to css
function style() {
  // 1. where my sass file
  return gulp.src('./scss/**/*.scss')
  // 2. pass that file through sass compiler
        .pipe(sass().on('error', sass.logError))
  // 3. where do I save the compiled sass?
        .pipe(gulp.dest('./css'))
        .pipe(browserSync.stream());
}

function watch() {
  browserSync.init({
    server: {
      baseDir: "./"
    }
  });
  gulp.watch('./scss/**/*.scss', style);
  gulp.watch('./*.html').on('change', browserSync.reload);
  gulp.watch('./js/**/*.js').on('change', browserSync.reload);
}

exports.style = style;
exports.watch = watch;