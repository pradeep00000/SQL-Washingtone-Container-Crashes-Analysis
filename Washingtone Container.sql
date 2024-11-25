create schema container;
select * from container.washington;

#1. Write a query to select the CRASH_YEAR, CRASH_MONTH,
#   and CRASH_COUNTY columns from a table called washington.
select CRASH_YEAR, CRASH_MONTH, CRASH_COUNTY
from container.washington;

#2. Write a query to count the total number of 
#   crashes (rows) in the table washington.
select count(CRASH_CRN) as total_Crashes from container. washington;

#3. Write a query to find all crashes that occurred in the month march.
select * from container.washington
where CRASH_MONTH = 3;

#4. Write a query to get the MUNICIPALITY and the total number of
#   crashes in each MUNICIPALITY.
select MUNICIPALITY , count(MUNICIPALITY) as total_crashes
from container.washington
group by MUNICIPALITY;

#5. Write a query to find the crashes where the 
#   INJURY_COUNT is greater than 0.
select * from container.washington
where INJURY_COUNT > 0;

#6. Write a query to get the total number of crashes 
#   that occurred in "Urban_Rural" areas.
select sum(URBAN_RURAL)
from container.washington;

#7. Write a query to select the top 5 rows where the 
#   crash severity (MAX_SEVERITY_LEVEL).
select * from container.washington
order by MAX_SEVERITY_LEVEL desc
limit 5;

#8. Write a query to find the total number of 
#   VEHICLE_COUNT for crashes that happened in January.
select CRASH_MONTH , sum(VEHICLE_COUNT)
from container.washington
where CRASH_MONTH = 1 ;

#9. Write a query to get the number of crashes for each CRASH_MONTH.
select CRASH_MONTH , count(*) from container.washington
group by CRASH_MONTH;

#10. Write a query to find the number of crashes by 
#    ROAD_CONDITION where the CRASH_MONTH is JUNE.
select ROAD_CONDITION , count(*)
from container.washington
where CRASH_MONTH = 6
group by ROAD_CONDITION;

#11. Write a query to find the POLICE_AGCY and the total number 
#    of Person (PERSON_COUNT) in each POLICE_AGCY for the Month February.
select POLICE_AGCY , sum(PERSON_COUNT)
from container.washington
where CRASH_MONTH = 2
group by POLICE_AGCY;

#12. Write a query to select all columns where ALCOHOL_RELATED = 1 and the 
#    CRASH_MONTH is between January to June.
select * from container.washington
where ALCOHOL_RELATED = 1 and CRASH_MONTH  between 1 and 6;

#13. Write a query to find the average SPEED_LIMIT for all crashes that 
#    happened on LOCAL_ROAD in October.
select CRASH_MONTH , LOCAL_ROAD , avg(SPEED_LIMIT) from container.washington
where LOCAL_ROAD = 1 and CRASH_MONTH = 10;

#14. Write a query to find the number of crashes where a school bus was 
#    involved (SCH_BUS_IND = 1) .
select count(SCH_BUS_IND) from container.washington
where SCH_BUS_IND = 'y';

#15.  Write a query to find the  number of crashes by 
#     COLLISION_TYPE where the HOUR_OF_DAY is 6 AM to 6PM.
select COLLISION_TYPE , HOUR_OF_DAY
from container.washington
where HOUR_OF_DAY between 6 and 18 ;

#16. Write a query to select the Municipality, CRASH_MONTH, and VEHICLE_COUNT,
#    and find the average VEHICLE_COUNT for each municipality in April.
select MUNICIPALITY , CRASH_MONTH , avg(VEHICLE_COUNT)
from container.washington
where CRASH_MONTH = 4 
group by MUNICIPALITY , CRASH_MONTH;

#17. Write a query to find the total INJURY_COUNT by COLLISION_TYPE for the Month 
#    June, only for collisions that involved a heavy truck (HEAVY_TRUCK_COUNT > 0).
select Sum(INJURY_COUNT) , COLLISION_TYPE , HEAVY_TRUCK_COUNT
from container.washington
where CRASH_MONTH = 6 and HEAVY_TRUCK_COUNT = 1
group by COLLISION_TYPE;

#18.  Write a query to find the crashes where the VEHICLE_COUNT is more than 1, 
#     but less than 4, and the crash occurred during a snow/slush road condition.
select VEHICLE_COUNT , SNOW_SLUSH_ROAD 
from container.washington
where VEHICLE_COUNT between 1 and 4 and SNOW_SLUSH_ROAD = 1;

#19. Write a query to get the number of crashes by the day of the week (DAY_OF_WEEK)
#    where the WEATHER was '2'.
select DAY_OF_WEEK, count(*) from container.washington
where WEATHER = 2
group by DAY_OF_WEEK;
