const Home = ({ changeToHome }) => {
    return (
      <div className="jumbotron bg-secondary text-center text-danger">
        <div className="container">
          <div className="ht-tm-header">
            <h1
              onClick={changeToHome}
              className="display-1 display-xxl text-uppercase"
            >
              Maintenance Matters
            </h1>
          </div>
        </div>
      </div>
    );
  };
  
  export default Home;