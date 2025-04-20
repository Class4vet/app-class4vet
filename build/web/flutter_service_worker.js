'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "1a89a904232002a33f7519dad30cbe4e",
"version.json": "91582c1d5dff03a48839bfb486b902f4",
"index.html": "2f7f27b9b2109d0b7b99502c0f4f2fb1",
"/": "2f7f27b9b2109d0b7b99502c0f4f2fb1",
"main.dart.js": "31a96b353e390d1f4ac4ba24741ee124",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "40af5ed9da8e7c2aada3aeebe564d0d8",
"assets/AssetManifest.json": "61dd5d7cb439b73d15ce48b5100df567",
"assets/NOTICES": "7966bd22e5f1ee61b77805043eb4e3f1",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "a2b3baa439c5709627ce57d5c1cbb3b7",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "a00feaf3d6018824ae7c4a17cf75c8e0",
"assets/fonts/MaterialIcons-Regular.otf": "32492b29a6172675692b5668debd75cc",
"assets/assets/icons/search.svg": "517ff67788988194a9e9dd9a78e5d1de",
"assets/assets/icons/home.svg": "c2a0a72697f23ad54806cc3562b15c1a",
"assets/assets/icons/logout.svg": "18869dd965e6f6fd6ee5c67bdf496ea5",
"assets/assets/icons/category/music.svg": "e502eade916a622d90d33834548f9565",
"assets/assets/icons/category/cooking.svg": "eaffd5af8d5562e3f35f794524efdaf5",
"assets/assets/icons/category/all.svg": "6c473a7a60413df239fc7034845530b7",
"assets/assets/icons/category/design.svg": "08a5503254c092ca2b6b44f804d5de9d",
"assets/assets/icons/category/finance.svg": "8a17e79cfebdd18d7f72369ddd162e77",
"assets/assets/icons/category/coding.svg": "c76f45512c01214c3c7b4bd8411ece24",
"assets/assets/icons/category/art.svg": "3c76f7b76358d97975d1fc39eef5ee77",
"assets/assets/icons/category/education.svg": "46a8530f1b8b10c43e40005ca58dc59c",
"assets/assets/icons/category/business.svg": "277b1b6d49c315c82b1eec9e8e4d638e",
"assets/assets/icons/shield.svg": "3d74768cd37aafacab3d4b94f2056a31",
"assets/assets/icons/time.svg": "b6147a0a82eda1dbc9c2bbda1c09bb29",
"assets/assets/icons/discover.svg": "f1277acf1acb883e4e1195ed0e6de6b1",
"assets/assets/icons/wallet.svg": "6123983f51db777543e9b795c80d3aa0",
"assets/assets/icons/bell.svg": "89d5cf9e881aff5ba4fc5bf27e8c69b5",
"assets/assets/icons/work.svg": "1175f696781a3d36f62885ac95d353a3",
"assets/assets/icons/bag.svg": "df775282951ef33b9fd8021eaeb2f92a",
"assets/assets/icons/setting.svg": "2f8345e3604aab3d83eaaba2712a65a7",
"assets/assets/icons/message.svg": "73bbbfc925b51e50b363672964de3142",
"assets/assets/icons/play1.svg": "b212529abd2f901141fc862e4eca4ffd",
"assets/assets/icons/play.svg": "33812c169543b5950324f57ce009f726",
"assets/assets/icons/chat.svg": "d9397cc23e74b6059d8eecb5cbb6e6e8",
"assets/assets/icons/send.svg": "44ab16c623e10bc171eebeebca733493",
"assets/assets/icons/more.svg": "4d9dd4fc74e2421f87b2fe83812cf360",
"assets/assets/icons/star.svg": "a1a64d8fdfb70f75f29efff5d037c73b",
"assets/assets/icons/unlock.svg": "691f227481cc14402b56f70a07672c92",
"assets/assets/icons/clock.svg": "d97fb399cb1a291f12288b3d04767366",
"assets/assets/icons/location.svg": "33717522495cf7baf1ebd93779871be3",
"assets/assets/icons/profile.svg": "85958be4123734439aca3e16ce15a6d1",
"assets/assets/icons/filter.svg": "caf83beb5cd1120a22dea2a0464ef590",
"assets/assets/icons/bookmark.svg": "530b4101ee6632aad82023dce9991d9e",
"assets/assets/icons/heart.svg": "bc9b910d76c26e2047ca47d6708f7cc4",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
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
