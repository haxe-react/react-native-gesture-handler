package react.native.gesturehandler;

import react.SyntheticEvent;

@:enum
@:jsRequire('react-native-gesture-handler', 'Direction')
extern abstract Directions(Int) to Int {
    @:native('RIGHT') var Right;
    @:native('LEFT') var Left;
    @:native('UP') var Up;
    @:native('DOWN') var Down;
}

@:enum
@:jsRequire('react-native-gesture-handler', 'State')
extern abstract State(Int) to Int {
    @:native('UNDETERMINED') var Undetermined;
    @:native('FAILED') var Failed;
    @:native('BEGAN') var Began;
    @:native('CANCELLED') var Cancelled;
    @:native('ACTIVE') var Active;
    @:native('END') var End;
}

typedef GestureEvent = {
    handlerTag: Float,
    numberOfPointers: Float,
	state: State,
}

typedef StateChangeEvent = {
    > GestureEvent,
    oldState: State,
}

typedef TapData = {
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
}

typedef ForceTouchData = {
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
    force: Float,
}

typedef LongPressData = {
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
}

typedef PanData = {
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
    translationX: Float,
    translationY: Float,
    velocityX: Float,
    velocityY: Float,
}

typedef PinchData = {
    scale: Float,
    focalX: Float,
    focalY: Float,
    velocity: Float,
}

typedef RotationData = {
    rotation: Float,
    anchorX: Float,
    anchorY: Float,
    velocity: Float,
}

typedef FlingData = {
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
}


typedef NativeViewData = {
    pointerInside: Bool,
}

typedef TapStateChangeEvent = SyntheticEvent<{ >TapData, >StateChangeEvent, }>;
typedef TapGestureEvent = SyntheticEvent<{ >TapData, >GestureEvent, }>;

typedef ForceTouchStateChangeEvent = SyntheticEvent<{ >ForceTouchData, >StateChangeEvent, }>;
typedef ForceTouchGestureEvent = SyntheticEvent<{ >ForceTouchData, >GestureEvent, }>;

typedef LongPressStateChangeEvent = SyntheticEvent<{ >LongPressData, >StateChangeEvent, }>;
typedef LongPressGestureEvent = SyntheticEvent<{ >LongPressData, >GestureEvent, }>;

typedef PanStateChangeEvent = SyntheticEvent<{ >PanData, >StateChangeEvent, }>;
typedef PanGestureEvent = SyntheticEvent<{ >PanData, >GestureEvent, }>;

typedef PinchStateChangeEvent = SyntheticEvent<{ >PinchData, >StateChangeEvent, }>;
typedef PinchGestureEvent = SyntheticEvent<{ >PinchData, >GestureEvent, }>;

typedef RotationStateChangeEvent = SyntheticEvent<{ >RotationData, >StateChangeEvent, }>;
typedef RotationGestureEvent = SyntheticEvent<{ >RotationData, >GestureEvent, }>;

typedef FlingStateChangeEvent = SyntheticEvent<{ >FlingData, >StateChangeEvent, }>;
typedef FlingGestureEvent = SyntheticEvent<{ >FlingData, >GestureEvent, }>;

typedef NativeViewStateChangeEvent = SyntheticEvent<{ >NativeViewData, >StateChangeEvent, }>;
typedef NativeViewGestureEvent = SyntheticEvent<{ >NativeViewData, >GestureEvent, }>;


//TODO complete missing classes.. I think there's more

// class NativeViewGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<NativeViewGestureHandlerStateChangeEventExtra> {}

// class NativeViewGestureHandlerGestureEvent extends GestureHandlerGestureEvent<NativeViewGestureHandlerGestureEventExtra> {}