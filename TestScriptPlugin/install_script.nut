
/*
 * This file is part of the Code::Blocks IDE and licensed under the GNU General Public License, version 3
 * http://www.gnu.org/licenses/gpl-3.0.html
 *
 * $Revision$
 * $Id$
 * $HeadURL$
 */

// user-dialog-test
// Script plugins must extend cbScriptPlugin

local dialog_res = @"PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9
InllcyIgPz4KPHJlc291cmNlIHhtbG5zPSJodHRwOi8vd3d3Lnd4d2luZG93cy5v
cmcvd3h4cmMiPgoJPG9iamVjdCBjbGFzcz0id3hEaWFsb2ciIG5hbWU9Imluc3Rh
bGxfZGlhbG9nIj4KCQk8dGl0bGU+SW5zdGFsbGluZyBjYlNlbGVjdGl2ZUNvbXBp
bGluZzwvdGl0bGU+CgkJPGNlbnRlcmVkPjE8L2NlbnRlcmVkPgoJCTxvYmplY3Qg
Y2xhc3M9Ind4RmxleEdyaWRTaXplciI+CgkJCTxjb2xzPjE8L2NvbHM+CgkJCTxv
YmplY3QgY2xhc3M9InNpemVyaXRlbSI+CgkJCQk8b2JqZWN0IGNsYXNzPSJ3eFN0
YXRpY1RleHQiIG5hbWU9IklEX1NUQVRJQ1RFWFQxIj4KCQkJCQk8bGFiZWw+RG8g
eW91IHdhbnQgdG8gaW5zdGFsbCBjYlNlbGVjdGl2ZUNvbXBpbGluZyBwbHVnaW4/
PC9sYWJlbD4KCQkJCTwvb2JqZWN0PgoJCQkJPGZsYWc+d3hBTEx8d3hBTElHTl9D
RU5URVJfSE9SSVpPTlRBTHx3eEFMSUdOX0NFTlRFUl9WRVJUSUNBTDwvZmxhZz4K
CQkJCTxib3JkZXI+NTwvYm9yZGVyPgoJCQkJPG9wdGlvbj4xPC9vcHRpb24+CgkJ
CTwvb2JqZWN0PgoJCQk8b2JqZWN0IGNsYXNzPSJzaXplcml0ZW0iPgoJCQkJPG9i
amVjdCBjbGFzcz0id3hIeXBlcmxpbmtDdHJsIiBuYW1lPSJtX2xpbmsiPgoJCQkJ
CTxsYWJlbD5odHRwczovL2dpdGh1Yi5jb20vYmx1ZWhhenphcmQvY2RTZWxlY3Rp
dmVDb21waWxpbmc8L2xhYmVsPgoJCQkJPC9vYmplY3Q+CgkJCQk8ZmxhZz53eEFM
THx3eEFMSUdOX0NFTlRFUl9IT1JJWk9OVEFMfHd4QUxJR05fQ0VOVEVSX1ZFUlRJ
Q0FMPC9mbGFnPgoJCQkJPGJvcmRlcj41PC9ib3JkZXI+CgkJCQk8b3B0aW9uPjE8
L29wdGlvbj4KCQkJPC9vYmplY3Q+CgkJCTxvYmplY3QgY2xhc3M9InNpemVyaXRl
bSI+CgkJCQk8b2JqZWN0IGNsYXNzPSJ3eEJveFNpemVyIj4KCQkJCQk8b2JqZWN0
IGNsYXNzPSJzaXplcml0ZW0iPgoJCQkJCQk8b2JqZWN0IGNsYXNzPSJ3eEJ1dHRv
biIgbmFtZT0ibV9iX3llcyI+CgkJCQkJCQk8bGFiZWw+WUVTPC9sYWJlbD4KCQkJ
CQkJPC9vYmplY3Q+CgkJCQkJCTxmbGFnPnd4QUxMfHd4QUxJR05fQ0VOVEVSX0hP
UklaT05UQUx8d3hBTElHTl9DRU5URVJfVkVSVElDQUw8L2ZsYWc+CgkJCQkJCTxi
b3JkZXI+NTwvYm9yZGVyPgoJCQkJCQk8b3B0aW9uPjE8L29wdGlvbj4KCQkJCQk8
L29iamVjdD4KCQkJCQk8b2JqZWN0IGNsYXNzPSJzaXplcml0ZW0iPgoJCQkJCQk8
b2JqZWN0IGNsYXNzPSJ3eEJ1dHRvbiIgbmFtZT0ibV9iX25vIj4KCQkJCQkJCTxs
YWJlbD5OTzwvbGFiZWw+CgkJCQkJCTwvb2JqZWN0PgoJCQkJCQk8ZmxhZz53eEFM
THx3eEFMSUdOX0NFTlRFUl9IT1JJWk9OVEFMfHd4QUxJR05fQ0VOVEVSX1ZFUlRJ
Q0FMPC9mbGFnPgoJCQkJCQk8Ym9yZGVyPjU8L2JvcmRlcj4KCQkJCQkJPG9wdGlv
bj4xPC9vcHRpb24+CgkJCQkJPC9vYmplY3Q+CgkJCQk8L29iamVjdD4KCQkJCTxm
bGFnPnd4QUxMfHd4QUxJR05fQ0VOVEVSX0hPUklaT05UQUx8d3hBTElHTl9DRU5U
RVJfVkVSVElDQUw8L2ZsYWc+CgkJCQk8Ym9yZGVyPjU8L2JvcmRlcj4KCQkJCTxv
cHRpb24+MTwvb3B0aW9uPgoJCQk8L29iamVjdD4KCQk8L29iamVjdD4KCTwvb2Jq
ZWN0Pgo8L3Jlc291cmNlPg=="

