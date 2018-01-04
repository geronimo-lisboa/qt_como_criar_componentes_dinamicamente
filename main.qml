import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Item{
        anchors.leftMargin: 12
        anchors.bottomMargin: 12
        anchors.rightMargin: 12
        anchors.topMargin: 12
        anchors.fill: parent
        GridLayout{
            id: splitView
            anchors.fill: parent
            columns: 2
            rows:2
            Button{
                text: "Add"
                focusPolicy: Qt.NoFocus
                Layout.fillHeight: true
                Layout.fillWidth: true
                property int numeroDeClicks: 0
                onClicked: {
                    this.text = numeroDeClicks;
                    numeroDeClicks++;
                    var newObject = Qt.createQmlObject('import QtQuick 2.7; Rectangle {color: "red"; width: 20; height: 20}',
                        splitView, "dynamicSnippet1");
                    newObject.Layout.fillHeight = true;
                    newObject.Layout.fillWidth = true;

                }
            }

        }
    }

}
