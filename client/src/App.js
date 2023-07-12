import React, { useEffect, useState } from 'react';
import './App.css';
import AddressBook from './components/AddressBook';

function App() {
  const [contacts, setContacts] = useState([])

  useEffect(() => {
    fetch('/task')
    .then((res) => res.json())
    .then((data) => {
      setContacts(data)
    })
  })
  
  return (
    <div className="App">
      <AddressBook/>
    </div>
  );
}

export default App;
