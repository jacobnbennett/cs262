import { StatusBar } from "expo-status-bar";
import React, { useState } from "react";
import {
  StyleSheet,
  Text,
  View,
  Button,
  TextInput,
  FlatList,
} from "react-native";

export default function App() {
  const [name, setName] = useState("I");
  const [person, setPerson] = useState({ name: "mario", age: "46" });
  const [age, setAge] = useState(0);

  const clickHandler = () => {
    // setName("chun-li");
    // setPerson({ name: "luigi", age: { age } });

    setAge(age + 1);
    setBirthdays(birthdays.concat({ key: (age + 1).toString() }));
  };
  const [people, setPeople] = useState([
    { name: "shaun", id: "1" },
    { name: "me", id: "2" },
    { name: "yoshi", id: "3" },
    { name: "boo", id: "4" },
    { name: "bieber", id: "5" },
    { name: "baby", id: "6" },
  ]);

  const [birthdays, setBirthdays] = useState([]);

  return (
    <View style={styles.container}>
      <Text>Enter Name: </Text>
      <TextInput
        multiline
        style={styles.input}
        placeholder="e.g John Doe"
        onChangeText={(val) => setName(val)}
      />
      {/* <FlatList
        numColumns={1}
        keyExtractor={(item) => item.id}
        data={people}
        renderItem={({ item }) => <Text style={styles.item}>{item.name}</Text>}
      /> */}

      {/* <ScrollView>
        {people.map((item) => (
          <View key={item.key}>
            <Text style={styles.item}>{item.name}</Text>
          </View>
        ))}
      </ScrollView> */}

      {/* <TextInput
        numeric
        style={styles.input}
        placeholder="e.g 19"
        onChangeText={(val) => setAge(val)}
      /> */}

      <Text>
        {" "}
        {name} is {age} years old
      </Text>
      <StatusBar style="auto" />
      <View style={styles.buttonContainer}>
        <Button title="Birthday" onPress={clickHandler} />
      </View>

      <FlatList
        numColumns={1}
        // keyExtractor={(item) => item.id}
        data={birthdays}
        renderItem={({ item }) => <Text style={styles.item}>{item.key}</Text>}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 2,
    backgroundColor: "#fff",
    alignItems: "center",
    justifyContent: "center",
  },

  input: {
    borderWidth: 1,
    borderColor: "#777",
    padding: 8,
    margin: 10,
    width: 200,
  },

  item: {
    marginTop: 24,
    paddingTop: 30,
    backgroundColor: "white",
    fontSize: 24,
    marginHorizontal: 10,
    marginTop: 24,
  },

  buttonContainer: {
    marginTop: 20,
  },
});
