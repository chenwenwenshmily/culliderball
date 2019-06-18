import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 2.3

GameWindow{
    id:game

    visible: true

    SwipeView{
        id:swipeview
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
      HomePage{
          id:page1
//          mouseArea {
//              onClicked: page1.state = ""
//          }
      }
      StorePage{
          id:page2
//          mouseArea {
//              onClicked:page2.state=""
//          }
      }
      ActivityPage{
         id:page3
//         mouseArea {
//             onClicked:page3.state=""
//         }
      }
      SettingPage{
          id:page4

//          mouseArea {
//              onClicked:page4.state=""
//          }
      }
    }
    TabBar{
        id:tabBar
        currentIndex: swipeview.currentIndex
        y:parent.height-home.height
        TabButton{
            id:home

            text:qsTr("关卡")
            opacity: 0.5
            width:game.width/4
            height: 50
            Image {
                focus: true
                id: homeiamge
                source: "../assets/homebutton.png"
               anchors.fill: parent

//                MouseArea {
//                    anchors.rightMargin: 0
//                    anchors.bottomMargin: 0
//                    anchors.leftMargin: 0
//                    anchors.topMargin: 0
//                    anchors.fill: parent
//                    onContainsMouseChanged: homeiamge.state == 'onclicked' ? homeiamge.state = "nocliked" : homeiamge.state = 'clicked';

//                }

//                states: [
//                    State{
//                        name:"nocliked"
//                        PropertyChanges { target: homeiamge; source:"../assets/homebutton.png" }
//                    },
//                    State{
//                        name: "clicked"

//                        PropertyChanges { target: homeiamge; source:"../assets/homebutton1.png" }
//                    }
//                ]

            }


            //                MouseArea{
            //                    anchors.fill: parent
            //                    onClicked: {
            //                        animateRotation.start()
            //                        animateOpacity.start()
            //                    }
            //                }
            //                PropertyAnimation{
            //                    id:animateOpacity
            //                    target: homeiamge
            //                    properties: "opacity"
            //                    to:1.0
            //                    duration: 100
            //                }


            //                ColorAnimation {
            //                    id:animateRotation
            //                    target: homeiamge
            //                    loops: Animation.Infinite
            //                    properties: "rotation"

            ////                    from: "grey"
            //                    to: "blue"
            //                    duration: 3000
            //                    easing: {
            //                        type:Easing.OutBack
            //                    }
            //                }
        }
        TabButton{
            focus: true
            text:qsTr("商店")
            width:game.width/4
            height: 50
            opacity: 0.5
            Image {
                id: storeiamge
                source: "../assets/storebutton.png"
                anchors.fill: parent
            }
        }
        TabButton{
            focus: true
            text:qsTr("活动")
            font.pixelSize: 12
            width: game.width/4
            height: 50
            opacity: 0.5
            Image {
                id: acitivityiamge
                source: "../assets/acitivitybutton.png"
                anchors.fill: parent
            }
        }
        TabButton{
            opacity: 0.5
            focus: true
            text:qsTr("设置")
            font.pixelSize: 12
            width: game.width/4
            height: 50
            Image {
                id: settingiamge
                source: "../assets/settingbutton.png"
                anchors.fill: parent
            }
        }
    }
}


/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
