'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/AssetManifest.json": "1de2e9781439a827d28245d344c7c81e",
"/assets/LICENSE": "cedc12e1cbd9796535d6af7a5ffabd12",
"/assets/assets/images/logos/flutter_denver_logo_200x100.png": "62a004ef084a43ec8142c7e450e20f3e",
"/assets/assets/images/logos/flutter_denver_logo_400x200.png": "33f3ed9a3ee9990b1cf5e3812a68bada",
"/assets/assets/images/logos/meetup_logo_script.png": "44ecc32714d261ba4618ba338ef6572f",
"/assets/assets/fonts/Lato-Bold.ttf": "85d339d916479f729938d2911b85bf1f",
"/assets/assets/fonts/Lato-Regular.ttf": "2d36b1a925432bae7f3c53a340868c6e",
"/assets/assets/fonts/Lato-Black.ttf": "e631d2735799aa943d93d301abf423d2",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/packages/flutter_markdown/assets/logo.png": "67642a0b80f3d50277c44cde8f450e50",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/FontManifest.json": "fe6feccf838aad7289deee0492eedf2b",
"/main.dart.js": "1c74f6f2de6f789b69f5004c2ed5ce33",
"/index.html": "1c284125d031ce568ee7d720d195f249"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
