import { render } from "@testing-library/react";
import React from "react";

//Components
import ItemForm from "./ItemForm";
// import ItemCard from "./ItemCard";

class ItemContainer extends React.Component {
  render() {
    return (
      <div className="container mt-5">
        <ItemForm />
        <div className="form-group">
          <label htmlFor="search-text">Search:</label>
          <input
            // onChange={this.changeSearch}
            type="text"
            className="form-control"
            id="search-text"
            placeholder="Search by Item Name"
          />
        </div>
      </div>
    );
  }
}

export default ItemContainer;