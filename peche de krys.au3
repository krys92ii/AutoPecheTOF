#RequireAdmin


#include <MsgBoxConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>


HotKeySet ("{F6}", "stop")

$peche_started = 0

$array_curseur = 0
$array_rectangle = 0

$touches_neutralise = 0

$pos_curseur = 971
$pos_rectangle = 928
$pos_centre_rectangle = 928 + 35

$check_endu_poisson = 0
$last_checksum = 0

$timer = 0
$timer_started = 0

$timer_catch = 0
$timer_catch_started = 0

;mise a l'echelle
$iAppDPI = RegRead('HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics', 'AppliedDPI')
;recherche le jeux
Local $aPos = WinGetPos("[TITLE:Tower of Fantasy]")

;paramétrage résolutions plein ecran du jeux et la position du jeux et mise a l'echelle de l'ecran

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 2560 AND $aPos[3] = 1440 AND $iAppDPI = 96 Then
	$bordure_gauche = 906
	$bordure_droite = 1648
	$bordure_hauteur = 108
	$pixel_endurance_x = 841
	$pixel_endurance_y = 156
	$bouton_canne_x = 2258
	$bouton_canne_y = 1216
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1920 AND $aPos[3] = 1080 AND $iAppDPI = 96 Then
	$bordure_gauche = 676
	$bordure_droite = 1246
	$bordure_hauteur = 83
	$pixel_endurance_x = 631
	$pixel_endurance_y = 117
	$bouton_canne_x = 1702
	$bouton_canne_y = 903
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1920 AND $aPos[3] = 1080 AND $iAppDPI = 120  Then
	$bordure_gauche = 679
	$bordure_droite = 1238
	$bordure_hauteur = 83
	$pixel_endurance_x = 631
	$pixel_endurance_y = 117
	$bouton_canne_x = 1702
	$bouton_canne_y = 903
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1920 AND $aPos[3] = 1080 AND $iAppDPI = 144  Then
	$bordure_gauche = 680
	$bordure_droite = 1238
	$bordure_hauteur = 83
	$pixel_endurance_x = 630
	$pixel_endurance_y = 116
	$bouton_canne_x = 1702
	$bouton_canne_y = 903
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1680 AND $aPos[3] = 1050 AND $iAppDPI = 96 Then
	$bordure_gauche = 591
	$bordure_droite = 1091
	$bordure_hauteur = 72
	$pixel_endurance_x = 552
	$pixel_endurance_y = 102
	$bouton_canne_x = 1489
	$bouton_canne_y = 900
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1600 AND $aPos[3] = 900 AND $iAppDPI = 96 Then
	$bordure_gauche = 569
	$bordure_droite = 1030
	$bordure_hauteur = 69
	$pixel_endurance_x = 527
	$pixel_endurance_y = 98
	$bouton_canne_x = 1414
	$bouton_canne_y = 753
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1366 AND $aPos[3] = 768 AND $iAppDPI = 96 Then
	$bordure_gauche = 484
	$bordure_droite = 882
	$bordure_hauteur = 58
	$pixel_endurance_x = 448
	$pixel_endurance_y = 82
	$bouton_canne_x = 1210
	$bouton_canne_y = 644
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1280 AND $aPos[3] = 1024 AND $iAppDPI = 96 Then
	$bordure_gauche = 452
	$bordure_droite = 827
	$bordure_hauteur = 54
	$pixel_endurance_x = 420
	$pixel_endurance_y = 77
	$bouton_canne_x = 1133
	$bouton_canne_y = 909
EndIf

if  $aPos[0] = 0 AND $aPos[1] = 0 AND $aPos[2] = 1280 AND $aPos[3] = 720 AND $iAppDPI = 96 Then
	$bordure_gauche = 452
	$bordure_droite = 825
	$bordure_hauteur = 54
	$pixel_endurance_x = 420
	$pixel_endurance_y = 77
	$bouton_canne_x = 1133
	$bouton_canne_y = 604
EndIf

;paramétrage résolutions fenetre du jeux et la position du jeux et mise a l'echelle de l'ecran


if  $aPos[0] = -8 AND $aPos[1] = -36 AND $aPos[2] = 1936 AND $aPos[3] = 1124 AND $iAppDPI = 96 Then
	$bordure_gauche = 681
	$bordure_droite = 1240
	$bordure_hauteur = 83
	$pixel_endurance_x = 631
	$pixel_endurance_y = 116
	$bouton_canne_x = 1700
	$bouton_canne_y = 907
EndIf

if  $aPos[0] = -8 AND $aPos[1] = -8 AND $aPos[2] = 1936 AND $aPos[3] = 1052 AND $iAppDPI = 96 Then
    $bordure_gauche = 701
    $bordure_droite = 1217
    $bordure_hauteur = 105
    $pixel_endurance_x = 653
    $pixel_endurance_y = 137
    $bouton_canne_x = 1710
    $bouton_canne_y = 876
