const { resolve: pathResolve } = require('path')

const TFJS_PATH = pathResolve(__dirname, './tmp/tfjs-node')
const TAR_PATH = pathResolve(__dirname, 'tfjs-node.br')

console.log(TFJS_PATH);
console.log(TAR_PATH);
module.exports = { TFJS_PATH, TAR_PATH }
