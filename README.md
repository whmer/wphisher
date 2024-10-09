# WPhisher
## whmer society 👩‍💻
### Hello! ( *whmerphisher* ) A phisher program created by the Whmer && sasame society, this program has some features. Phisher from [WhatsApp, Instagram, Facebook, Tik Tok, Location]

<center>
<p align="center">
<img src="https://telegra.ph/file/28e87a69af9105010a043.png" width="100%"/>
</p>
</center>
<br>

 # Installation **[ Termux ] 🚀** 
 ## F-Droid *(Download Termux [Clicke Me](https://f-droid.org/pt_BR/packages/com.termux/))*

  - ### Installation commands

```
git clone https://github.com/whmer/wphisher.git

cd wphisher

chmod +x install.sh

bash install.sh

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
  <a href="https://github.com/" target="_blank"><img src="https://img.shields.io/badge/Github-blue?style=for-the-badge&logo=github"></a><br>


  <a href="" style="">
<img src="https://telegra.ph/file/c0a7b24585072577a9ca6.gif" width="60" height="60">
</a> 
<a href="https://github.com/whmer" style="">
<img src="https://telegra.ph/file/c7cf4045ebaa6eb885382.jpg" width="60" height="60">
</a>
<a href="https://github.com/kym-sam" style="">
<img src="https://avatars.githubusercontent.com/u/170751447?v=4" width="60" height="60">
</a>
</p>

<br>
<p align="center">&copy; 2024 whmer, version [0.2.3]</p>





