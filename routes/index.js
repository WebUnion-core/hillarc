/**
 * ajax 服务路由集合
 */
const router = require('koa-router')();
const controllers = require('../controllers')

// user api
router.get('/user/:id', controllers.user.get);
router.post('/user/:id', controllers.user.post);

module.exports = router
