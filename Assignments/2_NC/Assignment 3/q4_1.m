function age = myage(onDate)
if nargin < 1
onDate = now;
end
BirthDate = datenum('2005-01-14');
dateDifference = datevec(onDate - BirthDate);
if dateDifference(1) > 1
  age = dateDifference(1);
end
