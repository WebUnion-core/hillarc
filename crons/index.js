const schedule = require('node-schedule');
const articleWork = require('./article-work');

schedule.scheduleJob('* * */1 * *', function() {
    articleWork('http://www.myzaker.com/', function(res) {
        console.log(res);
    });
});
