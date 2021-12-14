import React from 'react';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';
import Home from './components/home';
import Nav from './components/nav';
import Login from './components/login';
import Signup from './components/signup';
function App() {
  return (
    <BrowserRouter>
    <div className="App">
      <Nav />

      <div className="auth-wrapper">
        <div className="auth-inner">
       
          <Routes>
       <Route exact path="/" element={<Home/>} />
       <Route exact path="/login" element={<Login/>} />
       <Route exact path="/signup" element={<Signup/>} />
       </Routes>
        </div>
      </div>
    </div>
    </BrowserRouter>
  );
}

export default App;
