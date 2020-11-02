import consumer from "./consumer"

<<<<<<< Updated upstream
consumer.subscriptions.create("ChatRoomChannel", {
=======
 const appRoom = consumer.subscriptions.create("ChatRoomChannel", {
>>>>>>> Stashed changes
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
<<<<<<< Updated upstream
    // Called when there's incoming data on the websocket for this channel
  },

  speak: function() {
    return this.perform('speak');
  }
});
=======
    return alert(data['message']);
  },

  speak: function(message) {
    return this.perform('speak', {message: message});
  }
});

window.addEventListener("keypress", function(e) {
  if (e.keyCode === 13) {
    appRoom.speak(e.target.value);
    e.target.value = '';
    e.preventDefault();
  }
})
>>>>>>> Stashed changes
