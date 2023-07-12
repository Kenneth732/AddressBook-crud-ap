import React, { useState, useEffect } from 'react';

function TaskList() {
  const [tasks, setTasks] = useState([]);
  const [error, setError] = useState(null);
  const [loading, setLoading] = useState(false);
  const [formData, setFormData] = useState({
    firstname: '',
    lastname: '',
    phonenumber: '',
    emailaddress: '',
    image: '',
  });

  useEffect(() => {
    fetchTasks();
  }, []);

  const fetchTasks = async () => {
    try {
      setLoading(true);
      const response = await fetch('/tasks');
      const data = await response.json();
      setTasks(data);
      setLoading(false);
    } catch (error) {
      setError('Error fetching tasks');
      setLoading(false);
    }
  };

  const handleInputChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleImageChange = (e) => {
    setFormData({ ...formData, image: e.target.files[0] });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const formDataWithImageURL = {
      ...formData,
      image: formData.image ? URL.createObjectURL(formData.image) : '',
    };

    try {
      setLoading(true);
      const response = await fetch('/tasks', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(formDataWithImageURL),
      });

      if (response.ok) {
        fetchTasks();
        setFormData({
          firstname: '',
          lastname: '',
          phonenumber: '',
          emailaddress: '',
          image: '',
        });
      } else {
        setError('Error creating task');
      }

      setLoading(false);
    } catch (error) {
      setError('Error creating task');
      setLoading(false);
    }
  };

  return (
    <div>
      {loading && <p>Loading...</p>}
      {error && <p>{error}</p>}

      <h1>Task List</h1>

      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="firstname"
          placeholder="First Name"
          value={formData.firstname}
          onChange={handleInputChange}
        />
        <br />
        <input
          type="text"
          name="lastname"
          placeholder="Last Name"
          value={formData.lastname}
          onChange={handleInputChange}
        />
        <br />
        <input
          type="text"
          name="phonenumber"
          placeholder="Phone Number"
          value={formData.phonenumber}
          onChange={handleInputChange}
        />
        <br />
        <input
          type="text"
          name="emailaddress"
          placeholder="Email Address"
          value={formData.emailaddress}
          onChange={handleInputChange}
        />
        <br />
        <input
          type="file"
          accept="image/*"
          name="image"
          onChange={handleImageChange}
        />
        <br />
        <button type="submit">Create Task</button>
      </form>

      <h2>Tasks</h2>
      {tasks.map((task) => (
        <div key={task.id}>
          <p>First Name: {task.firstname}</p>
          <p>Last Name: {task.lastname}</p>
          <p>Phone Number: {task.phonenumber}</p>
          <p>Email Address: {task.emailaddress}</p>
          {task.image && <img src={task.image} alt="Task" />}
        </div>
      ))}
    </div>
  );
}

export default TaskList;
