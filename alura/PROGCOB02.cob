       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.

      **************************************************
      *  AREA DE COMENTÁRIOS
      *  PROGRAMA CRIADO P/ CURSO ALURA
      *  AUTOR: JULIO BITTENCOURT
      *  DATA: 24/10/2021
      *  OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      **************************************************

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOME  PIC X(10) VALUE SPACES.

       PROCEDURE DIVISION.
            DISPLAY 'NOME: '.
            ACCEPT WRK-NOME FROM CONSOLE.
            DISPLAY 'HELLO, 'WRK-NOME(1:8)'!'.
            STOP RUN.
