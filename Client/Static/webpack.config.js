// Import Modules
const path = require('path')
const _ = require('lodash')

//Import Plugin Modules
const htmlWebpackPlugin = require('html-webpack-plugin')

// Global Constants
const CWD = process.cwd()

// File Constants
const BIN = path.resolve(CWD, 'Bin')
const SRC = path.resolve(CWD, 'src')

// Environment Constants
const PRODUCTION = _.isEqual(process.env.NODE_ENV, 'production') ? true : false
const STAGING = _.isEqual(process.env.NODE_ENV, 'staging') ? true : false
const DEV = PRODUCTION ? false : true

// Webpack HTMLPluginObject
const webpackHTMLPlugin = {
  template: `${SRC}/index.html`,
  inject: true,
  chunks: [
    'index',
  ],
  filename: 'index.html'
}

// Webpack Plugins Object
const webpackPlugins = [
  new htmlWebpackPlugin(webpackHTMLPlugin)
]

// Webpack Environment Object
const webpackEnvironment = {

}

// Webpack Configuration Object
const webpackConfiguration = {
  context: CWD,
  entry: `${SRC}/js/app.js`,
  module: {},
  devtool: !PRODUCTION ? 'eval' : 'source-map',
  output: {
    path: BIN,
    filename: "client.bundle.js"
  },
  devServer: {
    contentBase: `${BIN}`,
    compress: true,
    historyApiFallback: true,
    hot: true,
    hotOnly: true,
    open: true,
    inline: true,
    port: 3000
  },
  mode: !PRODUCTION ? 'development' : 'production',
  resolve: {
    alias: {
      actions: `${CWD}/Actions`,
      configuration: `${CWD}/Configuration`,
      constants: `${CWD}/Constants`,
      handlers: `${CWD}/Handlers`,
      systems: `${CWD}/Systems`,
      utility: `${CWD}/Utility`,
    }
  },
  plugins: webpackPlugins
}

module.exports = webpackConfiguration
