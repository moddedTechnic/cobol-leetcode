       IDENTIFICATION DIVISION.
       PROGRAM-ID. TwoSum.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  LEN           PIC 9(4).
       01  NUMS.
           02 NUM OCCURS 9999 TIMES PIC 9(9).
       01  TARGET        PIC 9(9).
       01  ADDITION      PIC 9(9).
       01  I             PIC 9(4).
       01  J             PIC 9(4).
       01  SOLUTION-I    PIC 9(4).
       01  SOLUTION-J    PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-LOGIC.
           DISPLAY "NUMS:"
           PERFORM READ-NUMS
           DISPLAY "READ " LEN " NUMBERS"
           ADD 1 TO LEN

           DISPLAY "TARGET: "
           ACCEPT TARGET FROM SYSIN

           PERFORM VARYING I FROM 1 BY 1 UNTIL I = LEN
               PERFORM VARYING J FROM I BY 1 UNTIL J = LEN
                   IF I = J
                       CONTINUE
                   ELSE
                       ADD NUM(I) TO NUM(J) GIVING ADDITION
                       IF ADDITION = TARGET
                           SUBTRACT 1 FROM I
                           SUBTRACT 1 FROM J
                           DISPLAY "[" I "," J "]"
                           EXIT SECTION
                       END-IF
                   END-IF
               END-PERFORM
           END-PERFORM
           STOP RUN.

       READ-NUMS.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I = 9999
               ACCEPT NUM(I) FROM SYSIN
               IF NUM(I) = 0
                   EXIT PARAGRAPH
               END-IF
               ADD 1 TO LEN
           END-PERFORM.
       EXIT PARAGRAPH.
