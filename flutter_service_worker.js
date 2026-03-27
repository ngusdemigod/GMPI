'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c0d3e3611776d047ce0e93652729cb3b",
"assets/AssetManifest.bin.json": "24e6f72f7770d9fe27bf7731528e38a5",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/huge-icons-outline-appgenz.ttf": "f2a7434d742d42dcf5984a3958d0546a",
"assets/assets/fonts/iconia-solid-appgenz.ttf": "fbb98259df2459a825ca8c1932e87db4",
"assets/assets/images/3d--closed-black-gift-box.webp": "00fb466d3ba3efc4ebd952b1976e40f9",
"assets/assets/images/cake-duotone.svg": "a50ecab68759f010626e3824125ea2aa",
"assets/assets/images/calendar-duotone.svg": "4d412785afec109bdf25a7d2699c630d",
"assets/assets/images/chats-circle-duotone.svg": "2445e085a17e8738441437e4c84e0936",
"assets/assets/images/credit-card-duotone.svg": "6f7d8ecac401b7b97039e096b95fc5e4",
"assets/assets/images/currency-ngn-duotone.svg": "a280d2604242bdaf2d6a9afde50347f8",
"assets/assets/images/delete.png": "d7a0287f299be36ea78206df2e3dbe85",
"assets/assets/images/download_(4).jpg": "0938c339f6f5f547d6b91b5620a0373d",
"assets/assets/images/download_(9).jpg": "41c40941a5320d661884baf7bdbfa63c",
"assets/assets/images/e6c8ade623c28bea3cca73b9b1851d6a.jpg": "57d5482b23042d166b2121e8f79018d3",
"assets/assets/images/error_image.jpg": "a932fa626b63896ba119b8fd3e7b20f4",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/gift-duotone_(3).svg": "f1161012dcdb04103c1c4b3831dc08cf",
"assets/assets/images/image-diXhCtmvrDrnGWIrgC6kIFZe6Zg9CL.webp": "0fe0fbbe6c91e3e29a993be013462e82",
"assets/assets/images/image-DNaKSDV2Vm6rz8yKS6WtuJwy4rLZwh.webp": "793cfdd721ff7a4befa83ac725b44f7c",
"assets/assets/images/image-NA5KNVf0B0ZL38c6nyAlLrWPV7y0Gd.webp": "b34f758f8164b90506bb2539a1fe85fa",
"assets/assets/images/image-NRu4z2biW2PxBnf6agPBkk3XHG3WTZ.webp": "69aac474110c678c51c213b4fb6181ad",
"assets/assets/images/image-square-duotone.svg": "e6fe29bd0e3c5a01456d7e9667e46924",
"assets/assets/images/image-xaFT1FlszEsDcOmAn7aePOhEQFXIN3.webp": "52b05a174567c0c04b2f68df97187a29",
"assets/assets/images/Light_of_Love_Mission_Church_-_Jee_Kim_w_(1).webp": "3acd9c2e0aa22a0a433e673d6177bf5c",
"assets/assets/images/line-art.png": "5ebfd6ee58daa49e7e43a90912974f74",
"assets/assets/images/Morado.jpg": "9f696d4eeb0fd315f18d79dfb2416d24",
"assets/assets/images/mother.png": "32fe99b8d5d8dc832691efa3341accfd",
"assets/assets/images/rows-plus-top-duotone_(2).svg": "27cb527edb71e7550c4e9ba391069643",
"assets/assets/images/squares-four-duotone.svg": "d521588eb9e9da212bdb8cf5c80c6a97",
"assets/assets/images/STUDIO_NA_EO_.jpg": "0862743333217355ac14b733dfd81ba5",
"assets/assets/images/user-duotone.svg": "09f59ee46dae31d0832b0d7cfb98846f",
"assets/assets/images/users-duotone.svg": "4ea6bcfa936180daee59eca069c25b12",
"assets/assets/images/users-duotone_(2).svg": "7e723b6c5665810a2ca5cea33889a337",
"assets/assets/images/video-conference-duotone.svg": "ba6539f5f798c69a2d292d1d18f01836",
"assets/assets/images/Wallpaper_(1).jpg": "1485ba5205b514a7cb9b22386c39024f",
"assets/assets/images/warning-circle-duotone.svg": "9da1f9c9125eab44088310cffec69107",
"assets/assets/images/WhatsApp-Image-2025-12-18-at-6.58.png": "9e1b3d1e564149897e8f32ba16b8921d",
"assets/assets/jsons/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "94b458f83333a953612ff030e9c389fe",
"assets/fonts/MaterialIcons-Regular.otf": "5af4edbfe8368a84aac188d7eb3e5cbf",
"assets/NOTICES": "89f20b1b44e1d61609f06cc4ff70fefa",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "d7d83bd9ee909f8a9b348f56ca7b68c6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "7fc3c05e5c6f747c1e5813ae856909c1",
"assets/packages/wakelock_plus/assets/no_sleep.js": "7748a45cd593f33280669b29c2c8919a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/shaders/stretch_effect.frag": "40d68efbbf360632f614c731219e95f0",
"canvaskit/canvaskit.js": "8331fe38e66b3a898c4f37648aaf7ee2",
"canvaskit/canvaskit.js.symbols": "a3c9f77715b642d0437d9c275caba91e",
"canvaskit/canvaskit.wasm": "9b6a7830bf26959b200594729d73538e",
"canvaskit/chromium/canvaskit.js": "a80c765aaa8af8645c9fb1aae53f9abf",
"canvaskit/chromium/canvaskit.js.symbols": "e2d09f0e434bc118bf67dae526737d07",
"canvaskit/chromium/canvaskit.wasm": "a726e3f75a84fcdf495a15817c63a35d",
"canvaskit/skwasm.js": "8060d46e9a4901ca9991edd3a26be4f0",
"canvaskit/skwasm.js.symbols": "3a4aadf4e8141f284bd524976b1d6bdc",
"canvaskit/skwasm.wasm": "7e5f3afdd3b0747a1fd4517cea239898",
"canvaskit/skwasm_heavy.js": "740d43a6b8240ef9e23eed8c48840da4",
"canvaskit/skwasm_heavy.js.symbols": "0755b4fb399918388d71b59ad390b055",
"canvaskit/skwasm_heavy.wasm": "b0be7910760d205ea4e011458df6ee01",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"flutter.js": "24bc71911b75b5f8135c949e27a2984e",
"flutter_bootstrap.js": "35e57f5979246266a34e04d9f208d562",
"icons/error_image.jpg": "a932fa626b63896ba119b8fd3e7b20f4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "7b6ddd7c25c36617e27802aa60e7bdfb",
"/": "7b6ddd7c25c36617e27802aa60e7bdfb",
"main.dart.js": "1b8bc999ab8969ca2b2259621e895f73",
"manifest.json": "b870eaf6b8172ca6bf3ea020facf5308",
"version.json": "bfdee86f860a51d36576fa536e706591",
"WhatsApp-Image-2025-12-18-at-6.58.png": "9e1b3d1e564149897e8f32ba16b8921d"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
