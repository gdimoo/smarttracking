import React from 'react';
import { StyleSheet, Text, View, Image,InteractionManager } from 'react-native';
import Signature from 'react-native-signature-canvas';
import * as firebase from 'firebase' 
export default class SignatureScreen extends React.Component {
  constructor(props) {
    super(props);
    this.state = { signature: null };
  }
  AddSigntoDB(signature){
    InteractionManager.runAfterInteractions(() => {
      const uid = firebase.auth().currentUser.uid;
    firebase.database().ref('ComfirmData/' + uid).update({
      signature: this.state.signature,
    }).catch((error) => console.log('AddSigntoDB error: ', error))
    });
    this.props.navigation.navigate('Home');
    
  }
 
  handleSignature = signature => {
    this.setState({ signature });
    this.AddSigntoDB(this.state.signature);

  };
 
  handleEmpty = () => {
    console.log('Empty');
  }

 
  render() {
    const style = `.m-signature-pad--footer
    .button {
      background-color: #009688;
      color: #583535;
    }`;
    
   
    return (
      <View style={{ flex: 1 }}>
               <View style={styles.preview}>
          {this.state.signature ? (
            <Image
              resizeMode={"contain"}
              style={{ width: 335, height: 114 }}
              source={{ uri: this.state.signature }}
            />
          ) : null}
      </View>
        <Signature
          onOK={this.handleSignature}
          descriptionText="ยินยันการรับพัสดุ"
          clearText="Clear"
          confirmText="Save"
          webStyle={style}
        />

       
      </View>
    );
  }
}
 
const styles = StyleSheet.create({
  preview: {
    width: 335,
    height: 114,
    backgroundColor: "#F8F8F8",
    justifyContent: "center",
    alignItems: "center",
    marginTop: 15
  },
  previewText: {
    color: "#FFF",
    fontSize: 14,
    height: 40,
    lineHeight: 40,
    paddingLeft: 10,
    paddingRight: 10,
    backgroundColor: "#69B2FF",
    width: 120,
    textAlign: "center",
    marginTop: 10
  },
  container:{
    flex:1,
    marginTop:20,
    backgroundColor:"#FDCD00"
    
  },
});