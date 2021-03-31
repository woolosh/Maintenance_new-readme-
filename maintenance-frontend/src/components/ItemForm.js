import React from "react";

const URL = "http://localhost:3001/items";

class ItemForm extends React.Component {
  state = {
    name: "",
    category: "",
    date: "",
    description: "",
    price: null,
    image:""
  };


  handleSubmit = (e) => {
    e.preventDefault()

    let newItem = {
        name: this.state.name,
        category: this.state.category,
        date: this.state.date,
        description: this.state.description,
        price: this.state.price,
        image: this.state.image
    }

    let reqObj = {
        headers: {"Content-Type": "application/json"},
        method: "POST",
        body: JSON.stringify(newItem)
    }

    fetch(URL, reqObj)
        .then(r => r.json())
        .then(newItem => {
            this.props.addNewItem(newItem)
            this.setState({
                name: "",
                category: "",
                date: "",
                description: "",
                price: "",
                image: ""

            })
        })

}

  render() {
    return (
      <>
        <h3>Create Item:</h3>
        <form
          onSubmit={this.handleSubmit}
          className="mb-4 p-3 border border-primary"
        >
          <div className="form-group">
            <label htmlFor="item-name">Item Name: </label>
            <input
              // value={this.state.name}
              onChange={(e) => this.setState({ name: e.target.value })}
              type="text"
              className="form-control"
              id="item-name"
              placeholder="Required"
            />
          </div>
          <div className="form-group">
            <label htmlFor="item-category">Category: </label>
            <input
              onChange={(e) => this.setState({ category: e.target.value })}
              type="text"
              className="form-control"
              id="item-category"
              placeholder="Required"
            />
          </div>
          <div className="form-group">
            <label htmlFor="item-category">Date: </label>
            <input
              onChange={(e) => this.setState({ date: e.target.value })}
              type="text"
              className="form-control"
              id="item-date"
              placeholder="XX/XX/XXXX"
            />
          </div>
          <div className="form-group">
            <label htmlFor="item-category">Description: </label>
            <input
              onChange={(e) => this.setState({ description: e.target.value })}
              type="text"
              className="form-control"
              id="item-description"
              placeholder="Can Edit Later"
            />
          </div>
          <div className="form-group">
            <label htmlFor="item-category">image: </label>
            <input
              onChange={(e) => this.setState({ image: e.target.value })}
              type="text"
              className="form-control"
              id="item-image"
              placeholder="Can Edit Later"
            />
          </div>
          <div className="form-group">
            <label htmlFor="item-price">price: </label>
            <input
              onChange={(e) => this.setState({ price: e.target.value })}
              type="text"
              className="form-control"
              id="item-price"
              placeholder="Price of Item"
            />
          </div>
          <button type="submit" className="btn btn-primary">
            Submit
          </button>{" "}
        </form>
      </>
    );
  }
}

export default ItemForm;