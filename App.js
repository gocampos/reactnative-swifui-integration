/**
 * Sample React Native App
 */

import React, {useState} from 'react';
import {requireNativeComponent} from 'react-native';

const SwiftUIButton = requireNativeComponent('SwiftUIButton');

const App = () => {
  const [count, updateCount] = useState(0);
  const [count2, updateCount2] = useState(0);
  return (
    <>
      <SwiftUIButton
        style={styles.container}
        count={count}
        onCountChange={e => updateCount(e.nativeEvent.count)}
      />
      <SwiftUIButton
        style={styles.container}
        count={count2}
        onCountChange={e => updateCount2(e.nativeEvent.count)}
      />
      <SwiftUIButton
        style={styles.container}
        count={count2}
        onCountChange={e => updateCount2(e.nativeEvent.count)}
      />
    </>
  );
};

const styles = {
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
};

export default App;
