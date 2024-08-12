const http = require('http');
const fs = require('fs');
const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('\n[-] IP : ', (ip) => {
  http.get(`http://ipinfo.io/${ip}/geo`, (resp) => {
    let data = '';

    resp.on('data', (chunk) => {
      data += chunk;
    });
    resp.on('end', () => {
      const parsedData = JSON.parse(data);
      const formattedData = JSON.stringify(parsedData, null, 2);
      console.log(formattedData);
      fs.writeFile('./auth/sam_info_ip.dat', formattedData, { flag: 'a'}, (err) => {
        if (err) throw err;
      });
    });

  }).on("error", (err) => {
    console.log("\nErro: " + err.message);
  });

  rl.close();
});