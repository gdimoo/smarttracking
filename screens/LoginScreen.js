import React from 'react';
import { 
  View, 
  Text, 
  StyleSheet, 
  Platform,
  TextInput,
  TouchableOpacity,
  InteractionManager,
 } from 'react-native';
import { ScrollView } from 'react-native-gesture-handler';
import firebase from 'firebase'
import * as FirebaseAPI from '../modules/firebaseAPI';


export default class LoginScreen extends React.Component {
  constructor(props) {
    super(props);
  }
  
  static navigationOptions = {
    title: 'Login',
  };

  state = {
    email: "Enter email",
    password: "Enter password"
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


  // createUser() {
  //   FirebaseAPI.createUser(this.state.email, this.state.password)
  // }
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
          
        <View style={styles.textContainer}>
          <Text style={styles.text}>Login Below</Text>
          <TextInput 
            style={styles.textInput}
            onChangeText={(text) => this.setState({email: text})}
            value={this.state.email}
          />
          <TextInput 
            style={styles.textInput}
            onChangeText={(text) => this.setState({password: text})}
            value={this.state.password}
          />

          <TouchableOpacity
            style={{marginTop: '5%'}}
            onPress={() => this.signIn()}
          >
            <View>
              <Text>Log In</Text>
            </View>
          </TouchableOpacity>


          <TouchableOpacity
            style={{marginTop: '5%'}}
            onPress={() => this.signUp(this.props.navigation)}
          >
            <View>
              <Text>Signup</Text>
            </View>
          </TouchableOpacity>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  textContainer: {
    flex: 1,
    alignItems: 'center',
    marginHorizontal: 50,
    paddingTop: '50%',
  },
  textInput: {
    fontSize: 17,
    lineHeight: 24,
    width: '75%',
  },
  text: {
    fontSize: 17,
    color: 'rgba(96,100,109, 1)',
    lineHeight: 24,
    width: '75%',
    marginBottom: '10%',
    textAlign: 'center',
  },
});