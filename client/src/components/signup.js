import React, { Component } from 'react'
import  Button  from './button'
export default class Signup extends Component {
    constructor(props){
        super(props);
        this.handleSubmit = this.handleSubmit(this);
    }
  handleSubmit () {
    console.log('works!')
    }
    render() {
        return (
            <form onSubmit={this.handleSubmit}>
            <div className='form-group'>
                <label>First Name</label>
                <input type='text' className='form-control' placeholder='First Name' />
            </div>
            <div className='form-group'>
                <label>Last Name</label>
                <input type='text' className='form-control' placeholder='Last Name' />
            </div> 
            <div className='form-group'>
                <label>Email</label>
                <input type='email' className='form-control' placeholder='Email' />
            </div> 
            <div className='form-group'>
                <label>Password</label>
                <input type='password' className='form-control' placeholder='Password' />
            </div> 
            <div className='form-group'>
                <label>Confirm Password</label>
                <input type='password' className='form-control' placeholder='Confirm Password' />
 <Button text='Sign Up'/>
            </div> 
            </form>
        )
    }
}
