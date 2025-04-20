'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"index.html": "050f53c4e08dcb800cc0260734757d3b",
"/": "050f53c4e08dcb800cc0260734757d3b",
"assets/NOTICES": "664894aa21b77ab95f3d3f1366a92c42",
"assets/assets/icons/unlock.svg": "691f227481cc14402b56f70a07672c92",
"assets/assets/icons/logout.svg": "18869dd965e6f6fd6ee5c67bdf496ea5",
"assets/assets/icons/setting.svg": "2f8345e3604aab3d83eaaba2712a65a7",
"assets/assets/icons/category/safety_education.svg": "ceec7b9facb591f2d2f073bffaff5671",
"assets/assets/icons/category/finance.svg": "8a17e79cfebdd18d7f72369ddd162e77",
"assets/assets/icons/category/education.svg": "46a8530f1b8b10c43e40005ca58dc59c",
"assets/assets/icons/category/music.svg": "e502eade916a622d90d33834548f9565",
"assets/assets/icons/category/coding.svg": "c76f45512c01214c3c7b4bd8411ece24",
"assets/assets/icons/category/legal_education.svg": "c1ba74c5e79a343b736dcb22b0a2f76f",
"assets/assets/icons/category/advanced_lifeguard.svg": "899fa7d1b73209acfc8448235b345bfa",
"assets/assets/icons/category/all.svg": "408b10d9b6c406de8990cc30d673e000",
"assets/assets/icons/category/field_practice.svg": "f96525c38584264a15819de2b5f81350",
"assets/assets/icons/category/emergency_response.svg": "c204a5454c0ff896efe596b335e790a0",
"assets/assets/icons/category/cooking.svg": "eaffd5af8d5562e3f35f794524efdaf5",
"assets/assets/icons/category/basic_lifeguard.svg": "fb5b0a217334863b3ca49b0bdba75234",
"assets/assets/icons/category/business.svg": "277b1b6d49c315c82b1eec9e8e4d638e",
"assets/assets/icons/category/design.svg": "08a5503254c092ca2b6b44f804d5de9d",
"assets/assets/icons/category/certification.svg": "37ee9dd725ee29aeb44e4e93e3edc102",
"assets/assets/icons/category/art.svg": "3c76f7b76358d97975d1fc39eef5ee77",
"assets/assets/icons/category/equipment_management.svg": "881865e37fa2595cff8907414bf41870",
"assets/assets/icons/bookmark.svg": "530b4101ee6632aad82023dce9991d9e",
"assets/assets/icons/home.svg": "c2a0a72697f23ad54806cc3562b15c1a",
"assets/assets/icons/shield.svg": "3d74768cd37aafacab3d4b94f2056a31",
"assets/assets/icons/send.svg": "44ab16c623e10bc171eebeebca733493",
"assets/assets/icons/bag.svg": "df775282951ef33b9fd8021eaeb2f92a",
"assets/assets/icons/bell.svg": "89d5cf9e881aff5ba4fc5bf27e8c69b5",
"assets/assets/icons/profile.svg": "85958be4123734439aca3e16ce15a6d1",
"assets/assets/icons/time.svg": "b6147a0a82eda1dbc9c2bbda1c09bb29",
"assets/assets/icons/play.svg": "33812c169543b5950324f57ce009f726",
"assets/assets/icons/more.svg": "4d9dd4fc74e2421f87b2fe83812cf360",
"assets/assets/icons/search.svg": "517ff67788988194a9e9dd9a78e5d1de",
"assets/assets/icons/discover.svg": "f1277acf1acb883e4e1195ed0e6de6b1",
"assets/assets/icons/filter.svg": "caf83beb5cd1120a22dea2a0464ef590",
"assets/assets/icons/clock.svg": "d97fb399cb1a291f12288b3d04767366",
"assets/assets/icons/play1.svg": "b212529abd2f901141fc862e4eca4ffd",
"assets/assets/icons/heart.svg": "bc9b910d76c26e2047ca47d6708f7cc4",
"assets/assets/icons/work.svg": "1175f696781a3d36f62885ac95d353a3",
"assets/assets/icons/location.svg": "33717522495cf7baf1ebd93779871be3",
"assets/assets/icons/star.svg": "a1a64d8fdfb70f75f29efff5d037c73b",
"assets/assets/icons/message.svg": "73bbbfc925b51e50b363672964de3142",
"assets/assets/icons/wallet.svg": "6123983f51db777543e9b795c80d3aa0",
"assets/assets/icons/chat.svg": "d9397cc23e74b6059d8eecb5cbb6e6e8",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "e1b70df5b81e99b2c12d1a783d6a8009",
"assets/fonts/MaterialIcons-Regular.otf": "1b725da294e36df995da253fb5b19143",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "c26832c7023f058d08493eccd9adf678",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.json": "5f27cdc4395164d5a4c041bdad710611",
"version.json": "91582c1d5dff03a48839bfb486b902f4",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"main.dart.js": "668cfc35f254aca7939602f083a65713",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "40af5ed9da8e7c2aada3aeebe564d0d8",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "e739a432e8a0a538a77e4c3305acb134"};
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
