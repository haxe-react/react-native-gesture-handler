package react.native.gesturehandler;

@:enum
abstract Directions(Int) to Int {
    var RIGHT = 1;
    var LEFT = 2;
    var UP = 4;
    var DOWN = 8;
}

@:enum
abstract State(Int) to Int {
    var UNDETERMINED = 0;
    var FAILED = 1;
    var BEGAN = 2;
    var CANCELLED = 3;
    var ACTIVE = 4;
    var END = 5;
}

/* STATE CHANGE EVENTS */

typedef GestureHandlerGestureEventNativeEvent = {
    handlerTag: Float,
    numberOfPointers: Float,
	state: State,
}

typedef GestureHandlerStateChangeNativeEvent = {
    handlerTag: Float,
    numberOfPointers: Float,
    state: State,
    oldState: State,
}

class GestureHandlerStateChangeEvent<T:(GestureHandlerStateChangeNativeEvent)>  {
    public var nativeEvent: T;
}


class GestureHandlerGestureEvent<T:(GestureHandlerGestureEventNativeEvent)>  {
    public var nativeEvent: T;
}

class GestureHandlerGestureNativeEvent extends GestureHandlerGestureEvent<GestureHandlerGestureEventNativeEvent> {}


typedef NativeViewGestureHandlerStateChangeEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    pointerInside: Bool,
}

typedef NativeViewGestureHandlerGestureEventExtra = {
    > GestureHandlerGestureEventNativeEvent,
    pointerInside: Bool,
}

class NativeViewGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<NativeViewGestureHandlerStateChangeEventExtra> {}

class NativeViewGestureHandlerGestureEvent extends GestureHandlerGestureEvent<NativeViewGestureHandlerGestureEventExtra> {}

typedef TapGestureHandlerEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
}

typedef ForceTouchGestureHandlerEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
    force: Float,
}

class TapGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<TapGestureHandlerEventExtra> {}

class TapGestureHandlerGestureEvent extends GestureHandlerStateChangeEvent<TapGestureHandlerEventExtra> {}

class ForceTouchGestureHandlerGestureEvent extends GestureHandlerStateChangeEvent<ForceTouchGestureHandlerEventExtra> {}

class LongPressGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<LongPressGestureHandlerEventExtra> {}

class ForceTouchGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<ForceTouchGestureHandlerEventExtra> {}

typedef LongPressGestureHandlerEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
}

typedef PanGestureHandlerEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
    translationX: Float,
    translationY: Float,
    velocityX: Float,
    velocityY: Float,
}

class PanGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<PanGestureHandlerEventExtra> {}

class PanGestureHandlerGestureEvent extends GestureHandlerGestureEvent<PanGestureHandlerEventExtra> {}


typedef PinchGestureHandlerEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    scale: Float,
    focalX: Float,
    focalY: Float,
    velocity: Float,
}

class PinchGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<PinchGestureHandlerEventExtra> {}
class PinchGestureHandlerGestureEvent extends GestureHandlerGestureEvent<PinchGestureHandlerEventExtra> {}

typedef RotationGestureHandlerEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    rotation: Float,
    anchorX: Float,
    anchorY: Float,
    velocity: Float,
}

class RotationGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<RotationGestureHandlerEventExtra> {}
class RotationGestureHandlerGestureEvent extends GestureHandlerGestureEvent<RotationGestureHandlerEventExtra> {}


typedef FlingGestureHandlerEventExtra = {
    > GestureHandlerStateChangeNativeEvent,
    x: Float,
    y: Float,
    absoluteX: Float,
    absoluteY: Float,
}

class FlingGestureHandlerStateChangeEvent extends GestureHandlerStateChangeEvent<FlingGestureHandlerEventExtra> {}
class FlingGestureHandlerGestureEvent extends GestureHandlerGestureEvent<GestureHandlerGestureEventNativeEvent> {}


//TODO complete missing classes.. I think there's more