import React, { Component } from 'react'
  import {
    Image,
    Platform,
    ScrollView,
    StyleSheet,
    Text,
    TouchableOpacity,
    View,
    ActivityIndicator,
    WebView
  } from 'react-native';

const WebViewExample = () => {
   return (
      <View style = {styles.container}>
         <WebView
         source = {{ uri:
         'https://mannatureairpurifier.com/tracking' }}
         />
      </View>
   )
}
export default WebViewExample;


// import * as WebBrowser from 'expo-web-browser';
// import React from 'react';

// import { MonoText } from '../components/StyledText';

// export default class SearchingScreen extends React.Component {
//     static navigationOptions = {
//       header: null,
//     };
//     constructor(props){
//       super(props);
//       this.state = {
//         isLoading: true,
//         dataSource: null,
//       }

//     }
//      componentDidMount(){
//       return fetch('https://trackapi.thailandpost.co.th/post/api/v1/authenticate/token', {
//         method: 'POST',
//         headers: {
//           'Authorization':'Token D3IaHaF:A3H+NqE7DRPvSWWURxSWHANkUwOgKMO^DOKtX8JZC:AAS.J0N9DAW9AbJBZENiDsMsCKU3M*ZJM#N^SgLlPTL|Y=A^OR',
//         'Content-Type': 'application/json',
//         }
//       })
//       .then((response) => response.json() )
//       .then((responseData) =>{
//         console.log("REsult HERE:", responseData)
//         this.setState({
//           isLoading:false,
//           dataSource:responseJson,
          
//         })
        
//       })

//       .catch((error) => {
//         console.log(error)
//       });


//     }
//  render() {
//     if(this.state.isLoading){
//       return(
//         <View style={styles.container}>
//           <ActivityIndicator/>
//         </View>
//       )
//     }
//     else{
//       // let movies = this.state.dataSource.map((val,key) =>{
//       //   return <View key={key} style={styles.item}><Text>{val.message}</Text></View>
//       // });
//     return (
//         // <ScrollView style={styles.container} contentContainerStyle={styles.contentContainer}>
//       <View style={styles.welcomeContainer}>
//         <Text>TEST</Text>

//       </View>
//       //  </ScrollView> 
//     );
//   }
// }

//     componentDidMount(){
//       return fetch('https://facebook.github.io/react-native/movies.json')
//       .then((response) => response.json() )
//       .then((responseJson) =>{
//         this.setState({
//           isLoading:false,
//           dataSource:responseJson.movies,
          
//         })
        
//       })

//       .catch((error) => {
//         console.log(error)
//       });


//     }
//  render() {
//     if(this.state.isLoading){
//       return(
//         <View style={styles.container}>
//           <ActivityIndicator/>
//         </View>
//       )
//     }
//     else{
//       let movies = this.state.dataSource.map((val,key) =>{
//         return <View key={key} style={styles.item}><Text>{val.title}</Text></View>
//       });
//     return (
        
//       <View style={styles.container}>
//         {movies}

//       </View>
//     );
//   }
// }


//   _handleLearnMorePress = () => {
//     WebBrowser.openBrowserAsync('https://docs.expo.io/versions/latest/guides/development-mode');
//   };

//   _handleHelpPress = () => {
//     WebBrowser.openBrowserAsync(
//       'https://docs.expo.io/versions/latest/guides/up-and-running.html#can-t-see-your-changes'
//     );
//   };
// }

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#FFE633',
    color: '#85483F',
    fontSize: 40,
    lineHeight: 19,
    textAlign: 'center',
  },
  item:{
    flex:1,
    alignSelf:'stretch',
    margin:10,
    alignItems:'center',
    borderBottomWidth:1,
  },
  developmentModeText: {
    color: '#85483F',
    fontSize: 40,
    lineHeight: 19,
    textAlign: 'center',
    width: 345,
    height: 67,
  },
  contentContainer: {
    paddingTop: 30, 
    color: '#85483F',
    fontSize: 40,
    textAlign: 'center',
  },
  welcomeContainer: {
    alignItems: 'center',
    marginTop: 10,
    marginBottom: 20,
  },
  welcomeImage: {
    width: 100,
    height: 80,
    resizeMode: 'contain',
    marginTop: 3,
    marginLeft: -10,
  },
  getStartedContainer: {
    alignItems: 'center',
    marginHorizontal: 10,
  },
  homeScreenFilename: {
    marginVertical: 7,
  },
  codeHighlightText: {
    color: 'rgba(96,100,109, 0.8)',
  },
  codeHighlightContainer: {
    backgroundColor: 'rgba(0,0,0,0.05)',
    borderRadius: 3,
    paddingHorizontal: 4,
  },
  getStartedText: {
    fontSize: 17,
    color: 'rgba(96,100,109, 1)',
    lineHeight: 24,
    textAlign: 'center',
  },
  tabBarInfoContainer: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
    ...Platform.select({
      ios: {
        shadowColor: 'black',
        shadowOffset: { width: 0, height: -3 },
        shadowOpacity: 0.1,
        shadowRadius: 3,
      },
      android: {
        elevation: 20,
      },
    }),
    alignItems: 'center',
    backgroundColor: '#fbfbfb',
    paddingVertical: 20,
  },
  tabBarInfoText: {
    fontSize: 17,
    color: 'rgba(96,100,109, 1)',
    textAlign: 'center',
  },
  navigationFilename: {
    marginTop: 5,
  },
  helpContainer: {
    marginTop: 15,
    alignItems: 'center',
  },
  helpLink: {
    paddingVertical: 15,
  },
  helpLinkText: {
    fontSize: 14,
    color: '#2e78b7',
  },
});
