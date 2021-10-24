          IDENTIFICATION DIVISION.
          PROGRAM-ID. ExpirDate.
          AUTHOR. Julio Bittencourt

          ENVIRONMENT DIVISION. 

          DATA DIVISION. 
          WORKING-STORAGE SECTION.
          01    YYYYMMDD        PIC 9(8).
          01    DAYSPASSED      PIC S9(9).
          
          PROCEDURE DIVISION.
      
      *----Move a data de hoje no formato YYYYMMDD para a var        
            MOVE FUNCTION CURRENT-DATE (1:8) TO YYYYMMDD.
      *----Conta os dias passados desde 1601/01/01.
            COMPUTE DAYSPASSED = FUNCTION INTEGER-OF-DATE (YYYYMMDD).
      *----Adiciona 90 dias (ou seja, 3 meses no futuro)
            ADD 90 TO DAYSPASSED.
      *----Converte a quantidade de dias em formato data novamente
            COMPUTE YYYYMMDD = FUNCTION DATE-OF-INTEGER (DAYSPASSED).
      *----Apresenta a data 3 meses no futuro
            DISPLAY 'EXPIRATION DATE: ',YYYYMMDD .