class tmp_install_plugin extends cbScriptPlugin
{

    // mandatory to setup the plugin's info
    constructor()
    {
        info = ::PluginInfo();

        info.name = ::_T("tmp_install_plugin");
        info.title = ::_T("tmp_install_plugin");
        info.version = ::_T("0.1a");
        info.license = ::_T("GPL");
    }

    function RemoveNewLine(str)
    {
        local tmp = ::wxString(str);
        tmp.Replace("\n","",true);
        return tmp;
    }
                

    function DisplayError(message)
	{
		error(message);
		::ShowMessage(message);
	}

    function GetPluginInfo()
    {
        return info;
    }

    function OnYes(evt)
    {
        main_dialog.EndModal(0);
    }
    
    function OnNo(evt)
    {
        main_dialog.EndModal(-2);
    }

    function OnLink(evt)
    {
        ::Message("Show page","page",wxOK);
    }

    function ShowDialog()
    {

		if(loaded == false)
		{
			main_dialog = ::CreateWxDialog(this);
			
			// Load the resource from string
            local tmp_string = RemoveNewLine(dialog_res);
            local tmp_string2 = ::wxBase64Decode(tmp_string);
			if(::LoadResourceFromString(this,tmp_string2) == false)
			{
				DisplayError("Could not load resource from string");
				return -1;
			}
			
			local ret = main_dialog.LoadFromXRCPool("install_dialog");
			if(ret != RESOURCE_LOADED_SUCCESFULLY)
			{
				DisplayError("Could not load \"selective_compiling_main_diag\" from Resource pool");
				return -1;
			}
			
			main_dialog.RegisterEventHandler(wxEVT_BUTTON,::XRCID("m_b_yes"),this,"OnYes");
			main_dialog.RegisterEventHandler(wxEVT_BUTTON,::XRCID("m_b_no"),this,"OnNo");
			main_dialog.RegisterEventHandler(wxEVT_COMMAND_HYPERLINK,::XRCID("m_link"),this,"OnLink");
			
			loaded = true;
		
		}
		
		
		
		return main_dialog.ShowModal();

    };

    main_dialog = 0;
	info = 0;
	loaded = false;

}

function pre_install(status)
{
    local plugin = tmp_install_plugin();
    local ret = 0;
    RegisterPlugin(plugin);
    try
    {
        ret = plugin.ShowDialog();
    }
    catch(error)
    {
        Message("Got an error = "+ error,"Install cbSelectiveCompiling",wxOK);
    }
    UnRegisterPlugin("tmp_install_plugin");
    return ret;
}

function post_install(status)
{
        return 0;
}

// this call actually registers the script plugin with Code::Blocks


// if you want to call this plugin's Execute() function, use this in a script:
// ExecutePlugin(_T("Scripting_TestPlugin"));
