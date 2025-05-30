--ADS LOSING MONEY

SELECT
    SUM("七天总销售额" - "花费") AS "七天总销售额减去花费",
    AVG("点击率")::NUMERIC(10,2) AS "平均点击率",
    AVG("总广告投资回报率")::NUMERIC(10,2) AS "平均总广告投资回报率",
    "广告组名称"
FROM mytable
GROUP BY "广告组名称"
HAVING SUM("七天总销售额" - "花费") < 0
ORDER BY SUM("七天总销售额") DESC;


SELECT
    AVG("七天的转化率")::NUMERIC(10,2);
FROM mytable
GROUP BY "广告组名称"
HAVING SUM("七天总销售额" - "花费") < 0
ORDER BY SUM("七天总销售额") DESC;