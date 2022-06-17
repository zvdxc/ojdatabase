@echo off
md db
cls
title passworteingabe
set /p passwd="passwort eingeben ="
if %passwd% == 12345 goto start
cls
goto fpasswd
:start
title Datenbank
goto createdb
:start2
cd db
cls
echo 1 wert hinzufuegen 2 wert loeschen 3 werte ansehen 4 wert einlesen 5 wert ersetzen 6 beenden
choice /c 123456 /D 6 /t 10
if %errorlevel% == 1 goto c
if %errorlevel% == 2 goto d
if %errorlevel% == 3 goto a
if %errorlevel% == 4 goto e
if %errorlevel% == 5 goto er
if %errorlevel% == 6 exit
:createdb

goto start2
:c

set /p wertn="Name?  "
:c2
set /p wert="Wert?  "
cls


echo %wert% >> %wertn%
echo noch eine zeile?
choice
if %errorlevel% == 1 goto c2
cls
goto start
:d
set /p d="Wertname??"

del %d%
cls
goto start
:a
cd db
cls
dir /b
pause
cls
goto start
:e
cls
set /p ei="Name?"

type %ei%
pause
goto start




:er
set /p wertn="Name?  "
type %wertn%
echo anleitung:
echo.
echo.
ECHO 1. KOPIEREN SIE ZEILE EINS DURCH AUSWÄHLEN MIT ZIEHEN DER MAUS UND RECHTSKLICK
ECHO 2. FUEGEN SIE ZEILE EINS IN DAS FELD UNTEN EIN UND BEARBEITEN SIE SIE GEGEBENFALLS
ECHO 3. ENTER!!!
ECHO 4. SCHRITTE FUER ALLE ANDEREN ZEILEN WIEDERHOLEN
ECHO 5. AM ENDE "ichbinfertig" eingeben (ohne anfuerungszeichen)
ECHO ANFANGEN?
choice
if %errorlevel% == 1 goto er1
goto start
:er1
del %wertn%
:er2
set /p add=""
if %add% == ichbinfertig goto start
echo %add% >> %wertn%
goto er2


