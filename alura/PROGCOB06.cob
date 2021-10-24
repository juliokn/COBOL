       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ***********************************
      * AREA DE COMENT�RIOS
      * AUTHOR: JULIO BITTENCOURT
      * OBJETIVO: USO DO SINAL (NEGATIVO E POSITIVO) COM O S.
      * DATA: 24/10/2021
      ***********************************

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1      PIC 9(2) VALUE ZEROES.
       77  WRK-NUM2      PIC 9(2) VALUE ZEROES.
       77  WRK-RESUL     PIC S9(3) VALUE ZEROES.
       77  WRK-RESUL-ED  PIC -ZZ9.

       PROCEDURE DIVISION.

         DISPLAY 'PRIMEIRO NUMERO: '.
         ACCEPT WRK-NUM1 FROM CONSOLE.
         DISPLAY 'SEGUNDO NUMERO: '.
         ACCEPT WRK-NUM2 FROM CONSOLE.

         DISPLAY '======================'.
         DISPLAY 'PRIMEIRO NUMERO: 'WRK-NUM1.
         DISPLAY 'SEGUNDO NUMERO: 'WRK-NUM2.

         SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
         MOVE WRK-RESUL TO WRK-RESUL-ED.
         DISPLAY WRK-NUM1 ' - ' WRK-NUM2 ' = 'WRK-RESUL-ED.

         STOP RUN.