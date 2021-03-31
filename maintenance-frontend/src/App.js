import logo from './logo.svg';
import './App.css';
import Navbar from './containers/Navbar'
import React from 'react'
import ItemCollection from './containers/ItemCollection'
import ItemsPage from './containers/ItemsPage'




class App extends React.Component{

  render() {
    return (
      <div className="App">
        <ItemsPage />
      </div>
    );
  }


}


export default App;