#CATransition Demonstration

##Demonstrations
<img src="Demonstrations/cube.gif" style="width: 25%;"/>
<img src="Demonstrations/fade.gif" style="width: 25%;"/>
<img src="Demonstrations/moveIn.gif" style="width: 25%;"/>
<img src="Demonstrations/oglFlip.gif" style="width: 25%;"/>
<img src="Demonstrations/pageCurl.gif" style="width: 25%;"/>
<img src="Demonstrations/pageUnCurl.gif" style="width: 25%;"/>
<img src="Demonstrations/push.gif" style="width: 25%;"/>
<img src="Demonstrations/reveal.gif" style="width: 25%;"/>
<img src="Demonstrations/rippleEffect.gif" style="width: 25%;"/>
<img src="Demonstrations/suckEffect.gif" style="width: 25%;"/>
<img src="Demonstrations/cameraIris.gif" style="width: 25%;"/>

##Types (type of animation)
Although there are many CATransition Types, developers should only use the public ones, as using a private API in your app may lead it it being rejected from the App Store.
* cube
* fade
* moveIn
* oglFlip
* pageCurl
* pageUnCurl
* push
* reveal
* rippleEffect
* suckEffect

##Subtypes (direction of animation)
Not all types have a direction. As one can see from the above demonstrations, subtype directions make no changes to the transitions such as "fade."  
* fromLeft
* fromRight
* fromTop
* fromBottom

##How to use CATransition
You can either enter the types as constants, or use the String values that I have listed above.