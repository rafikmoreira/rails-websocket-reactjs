import { useEffect } from "react"
import ActionCable from "actioncable"
function App() {
  const handleReceivedMessages = (message) => {
    console.log(message)
  }

  useEffect(() => {
    var cable = ActionCable.createConsumer("ws://localhost:3000/cable")

    cable.subscriptions.create(
      {
        channel: "AlertasChannel"
      },
      {
        received: (data) => {
          handleReceivedMessages(data)
        }
      }
    )
  }, [])

  return (
    <div className="App">
      <h1>WebSocket and React</h1>
      <p>Funcione!</p>
    </div>
  )
}

export default App
