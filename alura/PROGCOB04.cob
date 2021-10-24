       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
      ***************************************************
      * AREA DE COMENT�RIOS
      * AUTOR: JULIO BITTENCOURT
      * OBJETIVO: RECEBER NOME E SALARIO COM VIRGULA
      * CRIA��O DE VARIAVEL MASCARA PARA APRESENTA��O
      * DATA: 24/10/2021
      ***************************************************
       ENVIRONMENT DIVISION.
      * Se��o de configura��o com par�grafo SPECIAL-NAMES.
      * O separador decimal ser� a v�rgula, e n�o o ponto
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
         77 WRK-NOME       PIC X(20) VALUE SPACES.
         77 WRK-SALARIO    PIC 9(06)V99 VALUE ZEROES.
         77 WRK-SALARIO-ED PIC $ZZZ.ZZ9,99 VALUE ZEROES.

       PROCEDURE DIVISION.
           DISPLAY 'NOME: '.
           ACCEPT WRK-NOME       FROM CONSOLE.
           DISPLAY 'SALARIO: '.
           ACCEPT WRK-SALARIO    FROM CONSOLE.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.

      ************ MOSTRA DADOS ************

           DISPLAY 'NOME: ' WRK-NOME.
           DISPLAY 'SALARIO: ' WRK-SALARIO-ED.
           STOP RUN.