:fpasswd
echo "                                                                                                                   ,_____________________.                                                                                                                "
echo "                                                                                                     ______JNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNL_____                                                                                                     "
echo "                                                                                           ,____NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN____                                                                                            "
echo "                                                                                     ,__NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN"""""""""""""NNNNNNNNNNNNNNNNNNNNNNNNNNNNL__.                                                                                     "
echo "                                                                                __JNNNNNNNNNNNNNNNNNNN""""""`                                 ´"""""NNNNNNNNNNNNNNNNNNNL__                                                                                "
echo "                                                                           ,_JNNNNNNNNNNNNNNN""""                                                       ´""""NNNNNNNNNNNNNNNL__                                                                           "
echo "                                                                        __NNNNNNNNNNNNN"""                                                                      """NNNNNNNNNNNNNL_.                                                                       "
echo "                                                                    ,_NNNNNNNNNNNF""                                                                                  """NNNNNNNNNNN_.                                                                    "
echo "                                                                  _JNNNNNNNNNF"`                                                                                           ""NNNNNNNNNL_                                                                  "
echo "                                                               ,_NNNNNNNNN"`                                                                                                   "4NNNNNNNN_.                                                               "
echo "                                                             ,JNNNNNNNN"`                                                                                                         "NNNNNNNNL.                                                             "
echo "                                                           ,JNNNNNNNF"                                                                                                              ´4NNNNNNNL.                                                           "
echo "                                                          JNNNNNNNF`                                                                                                                  ´4NNNNNNNL                                                          "
echo "                                                        _NNNNNNN"                                                                                                                        "NNNNNNN_                                                        "
echo "                                                      ,JNNNNNNF`                                                                                                                          ´4NNNNNNL.                                                      "
echo "                                                     ,NNNNNNN`                                                                                                                              ´NNNNNNN.                                                     "
echo "                                                    JNNNNNNF                                                                                                                                  "NNNNNNL                                                    "
echo "                                                   NNNNNNN`                                                                                                                                    ´NNNNNNL                                                   "
echo "                                                  NNNNNNF`                                                                                                                                      ´4NNNNNN.                                                 "
echo "                                                ,NNNNNNF                                                                                                                                          4NNNNNN                                                 "
echo "                                                JNNNNNF                                                                                                                                            4NNNNNN.                                               "
echo "                                               JNNNNNF                                                                                                                                              4NNNNNL                                               "
echo "                                              JNNNNNF`                                                                                                                                               4NNNNN)                                              "
echo "                                             ,NNNNNN`                                                                                                                                                ´NNNNNN.                                             "
echo "                                             NNNNNN)                                                                                                                                                  (NNNNNN                                             "
echo "                                            ,NNNNNN                                                                                                                                                    NNNNNN.                                            "
echo "                                            NNNNNN)          _                                                                                                                              ,_         ´NNNNNN                                            "
echo "                                           ,NNNNNN         ,NNN.                                                                                                                           JNNN.        NNNNNN.                                           "
echo "                                           (NNNNNF        (NNNNNN.                                                                                                                       ,NNNNNN.       (NNNNN)                                           "
echo "                                           JNNNNN)       ,NNNNNN"                                                                                                                         4NNNNNN       ´NNNNNN                                           "
echo "                                           NNNNNN`       (NNNNN)                                                                                                                           4NNNNN)       NNNNNN                                           "
echo "                                           NNNNNN        (NNNNN)                                                                                                                           (NNNNN)       NNNNNN)                                          "
echo "                                           NNNNNN        (NNNNN)                                                                                                                           (NNNNN)       NNNNNN)                                          "
echo "                                           NNNNNN        (NNNNN)                                                                                                                           JNNNNN)       NNNNNN)                                          "
echo "                                           4NNNNN)       (NNNNNL                                                                                                                           NNNNNN        NNNNNN)                                          "
echo "                                           (NNNNN)       ´NNNNNN                                                                                                                          ,NNNNNN        NNNNNN)                                          "
echo "                                           (NNNNNN        NNNNNN.                                                                                                                         JNNNNN)        NNNNNN`                                          "
echo "                                           ´NNNNNN        (NNNNNN                                                                                                                        ,NNNNNN`       ,NNNNNN                                           "
echo "                                            4NNNNN)        4NNNNNL                                                                                                                       JNNNNNF        (NNNNNF                                           "
echo "                                            ´NNNNNN        ´NNNNNN.                                                                                                                     JNNNNNN         NNNNNN`                                           "
echo "                                             NNNNNN.        (NNNNNN                                                                                                                    ,NNNNNN`        ,NNNNNN                                            "
echo "                                             (NNNNNN         4NNNNN)                                                                                                                   JNNNNNF         JNNNNN)                                            "
echo "                                              NNNNNN)        ´NNNNNN                                                                                                                  ,NNNNNN         (NNNNNN                                             "
echo "                                              ´NNNNNN.        4NNNNN)                                                                                                                 (NNNNN)        ,NNNNNN`                                             "
echo "                                               (NNNNNL        (NNNNN)                                                                                                                 (NNNNN)       ,NNNNNN)                                              "
echo "                                                4NNNNNL       (NNNNN)                       ,________NNNNNNN__                               _JNNNNNNN________.                       (NNNNN)       NNNNNNF                                               "
echo "                                                ´NNNNNNL      (NNNNN)            ____NNNNNNNNNNNNNNNNNNNNNNNNNN_                          ,JNNNNNNNNNNNNNNNNNNNNNNNNNL____            (NNNNN)     ,NNNNNNF                                                "
echo "                                                 ´NNNNNNL     (NNNNN)         _NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNL                        ,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN_         (NNNNN)    ,NNNNNNF                                                 "
echo "                                                  ´NNNNNNL    (NNNNN)       JNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN)                       JNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN_       (NNNNN)   _NNNNNNF                                                  "
echo "                                                   ´NNNNNNL.  JNNNNN)     ,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN                      (NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNL      (NNNNN) ,JNNNNNN`                                                   "
echo "                                                    ´4NNNNNN. NNNNNN      JNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN)                     (NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNL     ´NNNNNN_NNNNNNN`                                                    "
echo "                                                      4NNNNNNNNNNNNF     (NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN`                     (NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN.     NNNNNNNNNNNNF                                                      "
echo "                                                       "NNNNNNNNNNN)     (NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF                      ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN)     (NNNNNNNNNF`                                                       "
echo "                                                        ´4NNNNNNNNN`     ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF`                       ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN      (NNNNNNNN"                                                         "
echo "                                                          ´NNNNNNNF       ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN`                         ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN`       NNNNNNF                                                           "
echo "                                                            NNNNNN`        4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF                            ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN`        (NNNNNL                                                           "
echo "                  ,__NNL__.                                ,NNNNNN          4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF                               4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF          NNNNNN                               __NNNNNNN__                 "
echo "                _JNNNNNNNNNNL_                             JNNNNN)           4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNN`                                 4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF           4NNNNN)                           ,_NNNNNNNNNNNNL.               "
echo "               JNNNNNNNNNNNNNNN_.                          NNNNNN            ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNF`                                   ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNF            ´NNNNNN                         ,JNNNNNNNNNNNNNNNN.              "
echo "              JNNNNNN"""4NNNNNNNN.                        (NNNNNN             (NNNNNNNNNNNNNNNNNNNNNNNNNN"                                       4NNNNNNNNNNNNNNNNNNNNNNNNNN`             NNNNNN                        JNNNNNNNF"   4NNNNNN              "
echo "             (NNNNNN      "4NNNNNNL                       (NNNNNN              ´4NNNNNNNNNNNNNNNNNNNNNNF`                 _.   _                  ´4NNNNNNNNNNNNNNNNNNNNNNF               NNNNNN)                     ,NNNNNNN"       4NNNNN)             "
echo "             NNNNNN`        ´NNNNNNN                      (NNNNNN                "NNNNNNNNNNNNNNNNNNNN`                 _NN)   NNL.                 4NNNNNNNNNNNNNNNNNNNF`                NNNNNN)                    ,NNNNNNF         ´NNNNNN             "
echo "            ,NNNNNN           4NNNNNL                     (NNNNNN                  ´"NNNNNNNNNNNNNNN"                ,JNNNN)   NNNNL.                 "NNNNNNNNNNNNNNN"`                  NNNNNN`                   ,JNNNNNF           NNNNNN)            "
echo "            (NNNNN)            NNNNNNL                    (NNNNNN                     ´""NNNNNNNF"`                 _NNNNNN)   NNNNNNL                  ´"NNNNNNNN""                      NNNNNN                    JNNNNNF            (NNNNN)            "
echo "            (NNNNN)            ´4NNNNNL.                   NNNNNN.                                                 JNNNNNNN)   NNNNNNNN.                                                 (NNNNNF                  ,NNNNNNF             (NNNNNN            "
echo "            (NNNNN)              4NNNNNNL_                 (NNNNNL                                               ,NNNNNNNNN)   NNNNNNNNN.                                                NNNNNN`                ,JNNNNNNF               NNNNNN.           "
echo "          ,JNNNNNN)               "NNNNNNNNL_.              NNNNNN.                                             ,JNNNNNNNNN)   NNNNNNNNNN.                                              (NNNNNN             ,_JNNNNNNNN"               ´NNNNNNN_          "
echo "        _JNNNNNNN"                  "NNNNNNNNNNL_.          (NNNNNN.                                            JNNNNNNNNNN)   NNNNNNNNNNN.                                            ,NNNNNN`         ,_JNNNNNNNNNN"                  ´4NNNNNNN_.       "
echo "      _NNNNNNNN"                      ´"NNNNNNNNNNNL_        4NNNNNN.                                          (NNNNNNNNNNN)   NNNNNNNNNNNL                                           (NNNNNN)      ,_JNNNNNNNNNNNF"                      ´4NNNNNNNL      "
echo "    ,NNNNNNNN"                            "4NNNNNNNNNNN__.    4NNNNNNL.                                        NNNNNNNNNNNN)   NNNNNNNNNNNN                                         _NNNNNNN`   ,_JNNNNNNNNNNN""`                           ´4NNNNNNN_    "
echo "   JNNNNNNN`                                  "4NNNNNNNNNNNL_  4NNNNNNNNL.                                     NNNNNNNNNNNN)   NNNNNNNNNNNN)                                    __NNNNNNNNN`,_NNNNNNNNNNNNF"                                  ´4NNNNNNL.  "
echo "  JNNNNNN"                                       ´"4NNNNNNNNNNNLJNNNNNNNNNNN___.                               NNNNNNNNNNNN)   NNNNNNNNNNNN)                              ,__JNNNNNNNNNNNNJNNNNNNNNNNN""`                                       ´NNNNNNN. "
echo " (NNNNNF`                                            ´""NNNNNNNNNNNNNNNNNNNNNNNNNNL__.                        (NNNNNNNNNNNN)   NNNNNNNNNNNNN                         __JNNNNNNNNNNNNNNNNNNNNNNNNNN""                                              4NNNNNN "
echo " NNNNNN)                                                 ´""NNNNNNNNNNNNNNNNNNNNNNNNNNNL_                     ´NNNNNNNNNNNN)   NNNNNNNNNNNNF                      _JNNNNNNNNNNNNNNNNNNNNNNNNNN""`                                                 JNNNNN) "
echo " ´NNNNNNNL___.     ,_____________.                            ""NNNNNNNNNNNNNNNNNNNNNNNNNNL_                   NNNNNNNNNNNF`   4NNNNNNNNNNN)                  ,_NNNNNNNNNNNNNNNNNNNNNNNNNN""                             ____NNNNN____.    _____JNNNNNNN` "
echo "  ´NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNL_.                            ""NNNNNNNNNNNL ´NNNNNNNNNNNL.                4NNNNNNNNN"      ´NNNNNNNNNN                 ,JNNNNNNNNNN" ,NNNNNNNNNNN"`                             __NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF`  "
echo "    ""NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNL__                            ""4NNNNNNNL ´NNN"NNNNNNNNL                4NNNNNN"          "4NNNNNN`               ,JNNNNNNNNNNN` ,NNNNNNNN""                            ,__NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN"`    "
echo "        """NNNNNNNNNNF"""""""""4NNNNNNNNNNNN__                            ´NNNNNN. (NNL ´4NNNNNNN.               "4N"`              ´"4N"`               (NNNNNNN"`JNN)  NNNNNNF                            ,_NNNNNNNNNNNNN"""   """4NNNNNNNNNF"""        "
echo "                                 ´""NNNNNNNNNNNN__                         4NNNNNN. 4NN)  ´4NNNNNN.                                                     JNNNNNN"  (NNF  JNNNNNF                         __JNNNNNNNNNNNF"`                                 "
echo "                                      ""4NNNNNNNNNNNL_.                     4NNNNNL  NNN.   (NNNNNN.                                                   (NNNNNN`  ,NNN  ,NNNNNN`                     __NNNNNNNNNNNN""`                                     "
echo "                                          ""4NNNNNNNNNNNL_.                 ´NNNNNN. ´NNL    4NNNNNL                                                   NNNNNN)   JNN`  JNNNNN)                 ,__NNNNNNNNNNNN""`                                         "
echo "                                              ´"4NNNNNNNNNNNL__              (NNNNNL  4NN)   ´NNNNNN                                                  ,NNNNNN   (NNF  (NNNNNF              ,_JNNNNNNNNNNNF""                                              "
echo "                                                   "4NNNNNNNNNNNN_.           NNNNNN  ´NNN    NNNNNN                                                  (NNNNN)   NNN`  NNNNNN)          ,_NNNNNNNNNNNNF"`                                                  "
echo "                                                       ""NNNNNNNNNNNN__       4NNNNN)  (NNL    "NNNNN____.                                      ____JNNNNNF`   (NN)   NNNNNN       __NNNNNNNNNNNNF"`                                                      "
echo "                                                           ""NNNNNNNNNNNN__   (NNNNNL   NNN     NN)´""4NNNNNNNNNNN____________________JNNNNNNNNNNNNF""` NN)   ,NNN   (NNNNNF   _JNNNNNNNNNNNNF"                                                           "
echo "                                                               ""NNNNNNNNNNNN_JNNNNNN   (NN)    NN)   (NN   ""NNF"""4NN"""""NNF""""NNF"""4NN"    NN)    NN)   (NN)   (NNNNNLJNNNNNNNNNNNN""                                                               "
echo "                                                                   ´"4NNNNNNNNNNNNNN)   ´NNN    NN)   (NN     NN)   (NN     NN)    NN)   (NN     NN)    NN)   NNN     NNNNNNNNNNNNNNF"`                                                                   "
echo "                                                                       ""4NNNNNNNNNN     4NN)   NN)   (NN     NN)   (NN     NN)    NN)   (NN     NN)    NN)  ,NNN     NNNNNNNNNNF"`                                                                       "
echo "                                                                           ´"4NNNNNN     (NN)   NNNL_.(NN     NN)   (NN     NN)    NN)   (NN     NN),_JNNN)  (NN)     (NNNNNF"`                                                                           "
echo "                                                                             (NNNNNN      NNN   NNF"NNNNN_    NN)   (NN     NN)    NN)   (NN    _NNNNNF"NN)  JNN`     (NNNNN)                                                                             "
echo "                                                                             (NNNNNN      NNN.  NN)   4NNNNNNNNNL___(NN     NN)    NNL___JNNNNNNNNNF`   NN)  NNN      (NNNNN)                                                                             "
echo "                                                                           _JNNNNNNN      (NNL  NN)   (NN   ""NNNNNNNNNNNNNNNNNNNNNNNNNNNNNN""   NN)    NN) JNNF      JNNNNNNL_                                                                           "
echo "                                                                       __NNNNNNNNNNN       "NNN_NN)   (NN     NN)   (NN     NN)    NN)   (NN     NN)    NNLNNNF       NNNNNNNNNNNL_.                                                                      "
echo "                                                                   __NNNNNNNNNNNNNNN)        "NNNNL   (NN     NN)   (NN     NN)    NN)    NN     NN)   _NNNN"`        NNNNNNNNNNNNNNNN__                                                                  "
echo "                                                               ,_JNNNNNNNNNNF"4NNNNNN          "4NNNL_JNN     NN)   (NN     NN)    NN)    NN     NNL__NNNN"`         (NNNNNF"4NNNNNNNNNNNN__                                                              "
echo "                                                           __NNNNNNNNNNNF""    NNNNNN.            ""NNNNN___  NN)   (NN     NN)    NN)    NN. ___NNNNNF"`            NNNNNN`    ""NNNNNNNNNNNNL_.                                                         "
echo "                                                       __JNNNNNNNNNNN""        (NNNNNL               ´""NNNNNNNNL___JNN_    NN)    NNL____NNNNNNNN""`               ,NNNNNN         ""NNNNNNNNNNNNL_.                                                     "
echo "                                                  ,__NNNNNNNNNNNN""             NNNNNNL                    ´"""4NNNNNNNNNNNNNNNNNNNNNNNNNNN""""                    ,NNNNNN`             ´"4NNNNNNNNNNNN__                                                 "
echo "                         ,_________           __NNNNNNNNNNNNN""                 ´NNNNNN)                                 """""""""""`                             ,NNNNNNF                  ´"4NNNNNNNNNNNNL_         ,_________.                         "
echo "                    _JNNNNNNNNNNNNNNNNNL__NNNNNNNNNNNNNNF""                      ´NNNNNNL                                                                        _NNNNNNF                        ""NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNL__                    "
echo "                  ,NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN""`                           JNNNNNNN.                                                                     JNNNNNNL.                            ´"4NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN_.                 "
echo "                 (NNNNNNNNF""""""4NNNNNNNNNNNNNF""                            ,_JNNNNNNNNNN_                                                                  ,NNNNNNNNNNNL_.                            ""4NNNNNNNNNNNF"""""""4NNNNNNNNN.                "
echo "                 NNNNNN`              ´""""                               ,_JNNNNNNNNNNNNNNNN.                                                              _JNNNNNNNNNNNNNNNNL_.                               ´"`               "4NNNNNN                "
echo "                 NNNNNN                                                __NNNNNNNNNNN""´4NNNNNNL_                                                          _JNNNNNNN` "4NNNNNNNNNNN__                                                NNNNNN                "
echo "                 4NNNNNL.                                          __NNNNNNNNNNN""      "NNNNNNNN_.                                                    ,_NNNNNNNN"      ´""NNNNNNNNNNN__                                          _JNNNNNF                "
echo "                 ´NNNNNNNL.                                    ,_NNNNNNNNNNNF"            "NNNNNNNNN_.                                              __NNNNNNNNN"            ´"4NNNNNNNNNNN_.                                    ,NNNNNNNF                 "
echo "                  ´"NNNNNNNL.                              ,_JNNNNNNNNNNF"`                 "4NNNNNNNNNN___.                                  ,__JNNNNNNNNNNF`                  ´"4NNNNNNNNNNL_.                              _NNNNNNNN"                  "
echo "                     "NNNNNNNL_                        ,_JNNNNNNNNNNF"`                        "4NNNNNNNNNNNNNN________            ,______JNNNNNNNNNNNNNNF"                         ´"4NNNNNNNNNNL_.                       ,JNNNNNNNN"                    "
echo "                      ´4NNNNNNNL.                   __NNNNNNNNNNN""                              ´""NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF""                                ""NNNNNNNNNNN_.                  ,JNNNNNNNF"                      "
echo "                         "NNNNNNN)                ,NNNNNNNNNN""                                       ´"""NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNF"""                                         ""NNNNNNNNNL.                NNNNNNN"`                        "
echo "                           "NNNNNN               _NNNNNNNF"`                                                 ´"""""4NNNNNNNNNNNNNNNNNNN""""""                                                  ´"4NNNNNNN_              (NNNNNF`                          "
echo "                            4NNNNN)            ,JNNNNNN"                                                                                                                                           4NNNNNNL             (NNNNN)                           "
echo "                            (NNNNNL           ,NNNNNNF`                                                                                                                                             ´NNNNNNL            NNNNNN)                           "
echo "                            (NNNNNN          ,NNNNNNF                                                                                                                                                ´4NNNNNL           NNNNNN)                           "
echo "                             NNNNNN         _NNNNNNF                                                                                                                                                  ´NNNNNNL          NNNNNN                            "
echo "                             NNNNNN.      ,JNNNNNN"                                                                                                                                                     NNNNNNN_       JNNNNNF                            "
echo "                             (NNNNNL    ,JNNNNNNF`                                                                                                                                                       4NNNNNNNL_   ,NNNNNN                             "
echo "                              NNNNNNN_JNNNNNNNN"                                                                                                                                                          ´4NNNNNNNNLJNNNNNN`                             "
echo "                              ´4NNNNNNNNNNNNN"                                                                                                                                                              ´"NNNNNNNNNNNNN"                              "
echo "                                ´4NNNNNNNNF"                                                                                                                                                                   ´4NNNNNNNN"                                "
echo "                                   ´""""                                                                                                                                                                           """`                                   "
echo falsches passwort!
echo maximiert hochscrollen und dabei keinen herzinfakt bekommen!
echo falls sie es nicht erkennen, es soll ein totenkopf sein (liegt nicht an ihnen, sondern an der bildschirmgroesse)
:fpasswdl
color 4f
timeout 1 >> NUL
color f4
timeout 1 >> NUL
goto fpasswdl