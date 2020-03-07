select DISTINCT t.USER_ID,t.CREATED_DATE,t.AMOUNT/100 as 'AMOUNT_USD' from transactions t
join users u
on t.USER_ID=u.ID
join fx_rates fx 
ON fx.ccy = t.currency 
where t.CURRENCY='USD' and t.AMOUNT/100>=10
ORDER BY t.CREATED_DATE;
             
