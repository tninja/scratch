
// h

def x = 1

def x2xx(x) = x * x

x2xx(3)

val sqlContext = spark

val df = sqlContext.sql(s"""
SELECT 1 AS x, 'b' AS y
UNION ALL
SELECT 2 AS x, 'a' AS y
""")

df.printSchema

df.show(false)

// flightData 2015

val flightData2015 = spark.
 read.
 option("inferSchema", "true").
 option("header", "true").
 csv("/Users/tninja/git/Spark-The-Definitive-Guide/data/flight-data/csv/2015-summary.csv")

val dataFrameWay = flightData2015.groupBy('DEST_COUNTRY_NAME).count()
dataFrameWay.explain

flightData2015.registerTempTable("flight_data_2015")
val sqlWay = spark.sql(s"""
SELECT DEST_COUNTRY_NAME, count(1)
FROM flight_data_2015
GROUP BY DEST_COUNTRY_NAME					  
""").explain

// Part II

/// Chapter 4

import org.apache.spark.sql.types._

flightData2015.schema

val df = sqlContext.sql(s"""
FROM (VALUES 
('anne', 'smith'), 
('bob', 'jones'),
('joe', 'blow'))
AS names(first, last)
""")

df.show(false)

