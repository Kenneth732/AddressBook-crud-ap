import React, { useEffect, useState } from 'react'

function AddressBook(){
    const [contacts, setContacts] = useState([]);
    const [firstName, setFirstName] = useState('');
    const [lastName, setLastName] = useState('');
    const [phoneNumber, setPhoneNumber] = useState('');
    const [emailAddress, setEmailAddress] = useState('');
  
    useEffect(() => {
      fetch('/tasks')
    },  []);
    return(
        <div className></div>
    )
}

export default AddressBook