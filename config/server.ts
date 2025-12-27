import sea from 'node:sea';
let isSea = sea.isSea();

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
