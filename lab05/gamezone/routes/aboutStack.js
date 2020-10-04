import React from "react";
import { createStackNavigator } from "@react-navigation/stack";
import Header from "../shared/header";

import About from "../screens/about";

const screens = {
  About: {
    screen: About,
    navigationOptions: {
      headerTitle: () => <Header />,
    },
  },
};

// const AboutStack = createStackNavigator(screens, {
//   defaultNavigationOptions: {
//     headerTintColor: "#444",
//     headerStyle: { backgroundColor: "#eee", height: 69 },
//   },
// });

const Stack = createStackNavigator();

export default function AboutStack({ navigation }) {
  return (
    <Stack.Navigator>
      <Stack.Screen
        name="About"
        component={About}
        options={{
          headerTitle: () => (
            <Header navigation={navigation} title="About GameZone" />
          ),
        }}
      />
    </Stack.Navigator>
  );
}
