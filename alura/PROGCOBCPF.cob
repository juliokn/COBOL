       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBCPF.
      ***************************************************
      * AREA DE COMENTÁRIOS
      * AUTOR: JULIO BITTENCOURT
      * OBJETIVO: UTILIZAR MASCARA PARA IMPRIMIR CPF FORMATADO
      * POSSIBILIDADE 1: CRIAÇÃO DE VARIÁVEL MÁSCARA ESTRUTURADA
      * ACEITA CPF COM ZEROS À ESQUERDA
      * DATA: 24/10/2021
      ***************************************************
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-CPF.
         02 WRK-CPF-1   PIC 9(3) VALUE ZEROS.
         02 WRK-CPF-2   PIC 9(3) VALUE ZEROS.
         02 WRK-CPF-3   PIC 9(3) VALUE ZEROS.
         02 WRK-CPF-4   PIC 9(2) VALUE ZEROS.

       01 WRK-CPF-ED.
         02 WRK-CPF-ED-1   PIC 9(3).
         02 FILLER         PIC X VALUE '.'.
         02 WRK-CPF-ED-2   PIC 9(3).
         02 FILLER         PIC X VALUE '.'.
         02 WRK-CPF-ED-3   PIC 9(3).
         02 FILLER         PIC X VALUE '-'.
         02 WRK-CPF-ED-4   PIC 9(2).

       PROCEDURE DIVISION.
         DISPLAY 'CPF: '
         ACCEPT WRK-CPF FROM CONSOLE.

         MOVE WRK-CPF-1 TO WRK-CPF-ED-1.
         MOVE WRK-CPF-2 TO WRK-CPF-ED-2.
         MOVE WRK-CPF-3 TO WRK-CPF-ED-3.
         MOVE WRK-CPF-4 TO WRK-CPF-ED-4.

         DISPLAY WRK-CPF-ED.
       STOP RUN.
