       IDENTIFICATION DIVISION.
       PROGRAM-ID. Palindromes.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM.
           02 DIGIT OCCURS 10 TIMES PIC X(1).
       01  I             PIC 9(2).
       01  J             PIC 9(2).
       01  LEN           PIC 9(2).
       01  IS-PALINDROME PIC 9(1) VALUE 1.

       PROCEDURE DIVISION.
       MAIN-LOGIC.
       ACCEPT NUM FROM SYSIN.

       PERFORM VARYING I FROM 1 BY 1 UNTIL I = 9
           IF DIGIT(I) NOT EQUAL SPACE THEN
               ADD 1 TO LEN
           END-IF
       END-PERFORM.

       ADD 1 TO LEN.

       PERFORM VARYING I FROM 1 BY 1 UNTIL I = LEN
           SUBTRACT I FROM LEN GIVING J
           IF DIGIT(I) NOT EQUAL DIGIT(J) THEN
               MOVE 0 TO IS-PALINDROME
           END-IF
       END-PERFORM.

       IF IS-PALINDROME = 0 THEN
           DISPLAY "false"
       ELSE
           DISPLAY "true"
       END-IF
       STOP RUN.
