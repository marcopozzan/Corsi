
--Creazione della sqlsat921.SalesByCustomerAndYear
--DROP sqlsat921.SalesByCustomerAndYear
SELECT Date.[CalendarYear],
	   Sales.CustomerKey,
       SUM(sales.quantity) AS SumOfQuantity
--INTO sqlsat921.SalesByCustomerAndYear
FROM [sqlsat921].[Sales] AS sales
    LEFT OUTER JOIN [sqlsat921].Date AS Date
        ON sales.[DateKey] = Date.[DateKey]
GROUP BY Date.[CalendarYear],
		 Sales.CustomerKey

