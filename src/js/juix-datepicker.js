//=====================================
function initDP(id,init,opt)
	{
	$(id).datepicker(JSON.parse(opt));
	$(id).datepicker("setDate",init);
	} 
//=====================================
