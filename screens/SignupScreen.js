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
  TouchableOpacity,
} from 'react-native';
import firebase from 'firebase'
import * as FirebaseAPI from '../modules/firebaseAPI';
import { MonoText } from '../components/StyledText';
const {width} = Dimensions.get('screen');

export default class LoginScreen extends React.Component {
  constructor(props) {
    super(props);
  }
  
  static navigationOptions = {
    title: 'Signup',
  };

  state = {
    email: "",
    password: "",
    name: "",
    telephone:"",
    Latitude: "",
    Longitude: "",
    address:"",
    
  };

  
  componentDidMount() {
        this.watchAuthState(this.props.navigation)
      }
    
  watchAuthState(navigation) {
      firebase.auth().onAuthStateChanged(function(user) {
        console.log('onAuthStatheChanged: ', user)
        if(user){
          navigation.navigate('Home');
          }
        });
      }


  createUser() {
    FirebaseAPI.createUser(this.state.email, this.state.password, this.state.name
      , this.state.telephone, this.state.address, this.state.Latitude, this.state.Longitude)
  }

  signIn() {
    FirebaseAPI.signInUser(this.state.email, this.state.password)
  }

  render() {
    return (
      <View style={styles.container}>
      
      <View style={styles.inputContainer}> 
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/ios/50/000000/name.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="First name - Last name"
              // keyboardType="default"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({name: text})}
              value={this.state.name}
              />
      </View>
      <View style={styles.inputContainer}> 
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/ios/50/000000/ringer-volume.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="Telephone"
              keyboardType="phone-pad"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({Telephone: text})}
              value={this.state.Telephone}
              />
      </View>
      <View style={styles.inputContainer}> 
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/ios/50/000000/home-page.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="address"
              // keyboardType = "default"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({address: text})}
              value={this.state.address}
              />
      </View>
      <View style={styles.inputContainer}> 
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/ios/50/000000/location-update.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="Latitude"
              keyboardType = "numeric"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({Latitude: text})}
              value={this.state.Latitude}
              />
      </View>
      <View style={styles.inputContainer}> 
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/ios/50/000000/location-update.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="Longitude"
              keyboardType = "numeric"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({Longitude: text})}
              value={this.state.Longitude}
              />
      </View>

      <View style={styles.inputContainer}> 
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/dotty/80/000000/add-user-male.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="Email"
              keyboardType="email-address"
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({email: text})}
              value={this.state.email}
              />
        </View>

        <View style={styles.inputContainer}>
          <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/dotty/80/000000/key.png'}}/>
          <TextInput style={styles.inputs}
              placeholder="Password"
              secureTextEntry={true}
              underlineColorAndroid='transparent'
              onChangeText={(text) => this.setState({password: text})}
              value={this.state.password}
              
              />
        </View>

         

          <TouchableOpacity
            style={[styles.buttonContainer, styles.signupButton]}
            onPress={() => this.createUser()}
          >
            <View>
            <Text style={styles.signUpText}>Create New User</Text>
             
            </View>
          </TouchableOpacity>


          <TouchableOpacity
            style={[styles.buttonContainer, styles.signupButton]}
            onPress={() => this.props.navigation.navigate('Auth')}
          >
            <View>
            <Text style={styles.signUpText}>Back to Log In</Text>

            </View>
          </TouchableOpacity>
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
    fontSize:30,
    color:"#583535"
 
  }
});