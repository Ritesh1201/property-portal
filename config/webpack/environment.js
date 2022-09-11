const { environment } = require('@rails/webpacker')
const { default: Popper } = require('popper.js')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)


module.exports = environment
