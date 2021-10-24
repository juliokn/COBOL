      *Efetua soma ou multiplicação utilizando parágrafos e IF ELSE

       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Paragraphs.
       AUTHOR. Julio Bittencourt

       ENVIRONMENT DIVISION. 

       DATA DIVISION.
          WORKING-STORAGE SECTION. 
          01  ITEM-01     PIC 9(2).
          01  ITEM-02     PIC 9(2).
          01  RESULT      PIC 9(3).   
          01  OPCAO       PIC 9. 

       PROCEDURE DIVISION.
           DISPLAY 'CALCULADORA DE SOMA E MULTIPLICACAO'
           DISPLAY '1-SOMA' '2-MULTIPLICACAO'.
           ACCEPT OPCAO.

           IF OPCAO = 1
              PERFORM FAZ-SOMAS
           ELSE IF OPCAO = 2
              PERFORM FAZ-MULTIPLICACAO
           END-IF.
           STOP RUN.

          PEGA-NUMERO .
           DISPLAY 'ITEM 1: '.
              ACCEPT ITEM-01.
           DISPLAY 'ITEM 2: '.
              ACCEPT ITEM-02.

          FAZ-SOMAS .
              PERFORM PEGA-NUMERO.
              COMPUTE RESULT = ITEM-01 + ITEM-02 .
              DISPLAY RESULT.

          FAZ-MULTIPLICACAO .
              PERFORM PEGA-NUMERO.
              COMPUTE RESULT = ITEM-01 * ITEM-02.
              DISPLAY RESULT. 

              

