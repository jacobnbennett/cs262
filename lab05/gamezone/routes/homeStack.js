import React from "react";
import { createStackNavigator } from "@react-navigation/stack";

import Header from "../shared/header";
import Home from "../screens/home";
import ReviewDetails from "../screens/reviewDetails";

const Stack = createStackNavigator();

const screens = {
  Home: {
    screen: Home,
    navigationOptions: {
      headerTitle: () => <Header />,
    },
  },

  reviewDetails: {
    screen: ReviewDetails,
    navigationOptions: {
      title: "Review Details",
    },
  },
};
export default function HomeStack({ navigation }) {
  return (
    <Stack.Navigator
      screenOptions={{
        headerStyle: { backgroundColor: "#ddd" },
      }}
    >
      <Stack.Screen
        name="Home"
        component={Home}
        options={{
          headerTitle: () => (
            <Header navigation={navigation} title="GameZone" />
          ),
        }}
      />
      <Stack.Screen
        name="ReviewDetails"
        component={ReviewDetails}
        options={{ title: "Review Details" }}
      />
    </Stack.Navigator>
  );
}

// export default HomeStack;
