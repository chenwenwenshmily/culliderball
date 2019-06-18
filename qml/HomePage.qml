import Felgo 3.0

import QtQuick 2.0
import QtQuick.Controls 2.3
Page{
    id:homepage

//    property alias icon: icon
 //   property alias homepage: homepage
  //  property alias mouseArea: mouseArea


//    header:Button{
//      //  text: qsTr("关卡")
//        font.pixelSize: Qt.application.font.pixelSize * 2
//        padding: 10
//        Image {
//            id: icon
//            source: "homebutton"
//            x:0
//            y:400
//        }
//    }

    Rectangle{
        id:homerctangle
        width: parent.width
        height: parent.height
        Button{
            text: qsTr("骇入")
            id:hairubutton
            width: 100
            height: 50
            x:parent.width/3
            y:parent.height/1.4        }
    }
}
