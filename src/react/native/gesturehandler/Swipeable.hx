package react.native.gesturehandler;

import react.ReactComponent;
import react.native.api.Animated;
import react.native.api.Animated.AnimatedValue;

typedef SwipeableProps = {
    ?friction:Float,
    ?leftThreshold:Float,
    ?rightThreshold:Float,
    ?overshootLeft:Bool,
    ?overshootRight:Bool,
    ?overshootFriction:Float,
    ?onSwipeableLeftOpen:Void->Void,
    ?onSwipeableRightOpen:Dynamic->Void,
    ?onSwipeableOpen:Void->Void,
    ?onSwipeableClose:Void->Void,
    ?onSwipeableLeftWillOpen:Void->Void,
    ?onSwipeableRightWillOpen:Void->Void,
    ?onSwipeableWillOpen:Void->Void,
    ?onSwipeableWillClose:Void->Void,
    ?renderLeftActions:AnimatedValue->AnimatedValue->react.ReactFragment,//progress, drag
    ?renderRightActions:AnimatedValue->AnimatedValue->react.ReactFragment,//progress, drag
    ?useNativeAnimations:Bool,
}

@:jsRequire('react-native-gesture-handler/Swipeable', 'default')
extern class Swipeable extends ReactComponentOfProps<SwipeableProps> {
    function close():Void;
    function openLeft():Void;
    function openRight():Void;
}
