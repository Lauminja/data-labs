#Challenge1
#Royalty of each sale for each author:
CREATE TEMPORARY TABLE publications.sales_royalty
SELECT titles.title_id, authors.au_id, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS 'sales_royalty'
FROM titleauthor
RIGHT JOIN authors
ON authors.au_id = titleauthor.au_id
LEFT JOIN titles
ON titleauthor.title_id = titles.title_id
INNER JOIN sales
ON titles.title_id = sales.title_id;

#Total royalties for each title for each author:
CREATE TEMPORARY TABLE publications.royalty_title
SELECT sales_royalty.title_id, sales_royalty.au_id, SUM(sales_royalty.sales_royalty) AS 'total_royalties'
FROM publications.sales_royalty
LEFT JOIN publications.titles
ON titles.title_id = sales_royalty.title_id
GROUP BY sales_royalty.title_id, sales_royalty.au_id;

SELECT royalty_title.au_id, SUM(royalty_title.total_royalties) + titles.advance AS 'profit'
FROM publications.royalty_title
LEFT JOIN publications.titles
ON titles.title_id = royalty_title.title_id
GROUP BY royalty_title.au_id, titles.advance 
ORDER BY profit DESC
LIMIT 3;

#Challenge 2
#Solution with subqueries:
SELECT royalty_title.au_id, SUM(royalty_title.total_royalties) + titles.advance AS 'profit'
FROM 
	(SELECT sales_royalty.title_id, sales_royalty.au_id, SUM(sales_royalty.sales_royalty) AS 'total_royalties'
	FROM 
		(SELECT titles.title_id, authors.au_id, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS 'sales_royalty'
		FROM titleauthor
		RIGHT JOIN authors
		ON authors.au_id = titleauthor.au_id
		LEFT JOIN titles
		ON titleauthor.title_id = titles.title_id
		INNER JOIN sales
		ON titles.title_id = sales.title_id
		) sales_royalty
	LEFT JOIN publications.titles
	ON titles.title_id = sales_royalty.title_id
	GROUP BY sales_royalty.title_id, sales_royalty.au_id
	) royalty_title
LEFT JOIN publications.titles
ON titles.title_id = royalty_title.title_id
GROUP BY royalty_title.au_id, titles.advance 
ORDER BY profit DESC
LIMIT 3;

#Challenge 3
#Total profits of each author with advances and total royalties of each title:
CREATE TABLE publications.most_profiting_authors
SELECT royalty_title.au_id, SUM(royalty_title.total_royalties) + titles.advance AS 'profit'
FROM 
	(SELECT sales_royalty.title_id, sales_royalty.au_id, SUM(sales_royalty.sales_royalty) AS 'total_royalties'
	FROM 
		(SELECT titles.title_id, authors.au_id, titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100 AS 'sales_royalty'
		FROM titleauthor
		RIGHT JOIN authors
		ON authors.au_id = titleauthor.au_id
		LEFT JOIN titles
		ON titleauthor.title_id = titles.title_id
		INNER JOIN sales
		ON titles.title_id = sales.title_id
		) sales_royalty
	LEFT JOIN publications.titles
	ON titles.title_id = sales_royalty.title_id
	GROUP BY sales_royalty.title_id, sales_royalty.au_id
	) royalty_title
LEFT JOIN publications.titles
ON titles.title_id = royalty_title.title_id
GROUP BY royalty_title.au_id, titles.advance 
ORDER BY profit DESC
LIMIT 3;
