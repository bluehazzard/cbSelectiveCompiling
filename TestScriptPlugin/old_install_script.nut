function pre_install(status)
{
        local ret = Message("Install cbSelectiveCompiling?","Install cbSelectiveCompiling?",wxYES_NO);
        if(ret == wxID_YES)
                return 0;
        else
                return -2;
}

function post_install(status)
{
        return 0;
}
