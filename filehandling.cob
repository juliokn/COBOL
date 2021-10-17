      *-----------------------
       IDENTIFICATION DIVISION.
      *----------------------- 
       PROGRAM-ID. FileHandling.
       AUTHOR. Julio Bittencourt.
      
      
      *-----------------------
       ENVIRONMENT DIVISION. 
      *-----------------------
       INPUT-OUTPUT SECTION. 
      *onde PRINT-LINE e ACCT-REC são os nomes internos usados aqui no programa
      *e PRTLINE e ACCTREC são os nomes externos dos datasets      
       FILE-CONTROL. 
           SELECT PRINT-LINE ASSIGN TO PRTLINE .
           SELECT ACCT-REC  ASSIGN TO ACCTREC .

      *-----------------------
       DATA DIVISION. 
      *-----------------------
       FILE SECTION. 
       FD PRINT-LINE RECORDING MODE F .
      *esses são os campos que serão impressos no novo arquivo
       01  PRINT-REC .
           05 ACCT-NO-O         PIC X(8) .
           05 ACCT-LIMIT-O      PIC $$,$$$,$$9.99 .
           05 ACCT-BALANCE-O    PIC $$,$$$,$$9.99 .
           05 LAST-NAME-O       PIC X(20) .
           05 FIRST-NAME-O      PIC X(15) .
           05 COMMENTS-O        PIC X(50) .
       
       FD ACCT-REC RECORDING MODE F .
      *esses são os campos que serão lidos no dataset em cada record
       01 ACCT-FIELDS. 
           05 ACCT-NO           PIC X(8) .
           05 ACCT-LIMIT        PIC $9(7)V99 COMP-3 .
           05 ACCT-BALANCE      PIC $9(7)V99 COMP-3 .
           05 LAST-NAME         PIC X(20) .
           05 FIRST-NAME        PIC X(15) .
           05 STREET-ADDR       PIC X(25) .
           05 CITY-COUNTY       PIC X(20) .
           05 USA-STATE         PIC X(15) .
           05 RESERVED          PIC X(7) .
           05 COMMENTS          PIC X(50) .

       WORKING-STORAGE SECTION. 
       01  LASTREC              PIC X(1).
       
      *-----------------------
       PROCEDURE DIVISION.
      *-----------------------

       OPEN-FILES.
           OPEN INPUT ACCT-REC .
           OPEN OUTPUT PRINT-LINE .  

       READ-NEXT-RECORD.
           PERFORM READ-RECORD
              PERFORM UNTIL LASTREC = 'Y'
              PERFORM WRITE-RECORD
              PERFORM READ-RECORD
              END-PERFORM 
           .

       CLOSE-STOP .
           CLOSE ACCT-REC .
           CLOSE PRINT-LINE .
           STOP RUN .

       READ-RECORD.
           READ ACCT-REC
           AT END MOVE 'Y' TO LASTREC
           END-READ.

       WRITE-RECORD.
      *transfere tudo o que foi lido para as variáveis do arquivo novo
      *e escreve eles no arquivo novo, cujo nome interno é PRINT-REC
      *e pelo arquivo JCL é linkado a um arquivo que passa a existir
           MOVE ACCT-NO         TO ACCT-NO-O.
           MOVE ACCT-LIMIT      TO ACCT-LIMIT-O.
           MOVE ACCT-BALANCE    TO ACCT-BALANCE-O .
           MOVE LAST-NAME       TO LAST-NAME-O.
           MOVE FIRST-NAME      TO FIRST-NAME-O.
           MOVE COMMENTS        TO COMMENTS-O .
           WRITE PRINT-REC. 

          


           
