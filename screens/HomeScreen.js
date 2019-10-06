import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  Image,
  TouchableOpacity,
  FlatList,
  Dimensions,
  Alert,
  ScrollView,
  Platform,
  InteractionManager,
} from 'react-native';
import ignoreWarnings from 'react-native-ignore-warnings';

import * as FirebaseAPI from '../modules/firebaseAPI';
export default class Craigslist extends Component {
  static navigationOptions = {
    header: null,
  };

  logout(navigation) {
    console.log('logout() called', navigation)
    FirebaseAPI.logoutUser()

    InteractionManager.runAfterInteractions(() => {
      navigation.navigate('Auth')
    })
  }
  constructor(props) {
    super(props);
    console.disableYellowBox = true;

    this.state = {
      modalVisible:false,
      userSelected:[],
      data: [
        {id:'1',  name: "ตั้งสถานะเจ้าของบ้าน",   image:"http://icons.iconarchive.com/icons/streamlineicons/streamline-ux-free/1024/real-estate-house-icon.png"           },
        {id:'2',  name: "เช็คสถานะพัสดุ",    image:"https://cdn3.iconfinder.com/data/icons/stock-market-color/64/analyze-research-investigate-analyse-examine-zoom-512.png"      },
        {id:'3',  name: "แผนที่",       image:"http://theoystertavern.ie/wp-content/uploads/2016/05/map-icon.png" } ,
        {id:'4',  name: "ยืนยันการรับพัสดุ",       image:"https://icons-for-free.com/iconfiles/png/512/approve+browser+confirm+confirmation+seo+valid+icon-1320191077122728418.png" } ,
        
      ]
    };
  }

  clickEventListener = (item, navigation) => {
    // Alert.alert('Message', 'Item clicked. ' + item.id);
    if (item.id == '1') {
      InteractionManager.runAfterInteractions(() => {
        navigation.navigate('Settings')
      })
    }
    if (item.id == '2') {
      InteractionManager.runAfterInteractions(() => {
        navigation.navigate('Links')
      })
    }
    if (item.id == '3') {
      InteractionManager.runAfterInteractions(() => {
        navigation.navigate('Map')
      })
    }
    if (item.id == '4') {
      InteractionManager.runAfterInteractions(() => {
        navigation.navigate('Accept')
      })
    }
  }

  render() {
    return (
      
      <View style={styles.container}>
        <View style={styles.inputContainer}>
        <Image style={styles.inputIcon} source={{uri: 'https://img.icons8.com/plasticine/100/000000/home.png'}}/>
        <Text style={styles.center2}>Home </Text>
        </View>
        
        <FlatList 
          style={styles.contentList}
          
          columnWrapperStyle={styles.listContainer}
          data={this.state.data}
          keyExtractor= {(item) => {
           
            return item.id;
          }}
          
          renderItem={({item}) => {
          return (
            
            < TouchableOpacity style = {
              styles.card
              
            }
            onPress = {
              () => {
                this.clickEventListener(item, this.props.navigation)
                
              }
            } >
              <Image style={styles.image} source={{uri: item.image}}/>
              
              <View style={styles.cardContent}>
              
                <Text style={styles.name}>{item.name}</Text>
            
                < TouchableOpacity style = {
                  styles.followButton
                }
                onPress = {
                  () => this.clickEventListener(item, this.props.navigation)
                } >
                  <Text style={styles.followButtonText}>click</Text>  
                </TouchableOpacity>
              </View>
            </TouchableOpacity>
          
            
          )}}/>
          <View style={styles.center1}>

          <TouchableOpacity
            style={[styles.buttonContainer, styles.signupButton]}
            onPress={() => {this.logout(this.props.navigation)}}
          >
            <View>
            <Text style={styles.center3}>Logout</Text>

            </View>
          </TouchableOpacity>
          </View>
      </View>
      
    );
  }
}

const styles = StyleSheet.create({
  container:{
    flex:1,
    marginTop:20,
    backgroundColor:"#FDCD00",
    
    
  },
  contentList:{
    flex:1,
  },
  cardContent: {
    marginLeft:20,
    marginTop:10,
    alignItems: 'center',
  },
  image:{
    width:90,
    height:90,
    borderRadius:45,
    borderWidth:2,
    borderColor:"#ebf0f7"
  },

  card:{
    shadowColor: '#00000021',
    shadowOffset: {
      width: 0,
      height: 6,
    },
    shadowOpacity: 0.37,
    shadowRadius: 7.49,
    elevation: 12,

    marginLeft: 20,
    marginRight: 20,
    marginTop:20,
    backgroundColor:"white",
    padding: 10,
    flexDirection:'row',
    borderRadius:30,
  },

  name:{
    fontSize:18,
    flex:1,
    alignSelf:'center',
    color:"#583535",
    fontWeight:'bold'
  },
  count:{
    fontSize:14,
    flex:1,
    alignSelf:'center',
    color:"#6666ff"
  },
  followButton: {
    marginTop:10,
    height:35,
    width:100,
    padding:10,
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    borderRadius:30,
    backgroundColor: "white",
    borderWidth:1,
    borderColor:"#dcdcdc",
  },
  followButtonText:{
    color: "#137DBE",
    fontSize:15,
  },
  buttonContainer: {
    height:45,
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom:0,
    width:250,
    borderRadius:30,
  },
  signupButton: {
    backgroundColor: "#009688",
  },
  center1:{
    justifyContent: 'center',
    alignItems: 'center',
  },
  center2:{
  
    fontSize:50,
    color:"#583535",
    textAlign: 'center',
 
  },
  center3:{
  
    fontSize:14,
    color:"#583535",
    textAlign: 'center',
 
  },
  inputIcon:{
    width:75,
    height:75,
    marginLeft:20,
    flexDirection: 'row'
  },
  inputContainer: {
    width:250,
    height:60,
    marginBottom:20,
    flexDirection: 'row',

    alignSelf:'center',
},
  
  

});  
