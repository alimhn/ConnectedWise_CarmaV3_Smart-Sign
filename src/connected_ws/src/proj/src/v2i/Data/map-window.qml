import QtLocation 5.9
import QtPositioning 5.0
import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

import com.mapbox.cheap_ruler 1.0

Item {
    id: mapWindow

    property var navigating: true
    property var traffic: true
    property var night: false
    property string routeDir: Qt.application.arguments[1]
    property var coordList: ruler.readRouteFile("route-1-curve")
    property int len: coordList.length/2

    states: [
        State {
            name: ""
            PropertyChanges { target: map; tilt: 0; bearing: 0; zoomLevel: map.zoomLevel }
        },
        State {
            name: "navigating"
            PropertyChanges { target: map; tilt: 55; zoomLevel: 19.0 }
        }
    ]

    transitions: [
        Transition {
            to: "*"
            RotationAnimation { target: map; property: "bearing"; duration: 20; direction: RotationAnimation.Shortest }
            NumberAnimation { target: map; property: "zoomLevel"; duration: 100 }
            NumberAnimation { target: map; property: "tilt"; duration: 100 }
        }
    ]

    state: navigating ? "navigating" : ""

    Map {
        id: map
        anchors.fill: parent

        plugin: Plugin {
            name: "mapboxgl"

            PluginParameter {
                name: "mapbox.access_token"
                value: "pk.eyJ1IjoidG1wc2FudG9zIiwiYSI6ImNqMWVzZWthbDAwMGIyd3M3ZDR0aXl3cnkifQ.FNxMeWCZgmujeiHjl44G9Q"

            }

            PluginParameter {
                name: "mapboxgl.mapping.additional_style_urls"
                value: "mapbox://styles/mapbox/navigation-guidance-day-v2"
            }

        }



        MapParameter {
            type: "layer"

            property var name: "3d-buildings"
            property var source: "composite"
            property var sourceLayer: "building"
            property var layerType: "fill-extrusion"
            property var minzoom: 15.0
        }

        MapParameter {
            type: "filter"

            property var layer: "3d-buildings"
            property var filter: [ "==", "extrude", "true" ]
        }

        MapParameter {
            type: "paint"

            property var layer: "3d-buildings"
            property var fillExtrusionColor: "#00617f"
            property var fillExtrusionOpacity: .6
            property var fillExtrusionHeight: { return { type: "identity", property: "height" } }
            property var fillExtrusionBase: { return { type: "identity", property: "min_height" } }
        }

        center: mapWindow.navigating ? ruler.currentPosition : QtPositioning.coordinate(ruler.getCoordinates(0, coordList), ruler.getCoordinates(1, coordList))
        zoomLevel: .5
        tilt: 55

        copyrightsVisible: false

        RotationAnimation on bearing {
            id: bearingAnimation

            duration: 250
            alwaysRunToEnd: false
            direction: RotationAnimation.Shortest
            running: mapWindow.navigating
        }

        Location {
            id: previousLocation
            coordinate: QtPositioning.coordinate(0, 0);
        }
        property real lat1
        property real lat2
        property real long1
        property real long2
        property real dist

        onCenterChanged: {
            if (previousLocation.coordinate === center || !mapWindow.navigating)
                return;

            bearingAnimation.to = previousLocation.coordinate.azimuthTo(center);
            bearingAnimation.start();

            previousLocation.coordinate = center;
            lat1=ruler.currentPosition.latitude;
            lat2=ruler.getCoordinates(len*2-2, coordList);
            long1=ruler.currentPosition.longitude;
            long2=ruler.getCoordinates(len*2-1, coordList);
            dist= Math.sqrt((lat2-lat1)*(lat2-lat1)+(long1-long2)*(long1-long2));
            if(dist<0.0001){
                //Qt.quit();
            }
            //console.log('lat=', lat1, " long=", long1)
            // Sumter County Demonstration
            // Sharp Curve
            if (Math.abs(lat1 - 28.665121)<=0.000001 && Math.abs(long1 + 82.106498)<=0.000001) {
                console.log("Sharp Curve")
            }
            // T intersection
            if (Math.abs(lat1 - 28.666666)<=0.000001 && Math.abs(long1 + 82.104652)<=0.000001) {
                route2.path = [{ latitude: 28.667653, longitude: -82.104327}, { latitude: 28.666667, longitude: -82.104327 }]
            }
            // Pedestrian crossing
            if (Math.abs(lat1 - 28.668105)<=0.000001 && Math.abs(long1 + 82.104307)<=0.000001) {
                route2.path = [{ latitude: 28.668613, longitude: -82.104207}, { latitude: 28.668618, longitude: -82.104411 }]
                route2.line.color = 'yellow'
            }
            // Railroad crossing
            if (Math.abs(lat1 - 28.668563)<=0.000001 && Math.abs(long1 + 82.110931)<=0.000001) {
                route2.path = [{ latitude: 28.668923, longitude: -82.111830}, { latitude: 28.668121, longitude: -82.111921 }]
                route2.line.color = 'orange'
                route2.line.width = 15
            }
            // Main intersection
            if (Math.abs(lat1 - 28.668572)<=0.000001 && Math.abs(long1 + 82.111826)<=0.000001) {
                route2.path = [{ latitude: 28.669082, longitude: -82.112257}, { latitude: 28.667948, longitude: -82.112294 }]
                route2.line.color = 'red'
                route2.line.width = 20
            }
        }

        property real a
        property real b
        function addpoints(coords){
            var lines=[]
            var j=0
            for (var i = 0; i < coords.length; i++)  {
                 a=ruler.getCoordinates(i,coords)
                 b=ruler.getCoordinates(i+1,coords)
                 lines[j]=QtPositioning.coordinate(a,b)
                 i++;
                 j++;
            }
            return lines
        }

        MapPolyline {
            id:route1
            line.width: 20
            line.color: 'green'
            opacity: 0.7
            path: map.addpoints(coordList)
       }

        MapPolyline {
            id:route2
            line.width: 20
            line.color: 'red'
            opacity: 0.7
            //path: lanepath

       }


        MapQuickItem {
            id: startMarker

            sourceItem: Image {
                id: greenMarker
                source: "qrc:///marker-green.png"
            }

            coordinate : QtPositioning.coordinate(ruler.getCoordinates(0, coordList), ruler.getCoordinates(1, coordList))
            anchorPoint.x: greenMarker.width / 2
            anchorPoint.y: greenMarker.height / 2
        }

        MapQuickItem {
            id: endMarker

            sourceItem: Image {
                id: redMarker
                source: "qrc:///marker-red.png"
            }

            coordinate : QtPositioning.coordinate(ruler.getCoordinates(len*2-2, coordList), ruler.getCoordinates(len*2-1, coordList))
            anchorPoint.x: redMarker.width / 2
            anchorPoint.y: redMarker.height / 2

        }

        MapItemView {

            Component.onCompleted: {
                    ruler.path = route1.path;
                    ruler.currentDistance = 0;
                    currentDistanceAnimation.stop();
                    currentDistanceAnimation.to = ruler.distance;
                    currentDistanceAnimation.start();
                }
        }

        MapQuickItem {
            zoomLevel: map.zoomLevel

            sourceItem: Image {
                id: carmarker
                source: "qrc:///car-marker.png"
            }

            coordinate: ruler.currentPosition
            anchorPoint.x: carmarker.width / 2
            anchorPoint.y: carmarker.height / 2
        }


        Slider{
            id:speed1
            minimumValue:1
            maximumValue:50
            stepSize:10.0
            orientation:Qt.Vertical
            updateValueWhileDragging : false
            property int counter: 1
            onValueChanged: {
                if(counter!=1){
                currentDistanceAnimation.stop();
                currentDistanceAnimation.duration =(ruler.distance-ruler.currentDistance)/speed1.value * 60 * 60 * 1000;
                currentDistanceAnimation.start();
                }
                counter++
            }
        }

        CheapRuler {
            id: ruler
            PropertyAnimation on currentDistance {
                id: currentDistanceAnimation
                duration: ruler.distance / carSpeed * 60 * 60 * 1000
                alwaysRunToEnd: false
            }
        }
    }
}


