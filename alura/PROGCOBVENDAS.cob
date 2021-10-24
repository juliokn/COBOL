       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBVENDAS.
      ********************************************************
      * AREA DE COMENTÁRIOS
      * AUTOR: JULIO BITTENCOURT
      * OBJETIVO: crie um programa que receba (via console) duas vendas,
      * calcule e imprima a média aritmética destas vendas formatada em
      * tela com cifrão, pontos e casas decimais.
      * DATA: 24/10/2021.
      ********************************************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
         DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-VENDA1    PIC 9(6)V99 VALUE ZEROES.
       77  WRK-VENDA2    PIC 9(6)V99 VALUE ZEROES.
       77  WRK-MEDIA     PIC 9(6)V99 VALUE ZEROES.
       77 WRK-MEDIA-ED   PIC $ZZZ.ZZ9,99 VALUE ZEROES.

       PROCEDURE DIVISION.
         DISPLAY 'VALOR DA PRIMEIRA VENDA: '.
         ACCEPT WRK-VENDA1.
         DISPLAY 'VALOR DA SEGUNDA VENDA: '.
         ACCEPT WRK-VENDA2.

         COMPUTE WRK-MEDIA = (WRK-VENDA1 + WRK-VENDA2)/2.
         MOVE WRK-MEDIA TO WRK-MEDIA-ED.
         DISPLAY 'MEDIA: ' WRK-MEDIA-ED.

       STOP RUN.
