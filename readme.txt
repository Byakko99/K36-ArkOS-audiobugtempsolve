[English section]

There is currently no solution to the headphone jack issue in the ArkOS - K36 (04292025) distro. by AeolusUX
The problem is that plugging in the headphones apparently triggers a mute hotkey, and the audio becomes distorted between muting and working. Personally, it even switches to the speaker (I don't know if this happens to everyone who has this problem).
I also don't know which devices this problem occurs on. The solution I want to provide is from my R35S clone, which came with ArkOS and booted from the SD card (although it deceptively appeared to have internal storage, but it won't boot without an SD card).
I understand this bug has been around for a few months (probably February).

The solution:
There's a script called mute_toggle.sh on the root partition in the root\usr\local\bin directory, which is precisely what triggers the mute. I personally don't use it, nor do I have any idea of ​​the "normal" way to use or trigger it. Since I don't have the knowledge to try to compile a version of ogage (which handles global shortcuts like raising and lowering brightness and volume, and specifically muting), what occurred to me is to comment out the entire code. This way, it will try to call the mute script, but it won't do anything, so it will never mute.

For users unfamiliar with editing files and code, I've simply added the "mute_toggle.sh" file, which you should copy and paste into your root\usr\local\bin directory, replacing the one that came with it.

P.S.: I don't know if it's this or something else I've been messing with on my console, but I have a bug where when I plug the headphones into the jack, the sound starts coming out of the speakers, and when I unplug the headphones, my console loses sound (it's probably sending the audio to the headphones, but it's impossible to tell given the irony of "listening through the headphones with the headphones unplugged"). Thanks to that problem I encountered, I also have a couple of scripts that fix it. (Personally, I never play with speakers, so I don't care if they don't work).

They're all in the tools folder.

The first script is: fixvolume_hp.sh, which, as indicated, fixes the sound and makes it play through the headphones that should be connected.

The second is: fixvolume_spk.sh, which does the same as the previous one, but in theory with the headphones unplugged so that the speakers play.

The third script is one I found in the "R36S 🕹🎮 Community" (Spanish-speaking) on ​​Telegram. I don't know who the author is, so I can quote and thank them.

It's called fix_audio_without_confirmation.sh, which also fixes the speakers.

These scripts, which are optional and can only be used if there is another audio problem, can be pasted into the "tools" folder on the respective "EASYROMS" partition we use (either SD1 or SD2). They are run in the "options" section of the console selection menu, and then in the "tools" option.


[Spanish section]

De momento no existe una solución al problema del jack de los audifonos en la distro ArkOS - K36 (04292025). de AeolusUX
El problema consiste en que al enchufar los audifonos aparentemente triggerea un hotkey de muteo, entonces el audio pasa a distorsionarse entre silenciarse y funcionar, de manera personal incluso hasta comienza a cambiarse al speaker (no se si eso les pasa a todos los que tienen ese problema). 
Tampoco se en que dispositivos nomás ocurre este problema, la solución que quiero aportar es desde mi clon R35S que traia un ArkOS y booteaba desde la sd (aunque engañosamente aparentaba traer memoria interna, pero no arranca sin ninguna sd).
Tengo entendido que este bug lleva desde hace algunos meses (febrero probablemente). 

La solucion: 
consiste en que en la partición Root en el directorio: root\usr\local\bin existe un script llamado mute_toggle.sh que justamente es el que dispara el mute, personalmente no lo uso ni tengo idea cual es la manera "normal" de usarlo o triggerearlo, y como no tengo los conocimientos para intentar compilar una versión de ogage (el encargado de los shortcuts globales como subir y bajar el brillo y el volumen y justamente mutear). lo que se me ocurrió es comentar todo el código, siendo asi que se estará intentando llamar al script de mutear pero este no hará nada, por lo tanto nunca se va a mutear.

para usuarios que no esten familiarizados con editar archivos y codigo simplemente he añadido el "mute_toggle.sh" mismo que deberan copiar y pegar en su directorio: "root\usr\local\bin" reemplazando el que venia.

Pd: no se si se sea esto u otras cosas que he estado tocando en mi consola, pero tengo un bug que hace que cuando enchufo los audifonos en el jack, empieza a sonar en los altavoces y cuando desconecto los audifonos se queda sin sonido mi consola (probablemente esté mandando el audio a los audifonos pero es imposible de saberlo dado lo irónico que es "escuchar por los audifonos con los audifonos desconectados"). gracias a ese problema que se me presentó traigo tambien un par de scripts que lo solucionan. (en lo personal nunca juego con altavoces asi que no me importa si no funcionan). 

todos están en la carpeta tools 

el primer script se trata de: fixvolume_hp.sh, que como indica, repara el sonido y hace que suene en los audifonos que deberian estar conectados.

el segundo es: fixvolume_spk.sh, que hace lo mismo que el anterior, pero en teoria con los audifonos desconectados para que suenen los altavoces.

el tercer script es uno que he conseguido en la "Comunidad R36S 🕹🎮" (hispanohablante) en telegram. desconozco quien es su autor para citarlo y agradecerle.

se llama: fix_audio_without_confirmation.sh que también sirve para arreglar los speakers. 

Estos scripts que son opcionales, solo si se presenta algun otro problema en el audio son scripts que pueden pegarse en la carpeta "tools" en nuestra respectiva partición "EASYROMS" que usemos (ya sea en la sd1 o la sd2). y se ejecutan en el apartado "opciones" en el menu de selección de consola, y luego justamente en la opción "tools".
