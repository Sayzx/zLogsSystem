zLogs System
======

The Best System logs for FiveM 1.0

-------------
Vous pouvez configurer des logs pour tout vos cotees client avec ceci

Exemple: 
```bash
TriggerServerEvent('zLogs:SendToDiscord', Name, Title, Description, Image, Webhook)

ou cotée serveur avec un export 

export.zLogsSystem:DiscordLogs(Name, Title, Description, Image, Webhook)
```

Il disposent aussi de logs déja définis:
* Connexion (_Permet d'avoir une alerte a chaque connexion d'un joueur avec son/sa (license fivem, discordid, ip ou encore xbox ou steam id) sachant qu'il sont désactivable dans la config_)
* Deconexion (_Permet d'avoir une alerte a chaque deconnexion d'un joueur avec son/sa (license fivem, discordid, ip ou encore xbox ou steam id) sachant qu'il sont désactivable dans la config_)
* Mort (_Permet d'avoir une alerte a chaque mort d'un joueur avec son/sa (license fivem, discordid, ip ou encore xbox ou steam id) sachant qu'il sont désactivable dans la config_)
* Chat (_Permet d'avoir une alerte a chaque message envoyer dans le chat avec son/sa (license fivem, discordid, ip ou encore xbox ou steam id) sachant qu'il sont désactivable dans la config_)

-------------
Vous pouvez aussi configurer des logs pour tout vos cotees client avec ceci

Exemple: 
```bash
Config = {}

zLogs = {
    Logo = '', -- Logo de votre serveur
    Image = "", -- Image de votre serveur
    WebHookAll = '', -- Webhook de votre serveur
    WebHookConexion = '', -- Webhook de votre serveur pour les logs de connexion
    WebHookOff = '', -- Webhook de votre serveur pour les logs de deconnexion
    WebHookLogs = '', -- Webhook de votre serveur pour les logs spéciaux
    WebHookMort = '', -- Webhook de votre serveur pour les logs de mort
    WebHookSpawn = '', -- Webhook de votre serveur pour les logs de spawn
    WebHookChat = '', -- Webhook de votre serveur pour les logs de chat
    Settings = {
        steam = false,
        license = false,
        discord = false,
        xbl = false,
        liveid = false,

    }
}
```

