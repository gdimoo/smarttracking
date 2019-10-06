import SwitchToggle from 'react-native-switch-toggle';
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
  InteractionManager,
} from 'react-native';
import * as firebase from 'firebase'

export default class settingscreen extends React.Component {
  static navigationOptions = {
    header: null
  };
  constructor(props) {
    super(props);
    this.state = {
      name:"Test",
      tracknumber:"EM123456TH",
      date:"07/10/2562",
    };
  }
   findname = (uid) =>{
    // console.log(uid)
    // firebase.database().ref('userData/' + uid).child('/').once('value')
    // .then(function(snapshot){
    //   // if (snapshot.exists) {
    //   if(snapshot.exists){
    //     // console.log('error occured')
    //     let user={
    //       name: snapshot.child('name').value()
    //     }
    //     console.log(user)
    //       return user.name
  firebase.database().ref('userData').orderByChild('name').equalTo('widwa').on('value', snapshot => {
    console.log(snapshot.val()) 
    snapshot.forEach(childSnapshot => {
      let key = childSnapshot.key
      var childData = childSnapshot.val() 
      console.log(childData.name)
    })
  });
    //   }

          

  // });
  }

  // componentWillMount(){
  //   this.setState({
  //     nameuser: this.findname(firebase.auth().currentUser.uid)
  //   })
  // }

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
        {
          this.findname(firebase.auth().currentUser.uid)}
        { console.log(2)}
         { this.findname(firebase.auth().currentUser.uid)
        }

        <Image style={styles.icon} source={{uri: "https://img.icons8.com/dusk/64/000000/checked.png"}} />
        <Text style={styles.title}>ชื่อผู้รับพัสดุ: {this.state.name}{'\n'}</Text>
        <Text style={styles.title}>หมายเลขพัสดุ : {this.state.tracknumber}{'\n'}</Text>
        <Text style={styles.title}>วันที่/เวลา : {this.state.date}{'\n'}</Text>
        
      
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

});
 