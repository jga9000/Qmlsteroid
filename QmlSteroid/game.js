//![0]

function createObject(filename, parent_obj) {
    var component;

    if (component == null)
        component = Qt.createComponent(filename);

    if (component.status == Component.Ready) {
        var dynamicObject = component.createObject(parent_obj);
        if (dynamicObject == null) {
            console.log("error creating object");
            console.log(component.errorString());
        }
    } else {
        console.log("error loading component");
        console.log(component.errorString());
    }

    return dynamicObject;
}

//![0]