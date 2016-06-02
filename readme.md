#CATransition Demonstration

##Demonstrations
<img style="width: 25%;" src="Demonstrations/cube.gif"/>
<img style="width: 25%;" src="Demonstrations/fade.gif"/>
<img style="width: 25%;" src="Demonstrations/moveIn.gif"/>
<img style="width: 25%;" src="Demonstrations/oglFlip.gif"/>
<img style="width: 25%;" src="Demonstrations/pageCurl.gif"/>
<img style="width: 25%;" src="Demonstrations/pageUnCurl.gif"/>
<img style="width: 25%;" src="Demonstrations/push.gif"/>
<img style="width: 25%;" src="Demonstrations/reveal.gif"/>
<img style="width: 25%;" src="Demonstrations/rippleEffect.gif"/>
<img style="width: 25%;" src="Demonstrations/suckEffect.gif"/>
<img style="width: 25%;" src="Demonstrations/cameraIris.gif"/>

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