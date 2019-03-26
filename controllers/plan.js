const DB = require('./dbpool');

// GET响应
async function get (ctx, next) {
    ctx.body = 'success';
}

// POST响应
async function post (ctx, next) {
    const { request: { body } } = ctx;
    let personalPlans;
    let groupPlans;

    // 查询个人计划
    await DB.raw(`
        SELECT id,poster,participants,detail,title
        FROM hornet.plan
        WHERE type=0
        AND host_id=${body['user_id']}
    `).then(res => personalPlans = res[0]);

    // 查询小组计划
    await DB.raw(`
        SELECT id,poster,participants,detail,title
        FROM hornet.plan
        WHERE type=1
        AND total_members LIKE "%${body['user_id']}%"
    `).then(res => groupPlans = res[0]);

    // 设置响应头
    ctx.set({
        'Access-Control-Allow-Methods': 'POST',
        'Access-Control-Allow-Origin': '*',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json;charset=UTF-8'
    });

    ctx.body = JSON.stringify({
        "personal_plans": personalPlans,
        "group_plans": groupPlans
    });
}

module.exports = {
    post,
    get
};
