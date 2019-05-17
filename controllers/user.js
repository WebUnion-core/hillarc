const DB = require('./dbpool');

// 查询用户
async function get (ctx, next) {
    const { id } = ctx.params;
    let data;

    await DB.raw(`
        SELECT *
        FROM tadpole_server.user
        WHERE id=${id}
    `).then(res => data = res[0]);

    ctx.set({
        'Access-Control-Allow-Origin': '*',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json;charset=UTF-8'
    });

    ctx.body = JSON.stringify({
        result: 1,
        data,
    });
}

// 修改用户
async function post (ctx, next) {
    const { id } = ctx.params;
    const { body } = ctx.request;

    await DB.raw(`
        UPDATE tadpole_server.user
        SET 
            ${ body.name ? `name="${body.name}",` : '' }
            ${ body.profilePictureUrl ? `profile_picture_url="${body.profilePictureUrl}",` : '' }
            last_update_time=${(new Date()).getTime()}
        WHERE id=${id}
    `);

    ctx.set({
        'Access-Control-Allow-Origin': '*',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json;charset=UTF-8'
    });

    ctx.body = JSON.stringify({ result: 1 });
}

module.exports = {
    get,
    post,
};