import { AppLoading } from 'expo';
import { Asset } from 'expo-asset';
import * as Font from 'expo-font';
import React, { useState } from 'react';
import { Platform, StatusBar, StyleSheet, View } from 'react-native';
import { Ionicons } from '@expo/vector-icons';
import LoginScreen from './screens/LoginScreen';
import firebase from 'firebase';

import AppNavigator from './navigation/AppNavigator';

// const config = require('./config')

  var firebaseConfig = {
    apiKey: "AIzaSyBP7uJQlit-vtNBUBsc_9oTBhn2HHjr6Dc",
    authDomain: "smarttracking-122ba.firebaseapp.com",
    databaseURL: "https://smarttracking-122ba.firebaseio.com",
    projectId: "smarttracking-122ba",
    storageBucket: "",
    messagingSenderId: "729228013513",
    appId: "1:729228013513:web:4d24033b6e609949f74218"
  };

  firebase.initializeApp(firebaseConfig);

  // firebase.database().ref('users/001').set(
  //   {
  //     name: 'test tila',
  //     age: 21
  //   }
  // ).then(()=> {
  //   console.log('INSERT!');
  // }).catch((error)=>{
  //   console.log(error);
  // });


export default function App(props) {
  const [isLoadingComplete, setLoadingComplete] = useState(false);

  if (!isLoadingComplete && !props.skipLoadingScreen) {
    return (
      <AppLoading
        startAsync={loadResourcesAsync}
        onError={handleLoadingError}
        onFinish={() => handleFinishLoading(setLoadingComplete)}
      />
    );
  } else {
    return (
      <View style={styles.container}>
        {Platform.OS === 'ios' && <StatusBar barStyle="default" />}
        <AppNavigator />
      </View>
    );
  }
}

async function loadResourcesAsync() {
  await Promise.all([
    Asset.loadAsync([
      require('./assets/images/robot-dev.png'),
      require('./assets/images/robot-prod.png'),
    ]),
    Font.loadAsync({
      // This is the font that we are using for our tab bar
      ...Ionicons.font,
      // We include SpaceMono because we use it in HomeScreen.js. Feel free to
      // remove this if you are not using it in your app
      'space-mono': require('./assets/fonts/SpaceMono-Regular.ttf'),
    }),
  ]);
}

function handleLoadingError(error) {
  // In this case, you might want to report the error to your error reporting
  // service, for example Sentry
  console.warn(error);
}

function handleFinishLoading(setLoadingComplete) {
  setLoadingComplete(true);
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
});
