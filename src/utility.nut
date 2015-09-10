

SelectiveCompilingUtility <- 
{

   function line(str)
    {
        print(str + "\n");
    }


	function PrintDeep(text,a)
	{
		local space = " ";
		local spaces_to_print = "";
		for(local i = 0; i < a; i++)
		{
			spaces_to_print += space;
		}
		line(spaces_to_print+ text);
	}
	
	function PrintTable(tree,deep)
	{
		foreach(idx, a in tree)
		{
			if(typeof a == "table")
			{
				PrintDeep( idx + " is table: ",deep);
				PrintTable(a,deep+5);
			} else if(typeof a == "array")
			{
				PrintDeep( idx + " is array: ",deep);
				PrintTable(a,deep+5);
			}
			else
			{
				PrintDeep(idx + " is " + typeof a + " = " + a ,deep);
			}
		}
	}

}