      *Utilizando um loop para escrever números em um arquivo

          IDENTIFICATION DIVISION. 
          PROGRAM-ID.  LOOPING-FILE-WR.
          AUTHOR.      Julio Bittencourt
    
          ENVIRONMENT DIVISION. 
          INPUT-OUTPUT SECTION.
          FILE-CONTROL. 
              SELECT PRINT-LINE ASSIGN TO PRTLINE.
    
          DATA DIVISION.
          FILE SECTION. 
          FD  PRINT-LINE RECORDING MODE F.
           
          01  PRINT-REC.
              05 MSG-HEADER     PIC X(15) .
              05 MSG-TO-WRITE   PIC X(2) .
    
          WORKING-STORAGE SECTION. 
          01  COUNTER  PIC 9(2) .
    
          PROCEDURE DIVISION.
    
          OPEN-FILES.
              OPEN OUTPUT PRINT-LINE.
          OPEN-FILES-END.
    
              MOVE 'THE NUMBER IS' TO MSG-HEADER OF PRINT-REC .
    
              PERFORM VARYING COUNTER FROM 01 BY 1 UNTIL COUNTER EQUAL 6
                  MOVE COUNTER TO MSG-TO-WRITE 
                  WRITE PRINT-REC IN PRINT-LINE 
              END-PERFORM .

              CLOSE PRINT-LINE.
              STOP RUN.
