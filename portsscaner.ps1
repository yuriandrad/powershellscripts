param($ip)
if(!$ip){
    echo "DESEC SECURITY - PORTSCAN"
    echo "MODO DE USO: .\portscan.ps1 192.168.0.1 80"
} else{
    $topports = 21,22,25,80,443,3306
try {foreach($porta in $topports){
if (Test-NetConnection $ip -Port $porta -Warning Action SilentlyContinue -Information Level Quiet) {
    echo "Porta $porta Aberta"
}} else {
    echo "Porta $porta Fechada"
}} catch{}
}    
