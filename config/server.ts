let isSea: boolean;
try {
  const sea = require('node:sea');
  isSea = sea.isSea();
} catch (ex) {
  isSea = false;
}

export default ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  app: {
    keys: env.array('APP_KEYS'),
  },
  logger: {
    startup: {
      enabled: !isSea, // disable start message
    },
  },
});
