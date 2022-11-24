import { message } from './modules/message.js';
import 'shiny';
import './modules/canvas-to-blob.js';
import './modules/d3.v3.min.js';
import './modules/d3-context-menu.js';
import './modules/dndTree.js';
import './modules/fastclick.js';
import './modules/FileSaver.js';
import './modules/foundation.min.js';
import './modules/shiny_app.js';
import './modules/svgDownload.js';
import './modules/underscore-min.js';
// import './modules/app.css';
// import './modules/d3-context-menu.css';
// import './modules/foundation.css';

// In shiny server use:
// session$sendCustomMessage('show-packer', 'hello packer!')
Shiny.addCustomMessageHandler('show-packer', (msg) => {
  message(msg);
})
