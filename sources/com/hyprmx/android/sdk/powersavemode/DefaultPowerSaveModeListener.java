package com.hyprmx.android.sdk.powersavemode;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.OnLifecycleEvent;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.webview.j;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\b\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\u0006"}, d2 = {"Lcom/hyprmx/android/sdk/powersavemode/DefaultPowerSaveModeListener;", "Landroid/content/BroadcastReceiver;", "Lcom/hyprmx/android/sdk/powersavemode/a;", "Lkotlinx/coroutines/CoroutineScope;", "", "removeWebview", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class DefaultPowerSaveModeListener extends BroadcastReceiver implements com.hyprmx.android.sdk.powersavemode.a, CoroutineScope {
    public final Context a;
    public final PowerManager b;
    public final /* synthetic */ CoroutineScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final IntentFilter f4611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public j f4613f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4614g;

    @DebugMetadata(c = "com.hyprmx.android.sdk.powersavemode.DefaultPowerSaveModeListener$1", f = "PowerSaveModeListener.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return DefaultPowerSaveModeListener.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            DefaultPowerSaveModeListener defaultPowerSaveModeListener = DefaultPowerSaveModeListener.this;
            boolean zIsPowerSaveMode = defaultPowerSaveModeListener.b.isPowerSaveMode();
            HyprMXLog.d("isPowerSaveMode set to " + zIsPowerSaveMode);
            defaultPowerSaveModeListener.f4614g = zIsPowerSaveMode;
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.powersavemode.DefaultPowerSaveModeListener$onReceive$1", f = "PowerSaveModeListener.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return DefaultPowerSaveModeListener.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            DefaultPowerSaveModeListener defaultPowerSaveModeListener = DefaultPowerSaveModeListener.this;
            boolean zIsPowerSaveMode = defaultPowerSaveModeListener.b.isPowerSaveMode();
            HyprMXLog.d("isPowerSaveMode set to " + zIsPowerSaveMode);
            defaultPowerSaveModeListener.f4614g = zIsPowerSaveMode;
            DefaultPowerSaveModeListener defaultPowerSaveModeListener2 = DefaultPowerSaveModeListener.this;
            j jVar = defaultPowerSaveModeListener2.f4613f;
            if (jVar != null) {
                defaultPowerSaveModeListener2.a(jVar);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.powersavemode.DefaultPowerSaveModeListener$sendPowerStateEvent$1", f = "PowerSaveModeListener.kt", i = {}, l = {79}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ j c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(j jVar, Continuation<? super c> continuation) {
            super(2, continuation);
            this.c = jVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return DefaultPowerSaveModeListener.this.new c(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (DefaultPowerSaveModeListener.this.f4612e) {
                    HyprMXLog.d("sending hyprDevicePowerState event...");
                    DefaultPowerSaveModeListener defaultPowerSaveModeListener = DefaultPowerSaveModeListener.this;
                    j jVar = this.c;
                    defaultPowerSaveModeListener.f4613f = jVar;
                    String str = defaultPowerSaveModeListener.f4614g ? "low_power_mode_on" : "low_power_mode_off";
                    this.a = 1;
                    Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new com.hyprmx.android.sdk.utility.c(jVar, "hyprDevicePowerState", str, null), this);
                    if (objWithContext != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objWithContext = v.a;
                    }
                    if (objWithContext == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    public DefaultPowerSaveModeListener(Context context, PowerManager powerManager, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(powerManager, "powerManager");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = context;
        this.b = powerManager;
        this.c = CoroutineScopeKt.plus(scope, new CoroutineName("DefaultPowerSaveModeListener"));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        this.f4611d = intentFilter;
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(null), 3, null);
        a();
    }

    @Override // com.hyprmx.android.sdk.powersavemode.a
    /* JADX INFO: renamed from: S, reason: from getter */
    public final boolean getF4614g() {
        return this.f4614g;
    }

    public final void a() {
        HyprMXLog.d("Enabling PowerSaveModeListener " + this);
        this.f4612e = true;
        try {
            this.a.registerReceiver(this, this.f4611d);
        } catch (IllegalArgumentException unused) {
            HyprMXLog.e("Receiver " + this + " is already registered!");
        }
    }

    @Override // com.hyprmx.android.sdk.powersavemode.a
    public final void a(j webview) {
        Intrinsics.checkNotNullParameter(webview, "webview");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(webview, null), 3, null);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.c.getCoroutineContext();
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        HyprMXLog.d("android.os.action.POWER_SAVE_MODE_CHANGED event received");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(null), 3, null);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public final void removeWebview() {
        this.f4613f = null;
    }

    @Override // com.hyprmx.android.sdk.powersavemode.a
    public final void v() {
        HyprMXLog.d("Disabling PowerSaveModeListener " + this);
        this.f4612e = false;
        try {
            this.a.unregisterReceiver(this);
        } catch (IllegalArgumentException unused) {
            HyprMXLog.e("Receiver " + this + " cannot be unregistered!");
        }
    }
}
