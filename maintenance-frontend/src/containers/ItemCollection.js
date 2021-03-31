import React from 'react'
import ItemCard from '../components/ItemCard'


class ItemCollection extends React.Component{

    render() {
        console.log(this.props);
        return (
          <div className="ui four column grid">
            <div className="row">
              {this.props.items.map((item) => <ItemCard item={item} key={item.id}/>)}
            </div>
          </div>
        );
      }




}


export default ItemCollection;