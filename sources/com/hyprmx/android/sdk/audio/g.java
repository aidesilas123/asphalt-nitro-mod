package com.hyprmx.android.sdk.audio;

import com.hyprmx.android.sdk.core.HyprMXIf;
import com.hyprmx.android.sdk.core.t;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements com.hyprmx.android.sdk.audio.a, CoroutineScope {
    public final /* synthetic */ CoroutineScope a;

    @DebugMetadata(c = "com.hyprmx.android.sdk.audio.HyprAudioEventPublisher$onAudioEnd$1", f = "AudioEventPublisher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return new a(continuation).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXIf.HyprMXAudioAdListener hyprMXAudioAdListener = t.a.j;
            if (hyprMXAudioAdListener != null) {
                hyprMXAudioAdListener.onAdAudioEnd();
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.audio.HyprAudioEventPublisher$onAudioStart$1", f = "AudioEventPublisher.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return new b(continuation).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            HyprMXIf.HyprMXAudioAdListener hyprMXAudioAdListener = t.a.j;
            if (hyprMXAudioAdListener != null) {
                hyprMXAudioAdListener.onAdAudioStart();
            }
            return v.a;
        }
    }

    public g(com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = scope;
        jsEngine.a("HYPRAudioEventPublisherNative", this);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.a.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.audio.a
    public final void onAudioEnd() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.audio.a
    public final void onAudioStart() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(null), 3, null);
    }
}
