       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ***********************************
      * AREA DE COMENT�RIOS
      * AUTHOR: JULIO BITTENCOURT
      * OBJETIVO: OPERAC�ES ARITM�TICAS.
      * DATA: 24/10/2021
      ***********************************

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NUM1      PIC 9(2) VALUE ZEROES.
       77  WRK-NUM2      PIC 9(2) VALUE ZEROES.
       77  WRK-RESUL     PIC 9(4) VALUE ZEROES.
       77  WRK-RESTO     PIC 9(2) VALUE ZEROES.
       77  WRK-RESUL-ED  PIC ZZZ.

       PROCEDURE DIVISION.

         DISPLAY 'PRIMEIRO NUMERO: '.
         ACCEPT WRK-NUM1 FROM CONSOLE.
         DISPLAY 'SEGUNDO NUMERO: '.
         ACCEPT WRK-NUM2 FROM CONSOLE.

         DISPLAY '======================'.
         DISPLAY 'PRIMEIRO NUMERO: 'WRK-NUM1.
         DISPLAY 'SEGUNDO NUMERO: 'WRK-NUM2.

         ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
         MOVE WRK-RESUL TO WRK-RESUL-ED.
         DISPLAY 'SOMA: 'WRK-RESUL-ED.

         SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
         MOVE WRK-RESUL TO WRK-RESUL-ED.
      *  Sem o sinal, o subtract gera a diferen�a
         DISPLAY 'DIFERENCA: 'WRK-RESUL-ED.

         DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
         REMAINDER WRK-RESTO.
         MOVE WRK-RESUL TO WRK-RESUL-ED.
         DISPLAY 'DIVISAO: 'WRK-RESUL-ED.
         DISPLAY 'RESTO DA DIVISAO: 'WRK-RESTO.

         MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
         MOVE WRK-RESUL TO WRK-RESUL-ED.
         DISPLAY 'MULTIPLICACAO: 'WRK-RESUL-ED.

         COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2)/2.
         MOVE WRK-RESUL TO WRK-RESUL-ED.
         DISPLAY 'MEDIA: ' WRK-RESUL-ED.

         STOP RUN.
