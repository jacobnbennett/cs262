import React from "react";
import { createStackNavigator } from "react-navigation-stack";
import { createAppContainer } from "react-navigation";

import Home from "../screens/home";
import ReviewDetails from "../screens/reviewDetails";

const screens = {
  Home: {
    screen: Home,
    navigationOptions: {
      title: "GameZone",
      //   headerStyle: { backgroundColor: "#eee" },
    },
  },
  ReviewDetails: {
    screen: ReviewDetails,
    navigationOptions: {
      title: "ReviewDetails",
      //   headerStyle: { backgroundColor: "#eee" },
    },
  },
};
const HomeStack = createStackNavigator(screens, {
  defaultNavigationOptions: {
    headerTintColor: "#444",
    headerStyle: { backgroundColor: "#eee", height: 60 },
  },
});

export default createAppContainer(HomeStack);
// export default function HomeStack() {
//   return (
//     <Stack.Navigator
//       screenOptions={{ headerStyle: { backgroundColor: "#ddd" } }}
//     >
//       <Stack.Screen
//         name="Home"
//         component={Home}
//         options={{ title: "GameZone" }}
//       />
//     </Stack.Navigator>
//   );
// }
