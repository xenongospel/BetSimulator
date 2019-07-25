const path = require('path')
const _ = require('lodash')

// Global Constants
const CWD = process.cwd()

// File Constants
const BIN = path.resolve(CWD, 'Bin')

// Environment Constants
const PRODUCTION = _.isEqual(process.env.NODE_ENV, 'production') ? true : false
const STAGING = _.isEqual(process.env.NODE_ENV, 'staging') ? true : false
const DEV = PRODUCTION ? false : true

// Webpack Plugins Object
const webpackPlugins = [

]

// Webpack Environment Object
const webpackEnvironment = {

}

// Webpack Configuration Object
const webpackConfiguration = {
  context: CWD,
  entry: `${CWD}/Source/js/app.js`,
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
  }
}

module.exports = webpackConfiguration