EndIf

if  $aPos[0] = -8 AND $aPos[1] = -31 AND $aPos[2] = 1936 AND $aPos[3] = 1119 AND $iAppDPI = 96 Then
    $bordure_gauche = 680
    $bordure_droite = 1238
    $bordure_hauteur = 83
    $pixel_endurance_x = 630
    $pixel_endurance_y = 116
    $bouton_canne_x = 1702
    $bouton_canne_y = 903
EndIf

if  $aPos[0] = -8 AND $aPos[1] = -8 AND $aPos[2] = 1936 AND $aPos[3] = 1056 AND $iAppDPI = 96 Then
    $bordure_gauche = 700
    $bordure_droite = 1218
    $bordure_hauteur = 102
    $pixel_endurance_x = 649
    $pixel_endurance_y = 131
    $bouton_canne_x = 1714
    $bouton_canne_y = 849
EndIf

if  $aPos[0] = 312 AND $aPos[1] = 122 AND $aPos[2] = 1296 AND $aPos[3] = 764 AND $iAppDPI = 96 Then
	$bordure_gauche = 775
	$bordure_droite = 1144
	$bordure_hauteur = 213
	$pixel_endurance_x = 740
	$pixel_endurance_y = 235
	$bouton_canne_x = 1450
	$bouton_canne_y = 765
EndIf

if  $aPos[0] = 112 AND $aPos[1] = -36 AND $aPos[2] = 1696 AND $aPos[3] = 1094 AND $iAppDPI = 96 Then
	$bordure_gauche = 704
	$bordure_droite = 1204
	$bordure_hauteur = 70
	$pixel_endurance_x = 671
	$pixel_endurance_y = 101
	$bouton_canne_x = 1607
	$bouton_canne_y = 896
EndIf

While 1

	$time = Number(@HOUR & @MIN)

	;if $time > 1400 Then Shutdown(5) ;désactiver si besoin

		$array_curseur=Pixelsearch($bordure_gauche, $bordure_hauteur, $bordure_droite, $bordure_hauteur, 0xFFFFFF, 20) ; 1920x1080 réso

		$array_rectangle=Pixelsearch($bordure_gauche, $bordure_hauteur, $bordure_droite, $bordure_hauteur, 0xFFB040, 20)

		if IsArray($array_curseur) then

			$peche_started = 1

			$touches_neutralise = 0

			$pos_curseur=$array_curseur[0]

		Else

			$peche_started = 0

			;consolewrite("stop" & @CRLF)

		EndIf

		if IsArray($array_rectangle) Then

			$peche_started = 1

			$pos_rectangle=$array_rectangle[0]

			$pos_centre_rectangle = $pos_rectangle + 35

		Else

			$peche_started = 0

		Endif

		if $peche_started = 1 then

			;check endurance poisson

			if $timer_started = 0 Then

				$timer_started = 1

				$timer = TimerInit()

			EndIf

			;consolewrite(PixelGetColor($pixel_endurance_x, $pixel_endurance_y) & @CRLF)

			if  timerdiff($timer) > 5000 AND PixelGetColor($pixel_endurance_x, $pixel_endurance_y) = 4802889 then

				$timer_started = 0

				if $timer_catch_started = 0 Then

					$timer_catch = TimerInit()

					$timer_catch_started = 1

				endif

				if timerdiff($timer_catch) > 3000 Then

					$timer_catch_started = 0

					$timer_catch = 0

					$timer = 0

					$timer_started = 0

					MouseClick("left", $bouton_canne_x, $bouton_canne_y, 1, 0)

					sleep(3000)

					MouseClick("left", $bouton_canne_x, $bouton_canne_y, 1, 0)

					sleep(2500)

					MouseClick("left", $bouton_canne_x, $bouton_canne_y, 1, 0)

				EndIf

			EndIf

			if $pos_centre_rectangle + 10 < $pos_curseur Then

					Send("{d up}")
					Send("{a down}")
					Send("{q down}")

			elseif $pos_centre_rectangle - 10 > $pos_curseur Then

				Send("{a up}")
				Send("{q up}")
				Send("{d down}")

			Else

				Send("{d up}")
				Send("{a up}")
				Send("{q up}")

			EndIf

		Elseif $touches_neutralise = 0 Then

			$touches_neutralise = 1

			Send("{d up}")
			Send("{a up}")
			Send("{q up}")

		EndIf

		sleep(1)

WEnd


Func stop()

	Send("{d up}")
	Send("{a up}")
	Send("{q up}")

	Exit

EndFunc

