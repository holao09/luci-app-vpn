module("luci.controller.helloworld", package.seeall)  --notice that new_tab is the name of the file new_tab.lua
function index()
   entry({"admin", "helloworld"}, firstchild(), "Hello World", 60).dependent=false  --this adds the top level tab and defaults to the first sub-tab (tab_from_cbi), also it is set to position 30
   entry({"admin", "helloworld", "tab_from_cbi"}, cbi("helloworld/cbi_tab"), "CBI Tab", 1)  --this adds the first sub-tab that is located in <luci-path>/luci-myapplication/model/cbi/myapp-mymodule and the file is called cbi_tab.lua, also set to first position
   entry({"admin", "helloworld", "tab_from_view"}, template("helloworld/view_tab"), "View Tab", 2)  --this adds the second sub-tab that is located in <luci-path>/luci-myapplication/view/myapp-mymodule and the file is called view_tab.htm, also set to the second position
   entry({"admin", "helloworld", "click"}, call("action_tryme"), "Click here", 3).dependent=false
end

function action_tryme()
    luci.http.prepare_content("text/plain")
    luci.http.write("Haha, rebooting now...")
    luci.sys.reboot()
end