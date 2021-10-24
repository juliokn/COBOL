       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.

      **************************************************
      *  AREA DE COMENTÁRIOS
      *  PROGRAMA CRIADO P/ CURSO ALURA
      *  AUTOR: JULIO BITTENCOURT
      *  DATA: 24/10/2021
      *  OBJETIVO: TRABALHAR COM VARIÁVEL ESTRUTURADA - DATA DO SISTEMA
      *  VARIÁVEL COM NÍVEL 01, 02...
      *  DATA: DD/MM/AAAA
      **************************************************

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WRK-DATA.
         02 WRK-ANO  PIC 9(4)  VALUE ZEROES.
         02 WRK-MES  PIC 9(2)  VALUE ZEROES.
         02 WRK-DIA  PIC 9(2)  VALUE ZEROES.
       01 DSP-DATA.
         02 DSP-DIA  PIC 9(2).
         02 FILLER   PIC X VALUE '/'.
         02 DSP-MES  PIC 9(2).
         02 FILLER   PIC X VALUE '/'.
         02 DSP-ANO  PIC 9(4).


       PROCEDURE DIVISION.
            ACCEPT WRK-DATA FROM DATE YYYYMMDD.
            MOVE WRK-ANO TO DSP-ANO.
            MOVE WRK-MES TO DSP-MES.
            MOVE WRK-DIA TO DSP-DIA.

            DISPLAY DSP-DATA.
            STOP RUN.

      ******************************************************
      * É preciso especificar que é para puxar DATE YYYYMMDD.
      * DATE puxaria YYMMDD, e nossa data formatada é DD/MM/YYYY.
      * Poderia ser apenas date se nosso WRK-ANO fosse PIC 9(2).
      ******************************************************
