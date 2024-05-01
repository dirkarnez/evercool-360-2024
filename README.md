[evercool-360-2024](https://dirkarnez.github.io/evercool-360-2024/)
=================
From [dirkarnez/aframe-360-image](https://github.com/dirkarnez/aframe-360-image)

### TODOs
- [ ] [**Responsive UI – A-Frame**](https://aframe.io/examples/showcase/responsiveui/)
- [ ] Rotate camera
	- https://aframe.io/docs/1.5.0/components/camera.html
 	- https://stackoverflow.com/questions/52432122/how-to-programmatically-rotate-the-camera-in-the-a-frame-scene
  	- https://stackoverflow.com/questions/41419014/how-to-access-the-default-camera-from-a-component
  	- ```js
  	  <script>
	  AFRAME.registerComponent('rotation-reader', {
	  /**
	   * We use IIFE (immediately-invoked function expression) to only allocate one
	   * vector or euler and not re-create on every tick to save memory.
	   */
	  tick: (function () {
	    var position = new THREE.Vector3();
	    var quaternion = new THREE.Quaternion();
	
	    return function () {
	      this.el.object3D.getWorldPosition(position);
	      this.el.object3D.getWorldQuaternion(quaternion);
	      // position and rotation now contain vector and quaternion in world space.
	      console.log(`${JSON.stringify(quaternion)} ${new Date()}`);
	    };
	  })()
	});
	</script>
	
	<a-scene antialias="true">
	  
	  <a-entity test></a-entity>
	  
	  <a-sphere position="0 1.25 -5" radius="1.25" color="#EF2D5E"></a-sphere>
	  <a-box position="-1 0.5 -3" rotation="0 45 0" width="1" height="1" depth="1" color="#4CC3D9"></a-box>
	  <a-cylinder position="1 0.75 -3" radius="0.5" height="1.5" color="#FFC65D"></a-cylinder>
	  <a-plane position="0 0 -4" rotation="-90 0 0" width="4" height="4" color="#7BC8A4"></a-plane>
	  <a-sky color="#ECECEC"></a-sky>
	   <a-entity rotation-reader camera look-controls></a-entity>
	</a-scene>
	
	```

### Snippets
```svelte
<script>
	import 'aframe';
	
	let box = '#4CC3D9';
	let sphere = '#EF2D5E';
	let cylinder = '#FFC65D';
</script>

<div class="controls">
	<label>
		<input type="color" bind:value={box}>	
		box
	</label>
	
	<label>
		<input type="color" bind:value={sphere}>	
		sphere
	</label>
	
	<label>
		<input type="color" bind:value={cylinder}>	
		cylinder
	</label>
</div>


<a-scene background="color: #FAFAFA">
	<a-box position="-1 0.5 -3" rotation="0 45 0" color={box} shadow></a-box>
	<a-sphere position="0 1.25 -5" radius="1.25" color={sphere} shadow></a-sphere>
	<a-cylinder position="1 0.75 -3" radius="0.5" height="1.5" color={cylinder} shadow></a-cylinder>
	<a-plane position="0 0 -4" rotation="-90 0 0" width="4" height="4" color="#7BC8A4" shadow></a-plane>
</a-scene>

<style>
	.controls {
		position: absolute;
		top: 1em;
		left: 1em;
		z-index: 2;
	}
	
	input {
		height: 2em;
	}
</style>
```
#### Reference
- https://www.cutout.pro/
- [AR南大校史博物馆（一）——概述](https://zhou-yuxin.github.io/articles/2016/AR%E5%8D%97%E5%A4%A7%E6%A0%A1%E5%8F%B2%E5%8D%9A%E7%89%A9%E9%A6%86%EF%BC%88%E4%B8%80%EF%BC%89%E2%80%94%E2%80%94%E6%A6%82%E8%BF%B0/index.html)
