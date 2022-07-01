
--Creazione della sqlsat921.SalesByYear
--DROP sqlsat921.SalesByYear
SELECT Date.[CalendarYear],
       SUM(sales.quantity) AS SumOfQuantity
INTO sqlsat921.SalesByYear
FROM [sqlsat921].[Sales] AS sales
    LEFT OUTER JOIN [sqlsat921].Date AS Date
        ON sales.[DateKey] = Date.[DateKey]
GROUP BY Date.[CalendarYear];

