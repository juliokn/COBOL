       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
      ***************************************************
      * AREA DE COMENTÁRIOS
      * AUTOR: JULIO BITTENCOURT
      * OBJETIVO: RECEBER NOME E SALARIO COM VIRGULA
      * CRIAÇÃO DE VARIAVEL MASCARA PARA APRESENTAÇÃO
      * DATA: 24/10/2021
      ***************************************************
       ENVIRONMENT DIVISION.
      * Seção de configuração com parágrafo SPECIAL-NAMES.
      * O separador decimal será a vírgula, e não o ponto
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
