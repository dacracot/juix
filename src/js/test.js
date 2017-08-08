//=====================================
function initDP(id,init)
	{
	$(id).datepicker();
	$(id).datepicker("setDate",init);
	} 
//=====================================
$(document).ready(function()
	{
	SaxonJS.transform({
		stylesheetLocation: "test.sef.xml",
		sourceLocation: "test.xml"
		});
	});
//=====================================
