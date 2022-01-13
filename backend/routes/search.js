const express = require('express');
const router = express.Router();
const end = require('../middleware/end');
const searchCtrl = require('../controllers/search');

router.get('/', searchCtrl.searchGlobal);

// Ctrl not yet done (and maybe never)
router.get('/tracks', searchCtrl.searchTracks, end);
// router.get('/user/friends', searchCtrl.searchFriends);


module.exports = router