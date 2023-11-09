echo const http = require('http'); > serveur.js
echo const fs = require('fs'); >> serveur.js
echo >> serveur.js
echo const server = http.createServer((req, res) => { >> serveur.js
echo   fs.readFile('index.html', (err, data) => { >> serveur.js
echo     if (err) { >> serveur.js
echo       res.writeHead(404); >> serveur.js
echo       res.end('Not Found'); >> serveur.js
echo       return; >> serveur.js
echo     } >> serveur.js
echo     res.writeHead(200, {'Content-Type': 'text/html'}); >> serveur.js
echo     res.end(data); >> serveur.js
echo   }); >> serveur.js
echo }); >> serveur.js
echo >> serveur.js
echo const port = 3000; >> serveur.js
echo server.listen(port, () => { >> serveur.js
echo   console.log(`Serveur en cours d'exécution sur http://localhost:${port}`); >> serveur.js
echo }); >> serveur.js
