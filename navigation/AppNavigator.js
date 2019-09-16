import React from 'react';
import { createAppContainer, createSwitchNavigator } from 'react-navigation';
import { createStackNavigator } from 'react-navigation-stack';

import MainTabNavigator from './MainTabNavigator';
import LoginScreen from '../screens/LoginScreen'
import SignupScreen from '../screens/SignupScreen'
import AuthLoadingScreen from '../screens/AuthLoadingScreen'

const AuthStack = createStackNavigator({ Login: LoginScreen });
const SignupStack = createStackNavigator({ Signup: SignupScreen });

export default createAppContainer(createSwitchNavigator(
	{
		AuthLoading: AuthLoadingScreen,
		Main: MainTabNavigator,
		Auth: AuthStack,
		Signup: SignupStack,
	},
	{
		initialRouteName: 'AuthLoading'
	}
));

