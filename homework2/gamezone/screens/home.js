import React, { useState, useEffect } from 'react';
import { StyleSheet, View, Text, TouchableOpacity, FlatList, ActivityIndicator } from 'react-native';
import { globalStyles } from '../styles/global';
import Card from '../shared/card';

export default function Home({ navigation }) {
    const [isLoading, setLoading] = useState(true);
    const [data, setData] = useState([]);

    const [reviews, setReviews] = useState([
        { title: 'Zelda, Breath of Fresh Air', rating: 5, body: 'lorem ipsum', key: '1' },
        { title: 'Gotta Catch Them All (again)', rating: 4, body: 'lorem ipsum', key: '2' },
        { title: 'Not So "Final" Fantasy', rating: 3, body: 'lorem ipsum', key: '3' },
    ]);

    useEffect(() => {
        fetch('https://cs262-monopoly-service.herokuapp.com/players/')
            .then((response) => response.json())
            .then((json) => setData(json))
            .catch((error) => console.error(error))
            .finally(() => setLoading(false));
            // console.log(JSON.stringify(data));
      }, []);

    return (
        // <View style={globalStyles.container}>
        //     <FlatList data={reviews} renderItem={({ item }) => (
        //         <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
        //             <Card>
        //                 <Text style={globalStyles.titleText}>{ item.title }</Text>
        //             </Card>
        //         </TouchableOpacity>
        //     )} />
        // </View>

                <View style={{ flex: 1, padding: 24 }}>
                    {isLoading ? <ActivityIndicator/> : (
            <FlatList
            data={data}
            keyExtractor={({ id }, index) => id.toString()}
            renderItem={({ item }) => (
                <TouchableOpacity onPress={() => navigation.navigate('ReviewDetails', item)}>
                    <Card>
                        <Text>{item.email}</Text>

                    </Card>

                </TouchableOpacity>
               
            )}
        />
                    )}

        </View>
        

        // <View style={{ flex: 1, padding: 24 }}>
        // {isLoading ? <ActivityIndicator/> : (
        //     <FlatList
        //         data={data}
        //         keyExtractor={({ id }, index) => id.toString()}
        //         renderItem={({ item }) => (
        //             <Text>{item.id}, {item.email}, {item.name}</Text>
        //         )}
        //     />
        // )}
        // </View>


    );
}
