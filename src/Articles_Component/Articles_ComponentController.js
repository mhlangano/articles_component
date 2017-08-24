({
    doInit : function(component, event, helper) {
        var action = component.get("c.getArticles");
        action.setCallback(this, function(data) {
        component.set("v.articles", data.getReturnValue());
        });
        $A.enqueueAction(action);
    }
})
