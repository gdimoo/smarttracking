import React from 'react';
import { Platform } from 'react-native';
import { createStackNavigator, createBottomTabNavigator } from 'react-navigation';

import TabBarIcon from '../components/TabBarIcon';
import HomeScreen from '../screens/HomeScreen';
import MapScreen from '../screens/MapScreen';
import LinksScreen from '../screens/SearchingScreen';
import SettingsScreen from '../screens/SettingsScreen';
import AcceptingScreen from '../screens/AcceptingScreen';
import SignScreen from '../screens/SignScreen';

const config = Platform.select({
  web: { headerMode: 'screen' },
  default: {},
});

const HomeStack = createStackNavigator(
  {
    Home: HomeScreen,
  },
  config
);

HomeStack.navigationOptions = {
  tabBarLabel: 'Home',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon
      focused={focused}
      name={
        Platform.OS === 'ios'
          ? `ios-home${focused ? '' : '-outline'}`
          : 'md-home'
      }
    />
  ),
};

HomeStack.path = '';

const LinksStack = createStackNavigator(
  {
    Links: LinksScreen,
  },
  config
);

LinksStack.navigationOptions = {
  tabBarLabel: 'Searching',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name={Platform.OS === 'ios' ? 'ios-search' : 'md-search'} />
  ),
};

LinksStack.path = '';

const SettingsStack = createStackNavigator(
  {
    Settings: SettingsScreen,
  },
  config
);

SettingsStack.navigationOptions = {
  tabBarLabel: 'Settings',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name={Platform.OS === 'ios' ? 'ios-options' : 'md-options'} />
  ),
};

SettingsStack.path = '';

const MapStack = createStackNavigator(
  {
    Map: MapScreen,
  },
  config
);

MapStack.navigationOptions = {
  tabBarLabel: 'Map',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name={Platform.OS === 'ios' ? 'ios-map' : 'md-map'} />
  ),
};

MapStack.path = '';

const AcceptStack = createStackNavigator(
  {
    Accept: AcceptingScreen,
  },
  config
);

AcceptStack.navigationOptions = {
  tabBarLabel: 'Accepting',
  tabBarIcon: ({ focused }) => (
    < TabBarIcon focused = {
      focused
    }
    name = {
      Platform.OS === 'ios' ? 'ios-checkmark' : 'md-checkmark'
    }
    />
  ),
};

AcceptStack.path = '';

const SignStack = createStackNavigator({
    Sign: SignScreen,
  },
  config
);
SignStack.path = '';

const tabNavigator = createBottomTabNavigator({
  HomeStack,
  // LinksStack,
  // SettingsStack,
  // MapStack,
  // AcceptStack,
});

tabNavigator.path = '';

export default tabNavigator;
