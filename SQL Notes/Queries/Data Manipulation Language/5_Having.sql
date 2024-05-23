-- This command allows to filter result in a GROUP BY clause. It is used to mention conditions on the groups being selected.
-- HAVING is mainly used with the GROUP BY to filter the results that a GROUP BY returns.
-- It’s similar to a WHERE, but operates on the results of a grouping.
-- The WHERE clause places conditions on the selected columns.
-- The HAVING clause places conditions on groups created by the GROUP BY clause.
-- Syntax:SELECT column_name, aggregate(column_name) FROM table_name 
-- GROUP BY column_name HAVING function(column_name) condition value.
-- The HAVING is associated with the GROUP BY, so HAVING can't be used individually.
select location, max(new_deaths) deaths 
from coviddeaths
group by location having deaths > 0;

-- GROUP BY and HAVING using WHERE condition.
-- Syntax:SELECT column_name, function(column_name) FROM table_name WHERE condition
--GROUP BY column_name HAVING function(column_name) condition value.
select location, min(total_deaths) minimumdeaths, sum(new_deaths) deaths 
from coviddeaths
where total_deaths <> 0
group by location having deaths > 0;