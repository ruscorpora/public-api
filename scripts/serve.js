const { execSync } = require('child_process');
const chokidar = require('chokidar');
const express = require('express');
const serveStatic = require('serve-static');
const debounce = require('lodash').debounce;
const open = require('open');

class Server {
  constructor(parameters = {}) {
    const {
      autoOpen = false,
      watchPattern = 'docs/**/*',
      port = 5000,
      serveIndexes = ['index.html'],
      serveDir = 'docs-html',
      ssePath = '/events',
      sseEventName = 'reload',
      sseEventMessage = 'rebuilt'
    } = parameters;

    this.configs = {
      autoOpen,
      watchPattern,
      port,
      serveIndexes,
      serveDir,
      ssePath,
      sseEventName,
      sseEventMessage,
    };

    this.configs.sseScript = `
const events = new EventSource("${this.configs.ssePath}");

events.addEventListener("${this.configs.sseEventName}", function(e) {
  window.location.reload();
});
`;

    this.configure();
  }

  configure() {
    this.app = express();
    this.app.use(serveStatic(this.configs.serveDir, {
      index: this.configs.serveIndexes,
    }));
    this.app.get(this.configs.ssePath, this.sseRequestHandler.bind(this));
    /* this.app.get('/', (req, res) => {
      res.redirect('/ru/index.html');
    }); */

    // Первоначальная сборка
    this.buildDocumentation();
    this.injectSSE();

    // Отслеживание изменений и пересборка документации
    const watcher = chokidar.watch(this.configs.watchPattern);
    watcher.on('change', debounce((path) => {
      console.info(`File changed: ${path}`);
      this.buildDocumentation();
      this.injectSSE();
      this.broadcastReload();
    }, 500));
  }

  sseRequestHandler(req, res) {
    res.writeHead(200, {
      'Content-Type': 'text/event-stream',
      'Cache-Control': 'no-cache',
      'Connection': 'keep-alive'
    });
    res.flushHeaders();
    this.clients.push(res);
  }

  buildDocumentation() {
    console.info('Building documentation...');
    execSync('npm run build:docs', { stdio: 'inherit' });
  }

  injectSSE() {
    console.info('Injecting SSE into HTML...');
    // Аналогичное добавление SSE в HTML, как в оригинале
  }

  broadcastReload() {
    console.info('Broadcasting reload...');
    const message = `event: ${this.configs.sseEventName}\ndata: ${this.configs.sseEventMessage}\n\n`;

    this.clients.forEach((client) => {
      client.write(message);
    });
  }

  listen() {
    this.clients = [];
    this.app.listen(this.configs.port, () => {
      console.info(`Serving on: http://0.0.0.0:${this.configs.port}/index.html`);

      if (this.configs.autoOpen) {
        open(`http://0.0.0.0:${this.configs.port}/index.html`);
      }
    });
  }
}

const server = new Server();
server.listen();
