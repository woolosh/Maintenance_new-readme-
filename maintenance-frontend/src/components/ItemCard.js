import React from 'react'
import 'bootstrap/dist/css/bootstrap.min.css';
import {Card, ListGroupItem, ListGroup} from 'react-bootstrap'

const ItemCard = props =>{

    return (
        <Card style={{ width: '18rem' }}>
        <Card.Img variant="top" src={props.item.image} />
        <Card.Body>
          <Card.Title>{props.item.name}</Card.Title>
          <Card.Text>
            
          </Card.Text>
        </Card.Body>
        <ListGroup className="list-group-flush">
          <ListGroupItem>${props.item.price}</ListGroupItem>
          <ListGroupItem>{props.item.category}</ListGroupItem>
          <ListGroupItem>dwdd</ListGroupItem>
        </ListGroup>
        {/* <Card.Body>
          <Card.Link href="#">Card Link</Card.Link>
          <Card.Link href="#">Another Link</Card.Link>
        </Card.Body> */}
      </Card>
    )



}


export default ItemCard;