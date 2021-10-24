      *Demonstrando o uso de loops

       IDENTIFICATION DIVISION. 
       PROGRAM-ID. LOOP-TIMES.
       AUTHOR. Julio Bittencourt

       ENVIRONMENT DIVISION. 

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  COUNTER   PIC 9.

       PROCEDURE DIVISION.

           DISPLAY 'SAY COUNTER 0-9'.
           ACCEPT COUNTER.
      
      *o PERFORM COUNTER TIMES vai executar exatamente COUNTER times
      *Por exemplo, se for 3, executa 3 vezes
           PERFORM COUNTER TIMES
             DISPLAY 'Hi! Just so you know, I am using PERFORM COUNTER T
      -      'IMES!'
           END-PERFORM.
      
      *Já o PERFORM <something> COUNTER TIMES vai do 0 até o valor final
      *inclusive
      *Por exemplo, se for 3, executa 4 vezes - 0, 1, 2 e 3
           PERFORM SAY-HELLO-PARAGRAPH COUNTER TIMES.

          SAY-HELLO-PARAGRAPH.
              DISPLAY 'And I am using PERFORM PARAGRAPH COUNTER TIMES!'.
          SAY-HELLO-PARAGRAPH-END.
      
      
      *Aqui PERFORM THROUGH ou THRU executa de X a Y, inclusive

           PERFORM B-PARAGRAPH THROUGH D-PARAGRAPH. 
           PERFORM A-PARAGRAPH THRU C-PARAGRAPH.
           PERFORM E-PARAGRAPH.

          A-PARAGRAPH.
           DISPLAY 'A-PARAGRAPH'.

          B-PARAGRAPH.
           DISPLAY 'B-PARAGRAPH'.

          C-PARAGRAPH.
           DISPLAY 'C-PARAGRAPH'.

          D-PARAGRAPH.
           DISPLAY 'D-PARAGRAPH'.
           
          E-PARAGRAPH.
           DISPLAY 'E-PARAGRAPH'.

      *PERFORM UNTIL executa até que uma condição seja atendida
      *aproveitei pra praticar o IF também
      
           IF COUNTER > 0
              PERFORM UNTIL COUNTER = 0
              DISPLAY 'HI! DECREASING COUNTER...'
              COMPUTE COUNTER = COUNTER - 1
              END-PERFORM
              DISPLAY 'COUNTER DECREASED: ',COUNTER
            END-IF.

           STOP RUN.