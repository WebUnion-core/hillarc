const CONF = {
    port: '2121',
    rootPathname: '',
    serverHost: '127.0.0.1',

    /**
     * MySQL 配置
     */
    mysql: {
        host: '192.168.64.2',
        port: 3306,
        user: 'root',
        db: 'tadpole_server',
        pass: '',
        char: 'utf8mb4',
    },
};

module.exports = CONF;
