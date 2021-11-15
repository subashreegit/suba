select * from country;
SELECT concat(Continent,',' Region )  from country;
SELECT concat_ws(" , ",Continent, Region, Name, localname ) FROM country;