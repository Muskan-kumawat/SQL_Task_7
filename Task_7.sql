-- Task 7: Creating Views

-- View 1: View showing student details with their issued book count
CREATE VIEW StudentBookCount AS
SELECT Students.studentID, Students.name, Students.class, COUNT(IssuedBooks.issueID) AS BooksIssued
FROM Students
LEFT JOIN IssuedBooks ON Students.studentID = IssuedBooks.studentID
GROUP BY Students.studentID;

SELECT * FROM StudentBookCount;

-- View 2: View showing books with author names
CREATE VIEW BookAuthorDetail AS
SELECT Books.bookId, Books.title, Authors.name AS Author_Name
FROM Books
LEFT JOIN Authors ON Books.authorId = Authors.authorId;

SELECT * FROM BookAuthorDetail;
SELECT * FROM issuedbooks;
-- drop view BookAuthorDetail;


-- View 3: View for issued book details with student name, book title, and issue date
CREATE VIEW IssuedBookDetails AS
SELECT IssuedBooks.issueId, Students.name, Books.title, issuedbooks.issueDate, issuedbooks.returndate
FROM IssuedBooks
INNER JOIN Students ON issuedbooks.studentID = Students.studentId
INNER JOIN Books ON issuedbooks.bookId = Books.bookid;

SELECT * FROM IssuedBookDetails;





 
 