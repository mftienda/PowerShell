﻿#Conexión con el servidor
#Definición de funciones
Function Conectividad ($datos){
    foreach ($i in $datos) {
        $respuesta =Test-Connection $i -count 1 -Quiet
        if ($respuesta -eq "true"){
            Write-Host "$i Conexión establecida"
        }else {Write-Host "$i Error de conexión"}
    }
}
Clear-Host
Write-Host "Conectividad"
$datos = Get-Content D:\servidores.txt
Conectividad $datos

