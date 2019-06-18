import Felgo 3.0
import QtQuick 2.0
import QtQuick.Controls 2.3
import QtMultimedia 5.0
Page{
    id:settingpage

 signal settingsPressed
    //    function playbgmusic(){
    //        if(checkState == "Qt.checked")
    //            playmusic.play();
    //        else{
    //            playmusic.pause();
    //        }
    //    }

    BackgroundMusic{
        id:playmusic1
        source: "Icicle1.wav"
        loops: SoundEffect.Infinite
        volume: 0.35
        //Settings.musicEnabled: true

        // autoLoad: true
        autoPauseInBackground:true
    }
    Timer {
      id: timerMusic
      interval: 100; running: true; repeat: true;
      onTriggered: {
        playmusic1.play()
        running = false
      }
    }

    Image {
        z: -2
        id: background
        source: "../assets/SettingsBG.png"

    }
    //  property alias icon: icon
    // property alias settingpage: settingpage
    // property alias mouseArea: mouseArea


    //    header:Button{
    //        text: qsTr("设置")
    //        font.pixelSize: Qt.application.font.pixelSize * 2
    //        padding: 10
    //    }
    Rectangle{
        id: rectangle

        Column{
            x: 100
            anchors.top: parent.top
            anchors.topMargin: 43
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width - 40
            anchors.horizontalCenterOffset: 0
            spacing: 20
            Text {
                //        if(checkState == "Qt.checked")
                x: 121

                font.pixelSize: 24
                text: "设置"
                color: "black"
            }

            Text {

                font.pixelSize: 12
                text: "声音"
                color: "black"
            }
            Text {
                font.pixelSize: 12
                text: "显示摇杆"
                color: "black"
            }
            Text {
                font.pixelSize: 12
                text: "语言"
                color: "black"
            }
            Text {


                font.pixelSize: 12
                text: "帮助"
                color: "black"
            }
            Text {
                x: 121

                font.pixelSize: 12
                text: "V 1.0"
                color: "black"
            }
        }
        //    Column{
        //        anchors.right: parent.right
        //        anchors.rightMargin: 20
        //        anchors.top: parent.top
        //       // anchors.topMargin: 77
        //        spacing: 8

        Column {
            id: column
            x: 267
            y: 95
            width: 65
            height: 148
//            此处千万不要设置settings.musicEnabled的值为false,他是和数据库交互的东西，要想重新设置为true,则用以下代码
//                         Component.onCompleted: {
//                             var tempNumberGameStarts = settings.setValue("musicEnabled",true)
//                         }

            MenuButton {
              width: 90
              height: 40
              label.source: active ? "../assets/Switch_Off.png" : "../assets/Switch_On.png"
              active: ! settings.soundEnabled
              opacity: 1
              onClicked: {
                settings.soundEnabled ^= true

              }

            }
//            CheckBox {
//                id: checkBox2
//                width: 30
//                height: 30
//              //  checked: true?"playmusic1.autoPlay:false":"playmusic1.autoPlay: true"

//                MouseArea{
//                    anchors.fill: parent
//                    onContainsMouseChanged:checkBox2.state=="clicked"?checkBox2.state="clicked":checkBox2.state="unclicked"
//                    states: [
//                        State{
//                            name:"unclicked"
//                            PropertyChanges { target: playmusic1; autoPlay: false }
//                        },
//                        State{
//                            name: "clicked"

//                            PropertyChanges { target: playmusic1; autoPlay: true }
//                        }
//                ]}

    //            checked: true? settings.musicEnabled ^= true:settings.musicEnabled ^= false

                //               checkState: Qt.checked? "checkBox1.width:100"  :"checkBox1.width:0"           //  var tempNumberGameStarts = settings.setValue()
                //      settings.setValue:music
                //         checkState: Qt.Checked ? settings.musicEnabled ^= false:settings.musicEnabled ^= true
                //               Audio{
                //                   id:playmusic
                //                   source: "BG.mp3"
                //                   autoPlay: true

                //               }
                //
                //               function playbgmusic(){
                //                   if(checkState == Qt.checked)
                //                       playmusic.play();
                //                   else{
                //                       playmusic.stop();
                //                   }
                //               }
//            }

            CheckBox {
                id: checkBox1
                width: 30
                height: 30

            }
        }

        ComboBox {
            opacity: 0.5
            id: comboBox
            x: 210
            y: 155
            width: 104
            height: 33
            font.underline: false
            font.bold: true
            font.pixelSize: 12
            font.family: "Arial"
            currentIndex: 2
            focusPolicy: Qt.ClickFocus
            textRole: "key"
            model: ListModel {
                ListElement { key: "简体中文"; value: 123 }
                ListElement { key: "English"; value: 456 }
                ListElement { key: "繁體中文"; value: 789 }
            }
        }


        //    }
        //    Column {
        //      anchors.right: parent.right
        //      anchors.rightMargin: 20
        //      anchors.top: parent.top
        //      anchors.topMargin: 77
        //      spacing: 8
        //      CheckBox{
        //        //  label.source: active ? "../../assets/img/Switch_Hard.png" : "../../assets/img/Switch_Easy.png"
        //         // active: !GameInfo.easyMode
        //          opacity: 1
        //          onClicked: {
        //            GameInfo.easyMode ^= true
        //          }
        //          width: 90
        //          height: 4091
        //      }
        //    }

    }
}
