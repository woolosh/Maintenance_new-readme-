import React from 'react'
import Navbar from './Navbar'
import ItemCollection from './ItemCollection'
import Home from "./Home";
import ItemForm from '../components/ItemForm'

const URL = "http://localhost:3001/items"

class Itemspage extends React.Component{

    state = {
        items: [],
        view: "Home",
      }
      
      changeToHome = () => this.setState({ view: "Home" });

      // changeToYourItems = () => this.setState({ view: "Item Container" });
      
      changeToForm = () => this.setState({ view: "Item Form" });


      addNewItem = (newItem) => {
        this.setState({items: [...this.state.items, newItem]})
    }

      componentDidMount(){
        fetch(URL)
        .then(r => r.json())
        .then(items => this.setState({items}))
      }
      
      render(){
        return(
          <div>
          
          <Home changeToHome={this.changeToHome} />
          {this.state.view === "Home" ? (<Navbar changeToYourItems={this.changeToYourItems} changeToForm={this.changeToForm} />) : null}

          {this.state.view === "Item Form" ? (<ItemForm addNewItem={this.addNewItem} changeToForm={this.changeToForm}/>) : null}
            
          
          <ItemCollection items={this.state.items}/>
          </div>
        )
      }
      

      


}


export default Itemspage;