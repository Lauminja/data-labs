#Royalty of each sale for each author:
CREATE TEMPORARY TABLE publications.royalty_p_sale_p_author
SELECT sales.ord_num AS 'order', authors.au_id AS 'author_id', authors.au_lname AS 'last_name', authors.au_fname AS 'first_name', titles.title_id, titles.title, titleauthor.royaltyper, SUM(titles.ytd_sales*titles.royalty/100*titleauthor.royaltyper/100) AS 'total_royalties_author_p_sale'
FROM titleauthor
RIGHT JOIN authors
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id
GROUP BY sales.ord_num, authors.au_id, authors.au_lname, authors.au_fname, titles.title_id, titles.title, titleauthor.royaltyper
ORDER BY SUM(titles.ytd_sales*titles.royalty/100*titleauthor.royaltyper/100) DESC;

#Total royalties for each title for each author:
CREATE TEMPORARY TABLE publications.royalty_p_author_p_title
SELECT author_id, last_name, first_name, title_id, title, royaltyper, SUM(total_royalties_author_p_sale) AS 'total_royalties_author_p_title'
FROM publications.royalty_p_sale_p_author
GROUP BY author_id, last_name, first_name, title_id, title, royaltyper;

#Total profits of each author with advances and total royalties of each title:
SELECT royalty_p_author_p_title.author_id, royalty_p_author_p_title.last_name, royalty_p_author_p_title.first_name, royalty_p_author_p_title.title, titles.advance*royaltyper/100 AS 'advance_author', (total_royalties_author_p_title + 'advance_author') AS 'profit'
FROM titles
RIGHT JOIN royalty_p_author_p_title
ON titles.title_id = royalty_p_author_p_title.title_id
ORDER BY 'profit' DESC
#LIMIT 3
;