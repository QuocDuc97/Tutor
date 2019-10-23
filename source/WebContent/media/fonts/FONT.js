var observer = new FontFaceObserver("Proxima Nova", {
  weight: 400
});

observer.check(null, 5000).then(function() {
  console.log("Font is available");
}, function() {
  console.log("Font is not available after waiting 5 seconds");
});