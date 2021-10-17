      *Primeiros experimentos com COBOL
      
      *Divisão de identificação
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. HelloWorld.
       AUTHOR. Julio Bittencourt    

      *Divisão de ambiente
       ENVIRONMENT DIVISION. 

      *Divisão de data
       DATA DIVISION. 
      *Seção de declaração de variáveis dentro da Data Division
       WORKING-STORAGE SECTION.
      *Um valor numérico, BLANK WHEN ZERO, será tomado por espaços quand
      *o for 0
       1   MONTH-PAY      PIC 9(15)V99 
              BLANK WHEN ZERO.      
       1   NAME-USER      PIC A(20) .
       1   ANNUAL-PAY     PIC 9(25)V99 .
      *Esse tipo de valor numérico editado para display não pode ser usa
      *do em cálculos
       1   PAY-DISPLAY    PIC $zzz,zzz,zz9.99 .

      *Divisão de procedimento
       PROCEDURE DIVISION.
           DISPLAY 'TELL ME YOUR NAME' .
              ACCEPT NAME-USER.
           DISPLAY 'YOUR MONTH PAY: ' .
              ACCEPT MONTH-PAY .
           COMPUTE ANNUAL-PAY = MONTH-PAY * 12 .
           MOVE ANNUAL-PAY TO PAY-DISPLAY .
           DISPLAY 'YOUR ANNUAL PAY IS ',PAY-DISPLAY .

           STOP RUN.