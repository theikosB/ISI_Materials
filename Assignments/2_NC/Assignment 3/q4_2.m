function [years, months, days] = myage(onDate)
if nargin < 1
onDate = now;
end
BirthDate = datenum('2005-06-06');
dateDifference = datevec(onDate - BirthDate);
years = dateDifference(1);
months = (dateDifference(2)) - 1;
days = (dateDifference(3)) - 1;
end