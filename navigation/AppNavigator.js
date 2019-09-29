import React from 'react';
import { createAppContainer, createSwitchNavigator } from 'react-navigation';
import { createStackNavigator } from 'react-navigation-stack';

import MainTabNavigator from './MainTabNavigator'
import LoginScreen from '../screens/LoginScreen'
import SignupScreen from '../screens/SignupScreen'
import AuthLoadingScreen from '../screens/AuthLoadingScreen'
import SignScreen from '../screens/SignScreen'
import HomeScreen from '../screens/HomeScreen';
import MapScreen from '../screens/MapScreen';
import LinksScreen from '../screens/SearchingScreen';
import SettingsScreen from '../screens/SettingsScreen';
import AcceptingScreen from '../screens/AcceptingScreen';

const AuthStack = createStackNavigator({ Login: LoginScreen });
const SignupStack = createStackNavigator({ Signup: SignupScreen });
const SignStack = createStackNavigator({ Sign: SignScreen });
const HomeStack = createStackNavigator({
	Home: HomeScreen
	});
const LinksStack = createStackNavigator({
	Links: LinksScreen
});
const SettingsStack = createStackNavigator({
	Settings: SettingsScreen
});
const AcceptingStack = createStackNavigator({
	Accepting: AcceptingScreen
});
export default createAppContainer(createSwitchNavigator(
	{
		AuthLoading: AuthLoadingScreen,
		Main: MainTabNavigator,
		Auth: AuthStack,
		Signup: SignupStack,
		Sign: SignStack,
	},
	{
		initialRouteName: 'AuthLoading'
	}
));

