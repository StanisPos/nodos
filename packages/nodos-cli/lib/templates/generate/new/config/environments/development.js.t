---
to: './<%= name %>/config/environments/development.js'
---
/* eslint-disable no-param-reassign */

import path from 'path';

export default async (app) => {
  app.config.logLevel = 'debug';
  app.config.cacheModules = false;
  app.config.db = {
    client: 'sqlite3',
    connection: 'db/development.sqlite3',
    entities: path.join(__dirname, '/../../app/entities'),
  };
};
