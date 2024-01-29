<?php

if (isset($_GET['categ_id'])) {
    $id = $_GET['categ_id'];
}

// Books ----------------------
if (isset($_GET['pgs']) && isset($_GET['pgs']) == 'books') {



    if (!isset($_GET['categ_id'])) {
        $limit = 9;
        //----------------------------------------
        if (isset($_GET["page"])) {
            $current_page1 = $_GET["page"];
        } else {
            $current_page1 = 1;
        };
        $rows = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1")->fetchColumn();
        $totalPages1 = ceil($rows / 2 / $limit);
        $button_first = "";
        $button_prev = "";
        $button_next = "";
        $button_last = "";
        $sale_button = "";

        if ($current_page1 > 3) {
            $first_page = 1;
            $button_first = "<a class='page_link' href='index.php?pgs=books&page=$first_page'><i class='fa-solid fa-angles-left'></i>
            </a>";
        }

        if ($current_page1 > 1) {
            $prev_page = $current_page1 - 1;
            $button_prev = "<a class='page_link' href='index.php?pgs=books&page=$prev_page'><i class='fa-solid fa-angle-left'></i></a>";
        }

        // for ($i = 1; $i <= $totalPages1; $i++) {
        //     if ($current_page1 != $i) {
        //         if ($i > $current_page1 - 3 && $i < $current_page1 + 3) {
        //             echo  "<a class='page_link' href='index.php?pgs=books&page=$i'>$i</a>";
        //         }
        //     } else {
        //         echo  "<a class='page_link page_strong' href='index.php?pgs=books&page=$i'>$i</a>";
        //     }
        // }

        if ($current_page1 < $totalPages1) {
            $prev_page = $current_page1 + 1;
            $button_next = "<a class='page_link' href='index.php?pgs=books&page=$prev_page'><i class='fa-solid fa-angle-right'></i></a>";
        }

        if ($current_page1 < $totalPages1 - 3) {
            $prev_page = $totalPages1;
            $button_last = "<a class='page_link' href='index.php?pgs=books&page=$totalPages1'><i class='fa-solid fa-angles-right'></i></a>";
        }
        //----------------------------------------

    }


    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 1) {

        $limit = 9;
        $stmt = $conn->query("SELECT DISTINCT COUNT(books.id)
        FROM books 
        INNER JOIN book_categories 
        ON book_categories.bk_id = books.id
        WHERE book_categories.categ_id = 1 and books.fm_id = 1");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        //echo $row_db[0];
        $total_pages = ceil($total_records / $limit);
        //echo $total_pages;
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 2) {

        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 2");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 3) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 3");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 4) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 4");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        // echo $total_records;
        $total_pages = ceil($total_records / $limit);
        // echo $total_pages;

        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 5) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 5");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 6) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 6");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }


    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 7) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 7");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 8) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 8");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 9) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 9");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 10) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 1 and book_categories.categ_id = 10");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_books = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_books .= "<a class='page-link' href='index.php?pgs=books&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }
}



// EBooks ----------------------
if (isset($_GET['pgs']) && isset($_GET['pgs']) == 'eBooks') {

   if (!isset($_GET['categ_id'])) {
        $limit = 9;
        //----------------------------------------
        if (isset($_GET["page"])) {
            $current_page1 = $_GET["page"];
        } else {
            $current_page1 = 1;
        };
        $rows = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2")->fetchColumn();
        $totalPages1 = ceil($rows / 2 / $limit);
        $button_first_ebook = "";
        $button_prev_ebook = "";
        $button_next_ebook = "";
        $button_last_ebook = "";
        $sale_button_ebook = "";

        if ($current_page1 > 3) {
            $first_page = 1;
            $button_first_ebook = "<a class='page_link' href='index.php?pgs=eBooks&page=$first_page'><i class='fa-solid fa-angles-left'></i>
            </a>";
        }

        if ($current_page1 > 1) {
            $prev_page = $current_page1 - 1;
            $button_prev_ebook = "<a class='page_link' href='index.php?pgs=eBooks&page=$prev_page'><i class='fa-solid fa-angle-left'></i></a>";
        }

        if ($current_page1 < $totalPages1) {
            $prev_page = $current_page1 + 1;
            $button_next_ebook = "<a class='page_link' href='index.php?pgs=eBooks&page=$prev_page'><i class='fa-solid fa-angle-right'></i></a>";
        }

        if ($current_page1 < $totalPages1 - 3) {
            $prev_page = $totalPages1;
            $button_last_ebook = "<a class='page_link' href='index.php?pgs=eBooks&page=$totalPages1'><i class='fa-solid fa-angles-right'></i></a>";
        }
        //----------------------------------------

    }



    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 1) {

        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 1");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 2) {

        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 2");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 3) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 3");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 4) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 4");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 5) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 5");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 6) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 6");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }


    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 7) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 7");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 8) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 8");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 9) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 9");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 10) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 2 and book_categories.categ_id = 10");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_ebooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_ebooks .= "<a class='page-link' href='index.php?pgs=eBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }
}


