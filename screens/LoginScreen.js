
import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  TextInput,
  Button,
  TouchableHighlight,
  Image,
  Alert,
  Dimensions,
  InteractionManager,
} from 'react-native';
import firebase from 'firebase'
import * as FirebaseAPI from '../modules/firebaseAPI';
import { MonoText } from '../components/StyledText';
const {width} = Dimensions.get('screen');

export default class SignUpView extends Component {
static navigationOptions = {
    header: null,
  };
  constructor(props) {
    super(props);}
   
  state = {
    email: "",
    password: ""
  };

  
  componentDidMount() {
        this.watchAuthState(this.props.navigation)
      }
    
  watchAuthState(navigation) {
      firebase.auth().onAuthStateChanged(function(user) {
        // console.log('onAuthStatheChanged: ', user)
        if(user){
          navigation.navigate('Home');
          }
        });
      }

  signUp(navigation) {
    console.log('signup() called', navigation)

    InteractionManager.runAfterInteractions(() => {
      navigation.navigate('Signup')
    })
  }

  signIn() {
    FirebaseAPI.signInUser(this.state.email, this.state.password)
  }

  render() {
    return (
      
      <View style={styles.container}>
        <Text style={styles.name}>Smart Tracking</Text>
        <View style={styles.getStartedContainer}>

          <Image source={{uri: 'https://cdn1.iconfinder.com/data/icons/fulfillment-and-shipping-delivery-service-2/64/GPS-tracking-parcel-delivery-512.png'}} style={styles.logo} 
    />
      </View>
       
        <View style={styles.inputContainer}>
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/dusk/64/000000/email.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="Email"
              keyboardType="email-address"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({email: text})}
              value={this.state.email}
              />
        </View>
        
        <View style={styles.inputContainer}>
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/dusk/100/000000/password1.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="Password"
              secureTextEntry={true}
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({password: text})}
             value={this.state.password}
              
              />
        </View>

        <TouchableHighlight style={[styles.buttonContainer, styles.signupButton]} onPress={() => this.signIn()}>
          <Text style={styles.signUpText}>Sign in</Text>
        </TouchableHighlight>
        <TouchableHighlight style={[styles.buttonContainer, styles.signupButton]} onPress={() => this.signUp(this.props.navigation)}>
          <Text style={styles.signUpText}>sign up</Text>
        </TouchableHighlight>
      </View>
      
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FDCD00',
  },
  inputContainer: {
      borderBottomColor: '#009688',
      backgroundColor: '#FFFFFF',  
      borderRadius:30,
      borderBottomWidth: 1,
      width:250,
      height:45,
      marginBottom:20,
      flexDirection: 'row',
      alignItems:'center'
  },
  inputs:{
      height:45,
      marginLeft:16,
      borderBottomColor: '#FFFFFF',
      flex:1,
  },
  inputIcon:{
    width:30,
    height:30,
    marginLeft:15,
    justifyContent: 'center'
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
  getStartedContainer: {
    alignItems: 'center',
    marginHorizontal: 10,
  },
  homeScreenFilename: {
    marginVertical: 7,
  },
  signupButton: {
    backgroundColor: "#009688",
  },
  signUpText: {
    color: 'white',
  },
  logo: {
    width:250,
    height:250,
  },
  name:{
    marginTop:10,
    fontSize:50,
    color:"#583535"
 
  }
});
 
