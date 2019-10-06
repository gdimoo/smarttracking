import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  ListView,
  TouchableOpacity,
  View,
  Image,
  Text,
  TouchableHighlight,
  InteractionManager
} from 'react-native';
import * as firebase from 'firebase'

import { getByQuery } from '../utils'

export default class settingscreen extends React.Component {
  static navigationOptions = {
    header: null
  };

    state = {
      name: "Wait...",
      tracknumber:"EM123456TH",
      date:"07/10/2562"
}

componentDidMount() {
  firebase.auth().onAuthStateChanged(userReady => {
    return userReady && getByQuery('userData', userReady.uid).then(success => this.setState({name: success.val().name}))
  })
}
    clickEventListener = (navigation) => {
          InteractionManager.runAfterInteractions(() => {
            const uid = firebase.auth().currentUser.uid;  
            // console.log('find'+this.findname(uid))          
            firebase.database().ref('ComfirmData/' + uid).set({
              tracknumber: this.state.tracknumber,
              date: this.state.date,
              name: this.state.name,
            }).catch((error) => console.log('AddSigntoDB error: ', error))
          });
      InteractionManager.runAfterInteractions(() => {
        navigation.navigate('Sign')
      })
    }

  render() {
    return (
      <View style={styles.container}>
        <Image style={styles.icon} source={{uri: "https://cdn2.iconfinder.com/data/icons/logistics-delivery-2-4/64/82-512.png"}} />
        <Text ></Text>
        <View style={styles.inputContainer1}>
        <Image style={styles.inputIcon1} source={{uri: 'https://img.icons8.com/clouds/100/000000/employee-card.png'}}/>
        <Text style={styles.buttonText1}>ชื่อผู้รับพัสดุ: {this.state.name}{'\n'}</Text>
        </View>
        <Text ></Text>
        <View style={styles.inputContainer1}>
        <Image style={styles.inputIcon1} source={{uri: 'https://img.icons8.com/clouds/100/000000/keyboard.png'}}/>
        <Text style={styles.buttonText1}>หมายเลขพัสดุ : {this.state.tracknumber}{'\n'}</Text>
        </View>
        <Text ></Text>
        <View style={styles.inputContainer1}>
        <Image style={styles.inputIcon1} source={{uri: 'https://img.icons8.com/clouds/100/000000/time-machine.png'}}/>
        <Text style={styles.buttonText1}>วันที่/เวลา : {this.state.date}{'\n'}</Text>
        </View>
        <Text ></Text>
        <TouchableHighlight style={[styles.buttonContainer, styles.loginButton]} 
        onPress = {
              () => {
                this.clickEventListener(this.props.navigation,this.state.name)
              }
            }>
          <Text style={styles.buttonText}>ยืนยัน</Text>
        </TouchableHighlight>
      </View>
    )
  }
}



const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#FDCD00',
    alignItems: 'center',
    paddingTop:50,
  },
  icon:{
    width:200,
    height:200,
  },
  title:{
    fontSize:24,
    textAlign: 'center',
    marginTop:22,
    color: "#5F6D7A"
  },
  description: {
    marginTop:20,
    textAlign: 'center',
    color: "#A9A9A9",
    fontSize:16,
    margin:40,
  },
  buttonContainer: {
    height:45,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom:20,
    width:250,
    borderRadius:30,
  },
  loginButton: {
    backgroundColor: "#009688",
  },
  buttonText: {
    color: "#dcdcdc",
    fontSize:20,
  },
  inputs:{
    height:45,
    marginLeft:16,
    borderBottomColor: '#FFFFFF',
    flex:1,
},
inputContainer: {
  borderBottomColor: '#009688',
  backgroundColor: '#FFFFFF',  
  borderRadius:30,
  borderBottomWidth: 1,
  width:250,
  height:50,
  marginBottom:20,
  flexDirection: 'row',
  alignItems:'center'
},
inputIcon:{
  width:50,
  height:50,
  marginLeft:15,
  justifyContent: 'center'
},
  inputContainer1: {
  backgroundColor: '#FFFFFF',  
  borderRadius:30,
  width:400,
  height:40,
  marginBottom:20,
  flexDirection: 'row',
  alignSelf:'center',
},
inputIcon1:{
  width:50,
  height:40,
  marginLeft:15,
  justifyContent: 'center'
},
buttonText1: {
  color: "#000000",
  fontSize:23,
},


});
 