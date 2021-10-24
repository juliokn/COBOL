       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      ********************************************************
      * AREA DE COMENTÁRIOS
      * AUTOR: JULIO BITTENCOURT
      * OBJETIVO: UTILIZACAO DO EVALUATE
      * DATA: 24/10/2021.
      ********************************************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
         DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WRK-NOTA1   PIC 9(2)V99 VALUE ZEROES.
       77  WRK-NOTA2   PIC 9(2)V99 VALUE ZEROES.
       77  WRK-MEDIA   PIC 9(2)V99 VALUE ZEROES.

       PROCEDURE DIVISION.
       DISPLAY 'CALCULO DE MEDIA'.
       DISPLAY 'PRIMEIRA NOTA: '.
       ACCEPT WRK-NOTA1.
       DISPLAY 'SEGUNDA NOTA: '.
       ACCEPT WRK-NOTA2.

       COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2.
       DISPLAY '==================================='.
       DISPLAY 'MEDIA: 'WRK-MEDIA.

       EVALUATE WRK-MEDIA
         WHEN 6 THRU 10
           DISPLAY 'APROVADO'
         WHEN 3 THRU 5,99
           DISPLAY 'EM RECUPERACAO'
         WHEN OTHER
           DISPLAY 'REPROVADO'
         END-EVALUATE.

      **************************************************
      * OUTRA FORMA SERIA FAZER "WHEN >6" "WHEN <3"
      * O THRU/THROUGH É INCLUSIVO DOS DOIS ITENS
      **************************************************

       STOP RUN.
