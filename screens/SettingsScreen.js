import SwitchToggle from 'react-native-switch-toggle';
import React, { Component } from 'react';
import {
  KeyboardAvoidingView,
  StyleSheet,
  ScrollView,
  View,
  Image,
  Text,
  TouchableHighlight,
  TextInput,
} from 'react-native';
import * as firebase from 'firebase'

export default class settingscreen extends React.Component {
  static navigationOptions = {
    header: null
  };
  constructor(props) {
    super(props);
    this.state = {
      switchOn1: false,
      message:"",
     
    };
  }

  render() {
    return (
      
<KeyboardAvoidingView style={styles.keyboardAvoidContainer} behavior="padding">
   < ScrollView style = {{flex: 1,backgroundColor: '#FDCD00'}} >
      <View style={styles.container}>
        <Image style={styles.icon} source={{uri: "https://img.icons8.com/clouds/50/000000/new-letter.png"}} />
        <Text style={styles.title}>สถานะ : ไม่อยู่บ้าน/อยู่บ้าน{'\n'}</Text>
        <SwitchToggle
       switchOn={this.state.switchOn1}
       onPress={this.onPress1}
       /> 
        <Text style={styles.title}>ข้อความ : กรณีไม่อยู่บ้าน{'\n'}</Text>
        <View style={styles.inputContainer}>
          <TextInput style={styles.inputs}
              placeholder="message"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({message:text})}
              value={this.state.message}/>
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/flat_round/40/000000/secured-letter.png'}}/>
        </View>
      
        
        <TouchableHighlight style={[styles.buttonContainer, styles.loginButton]} onPress={() => {
              const uid = firebase.auth().currentUser.uid;
              firebase.database().ref('userData/' + uid).update({
                message: this.state.message
              }).catch((error) => console.log('error: ', error));
        }}>
          <Text style={styles.buttonText}>อัพเดทสถานะ</Text>
        </TouchableHighlight>
    
      </View>
      </ScrollView>
        </KeyboardAvoidingView>
    )
  }
  onPress1 = () => {
    this.setState({ switchOn1: !this.state.switchOn1 });

    const uid = firebase.auth().currentUser.uid;
    firebase.database().ref('userData/' + uid).update({
      status: !this.state.switchOn1
    }).catch((error) => console.log('error: ', error));
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
    color: "#000000"
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
keyboardAvoidContainer: {
  flex: 1,
  backgroundColor: 'orange'
}

});
 
