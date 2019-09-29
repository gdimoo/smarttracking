import * as firebase from 'firebase'

export const createUser = (email, password,name,telephone,address,Latitude,Longitude) => {
    console.log('CreateUser has been called.')

    firebase.auth().createUserWithEmailAndPassword(email, password)
        .then(() =>{
            const uid = firebase.auth().currentUser.uid;
            firebase.database().ref('userData/${uid}').set({
                name:name,
                telephone:telephone, 
                address:address, 
                Latitude:parseFloat(Latitude), 
                Longitude:parseFloat(Longitude)
            }).catch((error) => console.log('createUser error: ', error))
        });
}

export const signInUser = (email, password) => {
    firebase.auth().signInWithEmailAndPassword(email, password)
        .catch((error) => console.log('createUser error: ', error));
}

export const logoutUser = () => {
    firebase.auth().signOut();
}