CREATE OR ALTER VIEW dbo.vw_DVNConglo_TripData_AllMonths
AS
/*
_______________________________________________________________________________________
CREATED BY:		DVN Conglo Inc.
CREATED DATA:	04/20/2025
CREATED FOR:	Project for Data Analysis Portfolio
DESCRIPTION:	Returns all bike sharing data from DVN's Conglo Inc.'s travel industry.
_______________________________________________________________________________________
*/

SELECT [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
	  ,DATEDIFF(MINUTE, started_at, ended_at) AS [ride_duration_minutes]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
      ,[start_lat]
      ,[start_lng]
      ,[end_lat]
      ,[end_lng]
	  ,CASE
		WHEN NULLIF(end_lat,'') IS NOT NULL AND NULLIF(end_lng,'') IS NOT NULL
			THEN BikeRideShare.[dbo].[udf_GetDistanceinMI](start_lat,start_lng,end_lat,end_lng)
		ELSE NULL
		END AS DistanceinMiles
		,CASE
		WHEN NULLIF(end_lat,'') IS NOT NULL AND NULLIF(end_lng,'') IS NOT NULL
			THEN BikeRideShare.[dbo].[udf_GetDistanceinKM](start_lat,start_lng,end_lat,end_lng)
		ELSE NULL
		END AS DistanceinKM
      ,[member_casual]
	  ,'202304-divvy-tripdata' AS DataSource
  FROM [BikeRideShare].[dbo].[202304-divvy-tripdata]
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
	  ,DATEDIFF(MINUTE, started_at, ended_at) AS [ride_duration_minutes]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
      ,[start_lat]
      ,[start_lng]
      ,[end_lat]
      ,[end_lng]
	  ,CASE
		WHEN NULLIF(end_lat,'') IS NOT NULL AND NULLIF(end_lng,'') IS NOT NULL
			THEN BikeRideShare.[dbo].[udf_GetDistanceinMI](start_lat,start_lng,end_lat,end_lng)
		ELSE NULL
		END AS DistanceinMiles
		,CASE
		WHEN NULLIF(end_lat,'') IS NOT NULL AND NULLIF(end_lng,'') IS NOT NULL
			THEN BikeRideShare.[dbo].[udf_GetDistanceinKM](start_lat,start_lng,end_lat,end_lng)
		ELSE NULL
		END AS DistanceinKM
      ,[member_casual]
	  ,'202305-divvy-tripdata' AS DataSource
  FROM [BikeRideShare].[dbo].[202305-divvy-tripdata]
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
	  ,DATEDIFF(MINUTE, started_at, ended_at) AS [ride_duration_minutes]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
      ,[start_lat]
      ,[start_lng]
      ,[end_lat]
      ,[end_lng]
	  ,CASE
		WHEN NULLIF(end_lat,'') IS NOT NULL AND NULLIF(end_lng,'') IS NOT NULL
			THEN BikeRideShare.[dbo].[udf_GetDistanceinMI](start_lat,start_lng,end_lat,end_lng)
		ELSE NULL
		END AS DistanceinMiles
		,CASE
		WHEN NULLIF(end_lat,'') IS NOT NULL AND NULLIF(end_lng,'') IS NOT NULL
			THEN BikeRideShare.[dbo].[udf_GetDistanceinKM](start_lat,start_lng,end_lat,end_lng)
		ELSE NULL
		END AS DistanceinKM
      ,[member_casual]
	  ,'202306-divvy-tripdata' AS DataSource
  FROM [BikeRideShare].[dbo].[202306-divvy-tripdata]