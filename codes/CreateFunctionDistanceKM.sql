CREATE FUNCTION [dbo].[udf_GetDistanceinKM] 

( 

  @v_OriginLatitude DECIMAL(18,10) 

 ,@v_OrginLongitude DECIMAL(18,10) 

 ,@v_DestinationLatitude DECIMAL(18,10) 

 ,@v_DestinationLongitude DECIMAL(18,10) 

) 

RETURNS DECIMAL(18,10) 

AS 

/*Returns distance (as the crow flies) b/w two points in Km*/ 

BEGIN 

DECLARE  @v_Pi DECIMAL(18,10); 

SET @v_Pi = ( PI()/ 180 ); 

DECLARE  @v_A DECIMAL(18,10) ; 

SET @v_A= 0.5 - COS((@v_DestinationLatitude-@v_OriginLatitude) * @v_Pi)/2 + COS(@v_OriginLatitude * @v_Pi) * COS(@v_DestinationLatitude * @v_Pi) * (1-COS((@v_DestinationLongitude - @v_OrginLongitude) * @v_Pi))/2 

DECLARE  @v_finalDistance DECIMAL(18,10); 

SET @v_FinalDistance = 12742 * ASIN((SQRT(@v_A))); 

RETURN @v_finalDistance 

END; 

GO 

