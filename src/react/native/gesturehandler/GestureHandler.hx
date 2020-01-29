package react.native.gesturehandler;

import haxe.extern.EitherType;
import react.ReactRef;
import react.ReactComponent;
import react.BaseProps;
import react.native.component.props.ViewStyle;
import react.native.gesturehandler.GestureEvent;

private typedef EitherData<T> = EitherType<T, Array<T>>;

/* GESTURE HANDLERS PROPERTIES */

typedef GestureHandlerProperties = {
    > BasePropsWithChild,
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
    ? onGestureEvent: NativeViewGestureEvent -> Void,
    ? onHandlerStateChange:  NativeViewStateChangeEvent -> Void,
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
    ? onGestureEvent: TapGestureEvent -> Void,
    ? onHandlerStateChange: TapStateChangeEvent -> Void,
}

typedef ForceTouchGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? minForce: Float,
    ? maxForce: Float,
    ? feedbackOnActivation: Bool,
    ? onGestureEvent: ForceTouchGestureEvent -> Void,
    ? onHandlerStateChange: ForceTouchStateChangeEvent -> Void,
  }

typedef LongPressGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? minDurationMs: Float,
    ? maxDist: Float,
    ? onGestureEvent: LongPressGestureEvent -> Void,
    ? onHandlerStateChange: LongPressStateChangeEvent -> Void,
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
    ? onGestureEvent: PanGestureEvent -> Void,
    ? onHandlerStateChange: PanStateChangeEvent -> Void,
}

typedef PinchGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? onGestureEvent: PinchGestureEvent -> Void,
    ? onHandlerStateChange: PinchStateChangeEvent -> Void,
}

typedef RotationGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? onGestureEvent: RotationGestureEvent -> Void,
    ? onHandlerStateChange: RotationStateChangeEvent->Void,
}

typedef FlingGestureHandlerProperties = {
    > GestureHandlerProperties,
    ? direction: Float,
    ? FloatOfPointers: Float,
    ? onGestureEvent: FlingGestureEvent -> Void,
    ? onHandlerStateChange: FlingStateChangeEvent -> Void,
}

// GESTURE HANDLERS CLASSES

@:jsRequire('react-native-gesture-handler', 'NativeViewGestureHandler')
extern class NativeViewGestureHandler extends ReactComponentOfProps<NativeViewGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'TapGestureHandler')
extern class TapGestureHandler extends ReactComponentOfProps<TapGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'LongPressGestureHandler')
extern class LongPressGestureHandler extends ReactComponentOfProps<LongPressGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'PanGestureHandler')
extern class PanGestureHandler extends ReactComponentOfProps<PanGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'PinchGestureHandler')
extern class PinchGestureHandler extends ReactComponentOfProps<PinchGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'RotationGestureHandler')
extern class RotationGestureHandler extends ReactComponentOfProps<RotationGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'FlingGestureHandler')
extern class FlingGestureHandler extends ReactComponentOfProps<FlingGestureHandlerProperties> {}

@:jsRequire('react-native-gesture-handler', 'ForceTouchGestureHandler')
extern class ForceTouchGestureHandler extends ReactComponentOfProps<ForceTouchGestureHandlerProperties> {}


@:jsRequire('react-native-gesture-handler', 'gestureHandlerRootHOC')
extern class GestureHandler
{
    @:selfCall
    public static function gestureHandlerRootHOC(component: react.ReactType, ?containerStyles: ViewStyle): react.ReactType;
}

    //@:selfCall
   // public static function call(component: react.ReactType, config: NativeViewGestureHandlerProperties): react.ReactType;

