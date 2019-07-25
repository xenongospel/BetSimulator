import gulp from 'gulp'
import bs from 'browser-sync'
import sass from 'gulp-sass'

const bsServer = bs.create()

gulp.task('browser-sync', () => {
  bsServer.init({
    server: {
      baseDir: "./src"
    }
  })
})

gulp.task('sass', () => {
  return gulp.src('scss/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('css'))
    .pipe(bsServer.reload({
      stream: true
    }))
})

gulp.task('watch', ['browser-sync'], () => {
  gulp.watch("scss/*.scss", ['sass'])
  gulp.watch("*.html").on('change', bsServer.reload)
})
