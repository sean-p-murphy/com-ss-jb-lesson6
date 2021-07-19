SELECT tbl_book_copies.noOfCopies, tbl_book.title, tbl_library_branch.branchName FROM ((tbl_book INNER JOIN tbl_book_copies ON tbl_book.bookId = tbl_book_copies.bookId) INNER JOIN tbl_library_branch ON tbl_library_branch.branchId = tbl_book_copies.branchId) WHERE title = 'The Lost Tribe' AND branchName = 'Sharpstown';

SELECT tbl_book_copies.noOfCopies, tbl_book.title, tbl_library_branch.branchName FROM ((tbl_book INNER JOIN tbl_book_copies ON tbl_book.bookId = tbl_book_copies.bookId) INNER JOIN tbl_library_branch ON tbl_library_branch.branchId = tbl_book_copies.branchId) WHERE title = 'The Lost Tribe';

SELECT tbl_borrower.name FROM tbl_borrower LEFT JOIN tbl_book_loans ON tbl_book_loans.cardNo = tbl_borrower.cardNo WHERE tbl_book_loans.cardNo IS NULL;

SELECT tbl_borrower.name FROM tbl_book_loans INNER JOIN tbl_borrower ON tbl_borrower.cardNo = tbl_book_loans.cardNo WHERE DATE(tbl_book_loans.dueDate) = CURRENT_DATE;

SELECT tbl_library_branch.branchName, COUNT(tbl_book_loans.bookId) FROM tbl_library_branch INNER JOIN tbl_book_loans ON tbl_library_branch.branchId = tbl_book_loans.branchId GROUP BY tbl_library_branch.branchName;

SELECT tbl_borrower.name, tbl_borrower.address, COUNT(tbl_book_loans.bookId) FROM tbl_borrower INNER JOIN tbl_book_loans ON tbl_borrower.cardNo = tbl_book_loans.cardNo GROUP BY tbl_borrower.cardNo HAVING COUNT(tbl_book_loans.bookId) > 5;

SELECT tbl_author.authorName, tbl_book.title, tbl_book_copies.branchId, tbl_book_copies.noOfCopies FROM ((tbl_author INNER JOIN tbl_book ON tbl_author.authorId = tbl_book.authId) INNER JOIN tbl_book_copies ON tbl_book.bookId = tbl_book_copies.bookId) WHERE tbl_book_copies.branchId = 2 AND tbl_author.authorName = 'Stephen King';