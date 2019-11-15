package react.native.gesturehandler;

import haxe.extern.EitherType;
import react.ReactRef;
import react.ReactComponent;
import react.native.component.props.ViewStyle;
import react.native.gesturehandler.GestureEvent;

private typedef EitherData<T> = EitherType<T, Array<T>>;

/* GESTURE HANDLERS PROPERTIES */

typedef GestureHandlerProperties = {
    ? id: String,
    ? enabled: Bool,
    ? waitFor: ReactRef<EitherData<Any>>,
    ? simultaneousHandlers: ReactRef<EitherData<Any>>,
    ? shouldCancelWhenOutside: Bool,
    ? hitSlop: EitherType<Float, {
          ? left: Float,
          ? right: Float,
          ? top: Float,
          ? bottom: Float,
          ? vertical: Float,
          ? horizontal: Float,
        }>,
}

typedef NativeViewGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? shouldActivateOnStart: Bool,
    ? disallowInterruption: Bool,
    ? onGestureEvent: NativeViewGestureHandlerGestureEvent -> Void,
    ? onHandlerStateChange:  NativeViewGestureHandlerStateChangeEvent -> Void,
}

typedef TapGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? minPointers: Float,
    ? maxDurationMs: Float,
    ? maxDelayMs: Float,
    ? FloatOfTaps: Float,
    ? maxDeltaX: Float,
    ? maxDeltaY: Float,
    ? maxDist: Float,
    ? onGestureEvent: TapGestureHandlerGestureEvent -> Void,
    ? onHandlerStateChange: TapGestureHandlerStateChangeEvent -> Void,
}

typedef ForceTouchGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? minForce: Float,
    ? maxForce: Float,
    ? feedbackOnActivation: Bool,
    ? onGestureEvent: ForceTouchGestureHandlerGestureEvent -> Void,
    ? onHandlerStateChange: ForceTouchGestureHandlerStateChangeEvent -> Void,
  }

typedef LongPressGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? minDurationMs: Float,
    ? maxDist: Float,
    ? onGestureEvent: GestureHandlerGestureNativeEvent -> Void,
    ? onHandlerStateChange: LongPressGestureHandlerStateChangeEvent -> Void,
  }

typedef PanGestureHandlerProperties = {
    > GestureHandlerProperties,
    // @deprecated  use activeOffsetX
    ? minDeltaX: Float,
    // @deprecated  use activeOffsetY
    ? minDeltaY: Float,
    // @deprecated  use failOffsetX
    ? maxDeltaX: Float,
    // @deprecated  use failOffsetY
    ? maxDeltaY: Float,
    // @deprecated  use activeOffsetX
    ? minOffsetX: Float,
    // @deprecated  use failOffsetY
    ? minOffsetY: Float,
    ? activeOffsetY: EitherData<Float>,
    ? activeOffsetX: EitherData<Float>,
    ? failOffsetY: EitherData<Float>,
    ? failOffsetX: EitherData<Float>,
    ? minDist: Float,
    ? minVelocity: Float,
    ? minVelocityX: Float,
    ? minVelocityY: Float,
    ? minPointers: Float,
    ? maxPointers: Float,
    ? avgTouches: Bool,
    ? onGestureEvent: PanGestureHandlerGestureEvent -> Void,
    ? onHandlerStateChange: PanGestureHandlerStateChangeEvent -> Void,
}

typedef PinchGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? onGestureEvent: PinchGestureHandlerGestureEvent -> Void,
    ? onHandlerStateChange: PinchGestureHandlerStateChangeEvent -> Void,
}

typedef RotationGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? onGestureEvent: RotationGestureHandlerGestureEvent -> Void,
    ? onHandlerStateChange: RotationGestureHandlerStateChangeEvent->Void,
}

typedef FlingGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? direction: Float,
    ? FloatOfPointers: Float,
    ? onGestureEvent: FlingGestureHandlerGestureEvent -> Void,
    ? onHandlerStateChange: FlingGestureHandlerStateChangeEvent -> Void,
}

// GESTURE HANDLERS CLASSES

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class NativeViewGestureHandler extends ReactComponentOfProps<NativeViewGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class TapGestureHandler extends ReactComponentOfProps<TapGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class LongPressGestureHandler extends ReactComponentOfProps<LongPressGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class PanGestureHandler extends ReactComponentOfProps<PanGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class PinchGestureHandler extends ReactComponentOfProps<PinchGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class RotationGestureHandler extends ReactComponentOfProps<RotationGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class FlingGestureHandler extends ReactComponentOfProps<FlingGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'GestureHandler')
extern class ForceTouchGestureHandler extends ReactComponentOfProps<ForceTouchGestureHandlerProperties> {}


@:jsRequire('react-native-gesture-handler', 'gestureHandlerRootHOC')
extern class GestureHandler
{
    @:selfCall
    public static function gestureHandlerRootHOC(component: react.ReactType, ?containerStyles: ViewStyle): react.ReactType;
}

    //@:selfCall
   // public static function call(component: react.ReactType, config: NativeViewGestureHandlerProperties): react.ReactType;

