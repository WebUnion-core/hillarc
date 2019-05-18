const fs = require('fs');
const path = require('path');

// 查询图片
async function get (ctx, next) {
    const { name } = ctx.params;
    const src = path.resolve(__dirname, `./../public/${name}`);

    ctx.set({
        'Content-Type': 'image/png'
    });

    ctx.body = fs.readFileSync(src);
}

// 上传图片
async function post (ctx, next) {
    const { request: { files, body } } = ctx;
    const file = files['image'];
    const src = path.resolve(__dirname, `./../public/${token}.png`);

    // 创建读写流
    const reader = fs.createReadStream(file.path);
    const writer = fs.createWriteStream(src);
    reader.pipe(writer);

    ctx.set({
        'Access-Control-Allow-Origin': '*',
        'Cache-Control': 'no-cache',
        'Content-Type': 'application/json;charset=UTF-8'
    });

    ctx.body = JSON.stringify({
        result: 1,
        url: `/file/${token}.png`,
    });
}

module.exports = {
    get,
    post,
};