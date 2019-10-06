import React from 'react';
import { Dimensions, StyleSheet, Text, View, Image } from 'react-native';

import MapView from 'react-native-maps';
import * as Permissions from 'expo-permissions'
import * as firebase from 'firebase'

import {
  Marker,
  Callout,
  CalloutSubview,
  ProviderPropType,
} from 'react-native-maps';

const { width, height } = Dimensions.get('screen');
const locations = require('../locations.json');
const LATITUDE_DELTA = 0.01;
const LONGITUDE_DELTA = LATITUDE_DELTA * (width / height);
const roofRef = firebase.database().ref();
const mapRef = roofRef.child('userData');
// const userlocation = firebase.database().ref('userData')
export default class App extends React.Component {
  state = {
    latitude: null,
    longitude: null,
    locations: locations,
    maplist:[],
  }

  async componentDidMount() {
    mapRef.on('value',(childSnapshot)=>{
      const maplist =[];
      childSnapshot.forEach((oc)=>{
        maplist.push({
          key:doc.key,
          
        })
      })
    })
    const { status } = await Permissions.getAsync(Permissions.LOCATION)

    if (status !== 'granted') {
      const response = await Permissions.askAsync(Permissions.LOCATION)
    }
    navigator.geolocation.getCurrentPosition(
      ({ coords: { latitude, longitude } }) => this.setState({ latitude, longitude }, this.mergeCoords),
      (error) => console.log('Error:', error)
    )

    const { locations: [ sampleLocation ] } = this.state

    this.setState({
      desLatitude: sampleLocation.coords.latitude,
      desLongitude: sampleLocation.coords.longitude
    }, this.mergeCoords)
  }


  onMarkerPress = location => () => {
    const { coords: { latitude, longitude } } = location
    this.setState({
      destination: location,
      desLatitude: latitude,
      desLongitude: longitude
    }, this.mergeCoords)
  }

  renderMarkers = () => {
    const { locations } = this.state
    return (
      <View>
        {
          locations.map((location, idx) => {
            const {
              coords: { latitude, longitude },
              status: Userstatus,
              name:name,
              address:address
            } = location
            const color="";
            if (Userstatus==false) {
              this.color = "#DA0000";
            }
            else{
              this.color = '#2ECC71';
            }
            // console.log(Userstatus);
            return (
              <Marker
                key={idx}
                coordinate={{ latitude, longitude }}
                onPress={this.onMarkerPress(location)}
                pinColor={this.color}
                        onPress={() => {}}
        onCalloutPress={() => {
          this.marker.hideCallout();
        }}>
        <Callout style={styles.plainView}
          tooltip={true}>
              <View  style={{ backgroundColor: "white" }}>
                <Text style={styles.plainView}>
                  {address}
                </Text>
              </View>
        </Callout>
      </Marker>
            )
          })
        }
      </View>
    )
  }

  render() {
    const {
      latitude,
      longitude,
    } = this.state

    if (latitude) {
      return (
        <MapView
          showsUserLocation
          style={{ flex: 1 }}
          initialRegion={{
            latitude,
            longitude,
            latitudeDelta: LATITUDE_DELTA,
            longitudeDelta: LONGITUDE_DELTA
          }}
        >
      
        {this.renderMarkers()}
      </MapView>
      );
    }
    return (
      <View style={{ flex: 1, justifyContent: 'center', alignItems: 'center' }}>
        <Text>We need your permission!</Text>
      </View>
    )
  }
}

const styles = StyleSheet.create({
  container: {
    ...StyleSheet.absoluteFillObject,
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
    plainView: {
      width: 100,
    },

});