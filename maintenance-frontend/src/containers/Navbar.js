// import React from 'react'
// import '../Navbar.css'

// class Navbar extends React.Component{
//     render(){
//         return(
//             <div className="topnav">
//                 <a className="active" href="#home">home</a>

//             </div>
//         )
//     }
// }

// export default Navbar;

import "./Navbar.css";

const Navbar = ({ changeToYourItems, changeToForm }) => {
  return (
    <div className="navbar">
      <button onClick={changeToYourItems} href="#">
        View Your Items
      </button>
      <button onClick={changeToForm} href="#">
        Create Item
      </button>
      <button href="#">Logout</button>
    </div>
  );
};

export default Navbar;
