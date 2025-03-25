import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15


ApplicationWindow {
	visible: true
	title: "Mat AI"

	Button { //button create music
		text: "Music"
		anchors.centerIn: parent
		onClicked: {
			musicWindow.x = (Screen.width - musicWindow.width) / 2
			musicWindow.y = (Screen.height - musicWindow.height) / 2
			musicWindow.visible = true
		}
	}
	Window { // window offer music create
        id: musicWindow
        width: 1024
        height: 768
        title: "Music Window"
        visible: false
        modality: Qt.ApplicationModal

		Rectangle {
            anchors.fill: parent
            color: "white"

            Button {
                text: "Create"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
					musicWindow.visible = false
					fullscreenWindow.visible = true
				}
            }
        }
	}
	// window full screen
	Window {
		id: fullscreenWindow
		width: Screen.width
		height: Screen.height
		visible: false
		title: "Create Music"
		flags: Qt.Window
		color: "white"
	}
}
