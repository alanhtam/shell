# set array of historical 'as of' dates
asofdate=("'2014-01-01'"
 "'2014-02-01'"
 "'2014-03-01'"
 "'2014-04-01'"
 "'2014-05-01'"
 "'2014-06-01'"
 "'2014-07-01'"
 "'2014-08-01'"
 "'2014-09-01'"
 "'2014-10-01'"
 "'2014-11-01'"
 "'2014-12-01'"
 "'2015-01-01'"
 "'2015-02-01'"
 "'2015-03-01'"
 "'2015-04-01'")

 # query appends data to table as it loops through the above array
for i in "$asofdate[@]}";
do :;
	psql -h p5gp01 -p 5432 -U **** gp_prod -v v1="$i" -f /at_customer_dash.sql;
done