// const io = require('./server')
// // const messageCtrl = require('./controllers/discussion')

// // io.on('connection', (socket) => {
// // 	console.log(`Connecte au client ${socket.id}`)
// // 	socket.on("joinRoom", (roomId, callback) => {
// // 			console.log("Room " + roomId + " successfuly joined!");
// // 			socket.join(roomId);
// // 			callback("OK");
// // 	})
// // 	socket.on("leaveRoom", (roomId, callback) => {
// // 			console.log("Room " + roomId + " successfuly leaved!");
// // 			socket.leave(roomId);
// // 			callback("OK")
// // 	})
// // 	socket.on('disconnect', function(data) {
// // 			console.log('Disconnect event received!');
// // 	})
// //     socket.on('sendMsg', function(data) {
// //         console.log("new Message received!")
// //         console.log(data);
// //         messageCtrl.receiveMsg(data.ownerId, data.recipientId, data.content)
// //     })
// // })