// AudioBooks ----------------------
if (isset($_GET['pgs']) && isset($_GET['pgs']) == 'audioBooks') {

    if (!isset($_GET['categ_id'])) {
        $limit = 9;
        //----------------------------------------
        if (isset($_GET["page"])) {
            $current_page1 = $_GET["page"];
        } else {
            $current_page1 = 1;
        };
        $rows = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3")->fetchColumn();
        $totalPages1 = ceil($rows / 2 / $limit);
        $button_first_audioBook = "";
        $button_prev_audioBook = "";
        $button_next_audioBook = "";
        $button_last_audioBook = "";
        $sale_button_audioBook = "";

        if ($current_page1 > 3) {
            $first_page = 1;
            $button_first_audioBook = "<a class='page_link' href='index.php?pgs=audioBooks&page=$first_page'><i class='fa-solid fa-angles-left'></i>
            </a>";
        }

        if ($current_page1 > 1) {
            $prev_page = $current_page1 - 1;
            $button_prev_audioBook = "<a class='page_link' href='index.php?pgs=audioBooks&page=$prev_page'><i class='fa-solid fa-angle-left'></i></a>";
        }

        if ($current_page1 < $totalPages1) {
            $prev_page = $current_page1 + 1;
            $button_next_audioBook = "<a class='page_link' href='index.php?pgs=audioBooks&page=$prev_page'><i class='fa-solid fa-angle-right'></i></a>";
        }

        if ($current_page1 < $totalPages1 - 3) {
            $prev_page = $totalPages1;
            $button_last_audioBook = "<a class='page_link' href='index.php?pgs=audioBooks&page=$totalPages1'><i class='fa-solid fa-angles-right'></i></a>";
        }
        //----------------------------------------

    }



    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 1) {

        $limit = 9;
        $stmt = $conn->query("SELECT DISTINCT COUNT(books.id)
        FROM books 
        INNER JOIN book_categories 
        ON book_categories.bk_id = books.id
        WHERE book_categories.categ_id = 1 and books.fm_id = 3");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / 2 / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 2) {

        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 2");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 3) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 3");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 4) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 4");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 5) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 5");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 6) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 6");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }


    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 7) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 7");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 8) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 8");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 9) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 9");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }

    if (isset($_GET['categ_id']) && $_GET['categ_id'] == 10) {
        $limit = 9;
        $stmt = $conn->query("SELECT COUNT(books.id)
        FROM `books` 
        INNER JOIN book_categories ON book_categories.bk_id = books.id
        WHERE books.fm_id = 3 and book_categories.categ_id = 10");
        $row_db = $stmt->fetch();
        $total_records = $row_db[0];
        $total_pages = ceil($total_records / $limit);
        $pagLink_audioBooks = "";
        for ($countpage = 1; $countpage <= $total_pages; $countpage++) {
            $pagLink_audioBooks .= "<a class='page-link' href='index.php?pgs=audioBooks&categ_id=" . $id . "&page=" . $countpage . "'>" . $countpage . "</a>";
        }
    }
}
