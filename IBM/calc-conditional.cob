      *Calculadora de soma/multiplicação, agora com conditional name.

          IDENTIFICATION DIVISION. 
          PROGRAM-ID. Conditions.
          AUTHOR. Julio Bittencourt

          ENVIRONMENT DIVISION. 
          
          DATA DIVISION. 
          WORKING-STORAGE SECTION. 
          01 VALORES   PIC 9(2).
           88 USER-INPUT VALUES ARE 1 THRU 3.
          01 NUMEROS.
           05 ITEM-1      PIC 9(5).
           05 ITEM-2      PIC 9(5).
           05 RESULTADO   PIC 9(10).

          PROCEDURE DIVISION.

           PERFORM CALCULADORA.
                        

          CALCULADORA.
           PERFORM PEGA-OPCAO.
                 IF USER-INPUT  
                    EVALUATE VALORES
                       WHEN 1
                          PERFORM FAZ-SOMA
                       WHEN 2
                          PERFORM FAZ-MULTIPLICACAO
                       WHEN 3
                          PERFORM SAI
                    END-EVALUATE
                 ELSE
                    DISPLAY 'VALOR INVÁLIDO...'
                    PERFORM CALCULADORA
                 END-IF.  

          PEGA-OPCAO.
           DISPLAY '1 SOMA'.
           DISPLAY '2 MULTIPLICACAO'.
           DISPLAY '3 SAIR'.
           ACCEPT VALORES .

          PEGA-NUMERO.
           DISPLAY 'PRIMEIRO NUMERO: '.
           ACCEPT ITEM-1 .
           DISPLAY 'SEGUNDO NUMERO: '.
           ACCEPT ITEM-2.
           
          FAZ-SOMA.
           PERFORM PEGA-NUMERO.
           COMPUTE RESULTADO = ITEM-1 + ITEM-2.
           DISPLAY 'Resultado: ', RESULTADO.
           PERFORM CALCULADORA.

          FAZ-MULTIPLICACAO.
           PERFORM PEGA-NUMERO.
           COMPUTE RESULTADO = ITEM-1 * ITEM-2.
           DISPLAY 'Resultado: ', RESULTADO.
           PERFORM CALCULADORA.

          SAI.
           DISPLAY 'SAINDO...'.
           STOP RUN.