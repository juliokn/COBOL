          IDENTIFICATION DIVISION.
          PROGRAM-ID. HelloDate.

          DATA DIVISION. 
          WORKING-STORAGE SECTION. 
          01 WS-CURRENT-DATE-DATA.
           05 WS-CURRENT-DATE.
              10 WS-CURRENT-YEAR            PIC 9(4).
              10 WS-CURRENT-MONTH           PIC 9(2).
              10 WS-CURRENT-DAY             PIC 9(2).
           05 WS-CURRENT-TIME.
              10 WS-CURRENT-HOURS           PIC 9(2).
              10 WS-CURRENT-MINUTES         PIC 9(2).
              10 WS-CURRENT-SECONDS         PIC 9(2).
              10 WS-CURRENT-MILLISECONDS    PIC 9(2).

          01 HEADER.
           05 FILLER            PIC X(04) VALUE 'Year'.
           05 FILLER            PIC X(02) VALUE SPACES.
           05 FILLER            PIC X(05) VALUE 'Month'.
           05 FILLER            PIC X(02) VALUE SPACES.
           05 FILLER            PIC X(03) VALUE 'Day'.

          01 HEADER-BAR.
           05 FILLER            PIC X(16) VALUE '----------------'.

          01 INFO.
           05 CURRENT-YEAR      PIC 9(4).
           05 FILLER            PIC X(02) VALUE SPACES.
           05 CURRENT-MONTH     PIC X(5).
           05 FILLER            PIC X(02) VALUE SPACES.
           05 CURRENT-DAY       PIC 9(2).
          
          PROCEDURE DIVISION.
           DISPLAY 'HELLO, WORLD!'.
           MOVE FUNCTION CURRENT-DATE TO WS-CURRENT-DATE-DATA.
           MOVE WS-CURRENT-DAY TO CURRENT-DAY.
           MOVE WS-CURRENT-MONTH TO CURRENT-MONTH.
           MOVE WS-CURRENT-YEAR TO CURRENT-YEAR.
           DISPLAY HEADER .
           DISPLAY HEADER-BAR.
           DISPLAY INFO.
           STOP RUN.

