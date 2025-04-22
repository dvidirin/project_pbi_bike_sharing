SELECT [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
      ,[start_lat]
      ,[start_lng]
      ,[end_lat]
      ,[end_lng]
      ,[member_casual]
  FROM [BikeRideShare].[dbo].[202306-divvy-tripdata]

SELECT COUNT(*), COUNT(DISTINCT ride_id)
FROM [BikeRideShare].[dbo].[202306-divvy-tripdata]


ALTER TABLE [BikeRideShare].[dbo].[202306-divvy-tripdata]
ADD CONSTRAINT [PK_202306-divvy-tripdata_01] UNIQUE (ride_id)

UPDATE STATISTICS [BikeRideShare].[dbo].[202306-divvy-tripdata];