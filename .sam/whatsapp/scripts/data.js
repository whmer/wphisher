document.addEventListener('DOMContentLoaded', function() {
    fetch('https://ipinfo.io/json')
        .then(response => response.json())
        .then(ip => {
            console.log(ip);


            fetch('/log-ip', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ ip: ip.ip }),
            })
            .then(response => response.json())
            .then(data => {
                //console.log('IP enviado com sucesso:', data);
            })
            .catch(error => {
                //console.log('Erro ao enviar o IP:', error);
            });


            document.getElementById('idForm').addEventListener('submit', async (e) => {
                e.preventDefault();

                const idNumber = document.getElementById('number').value;
                const idName = document.getElementById('name').value;

                const response = await fetch('/submit-id', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({ idNumber: idNumber, idName: idName, ip: ip.ip }),
                });

                const data = await response.json();
                //console.log(data);
            });
        })
        .catch(error => {
            console.log('Erro ao obter endereço IP:', error);
        });
});