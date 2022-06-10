import './App.css';
import {useEffect, useState} from 'react';
import axios from 'axios';

function App() {
  const [messages, setMessages] = useState([]);

  useEffect(() => {
    axios
      .get(
        "https://8080-paolacaushi-gitpodworks-0lzbzrfebap.ws-eu47.gitpod.io/v1/graphql"
      )
      .then((res) => {
        console.log(res.data.Messages);
        setMessages(res.data.Mesages);
      });
  }, []);
  
  return (
    
    <div className="App">
      <center>
      <h1>Message Details</h1>
      <thead>
        <tr>
          <th style={{ border: "3px solid red" }}>Message ID</th>
          <th style={{ border: "3px solid red" }}>Created at</th>
          <th style={{ border: "3px solid red" }}>Message</th>
          <th style={{ border: "3px solid red" }}>Room ID</th>
        </tr>
      </thead>
      <tbody>
        {messages.map((msg) => (
          <tr key={msg.id}>
            <td style={{ border: "2px solid blue" }}>
              Message ID: {msg.id}
            </td>
            <td style={{ border: "2px solid blue" }}>
              Created At: {msg.created_at}
            </td>
            <td style={{ border: "2px solid blue" }}>
              Message: {msg.message}
            </td>
            <td style={{ border: "2px solid blue" }}>
              Room ID: {msg.room_id}
            </td>
          </tr>
        ))}
      </tbody>
      </center>
    </div>
    
  );
}

export default App;
