import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 2.3
Page{
    id:storepage
   // property alias icon: icon
//    property alias storepage: storepage
  //  property alias mouseArea: mouseArea


//    header:Button{
//        text: qsTr("商店")
//        font.pixelSize: Qt.application.font.pixelSize * 2
//        padding: 10
//    }

    Rectangle{
        id:hole1
        width: parent.width
        height: parent.height
        Button{
            text: qsTr("新000")
            id:hairubutton
            width: 100
            height: 50
            x:parent.width/3
            y:parent.height/1.4        }
    }

}
