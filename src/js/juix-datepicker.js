//=====================================
function juixDatepickerInit(id,init,opt)
	{
	$(id).datepicker(JSON.parse(opt));
	$(id).datepicker("setDate",init);
	$(id).data("lastVal",init);
	//=================================
	$(id).change(function(e)
		{
		var changedValue = e.target.value;
		var lastValue = $(id).data("lastVal");
		if (lastValue !== changedValue)
			{
			console.log("changed: "+changedValue);
			$(id).data("lastVal",changedValue);
			}
		});
	} 
//=====================================
