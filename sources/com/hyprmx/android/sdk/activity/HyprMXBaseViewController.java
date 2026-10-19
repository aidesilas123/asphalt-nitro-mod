package com.hyprmx.android.sdk.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.LifecycleObserver;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b \u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r:\u0001\u000e¨\u0006\u000f"}, d2 = {"Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "Landroidx/lifecycle/LifecycleObserver;", "Lcom/hyprmx/android/sdk/jsAlertDialog/a;", "Lcom/hyprmx/android/sdk/jsAlertDialog/d;", "Lkotlinx/coroutines/CoroutineScope;", "Lcom/hyprmx/android/sdk/utility/h0;", "Lcom/hyprmx/android/sdk/network/h;", "Lcom/hyprmx/android/sdk/mvp/c;", "Lcom/hyprmx/android/sdk/utility/k0;", "Lcom/hyprmx/android/sdk/overlay/k;", "Lcom/hyprmx/android/sdk/fullscreen/c;", "Lcom/hyprmx/android/sdk/fullscreen/e;", "Lcom/hyprmx/android/sdk/core/v;", "a", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public abstract class HyprMXBaseViewController implements ViewTreeObserver.OnGlobalLayoutListener, LifecycleObserver, com.hyprmx.android.sdk.jsAlertDialog.a, com.hyprmx.android.sdk.jsAlertDialog.d, CoroutineScope, com.hyprmx.android.sdk.utility.h0, com.hyprmx.android.sdk.network.h, com.hyprmx.android.sdk.mvp.c, com.hyprmx.android.sdk.utility.k0, com.hyprmx.android.sdk.overlay.k, com.hyprmx.android.sdk.fullscreen.c, com.hyprmx.android.sdk.fullscreen.e, com.hyprmx.android.sdk.core.v {
    public final AppCompatActivity a;
    public final Bundle b;
    public final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.hyprmx.android.sdk.presentation.a f4439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.hyprmx.android.sdk.powersavemode.a f4440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.hyprmx.android.sdk.om.g f4441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.hyprmx.android.sdk.api.data.a f4442g;
    public final ThreadAssert h;
    public final CoroutineDispatcher i;
    public final com.hyprmx.android.sdk.network.i j;
    public final com.hyprmx.android.sdk.utility.h0 k;
    public final Job l;
    public final com.hyprmx.android.sdk.overlay.i m;
    public final com.hyprmx.android.sdk.fullscreen.e n;
    public final /* synthetic */ com.hyprmx.android.sdk.mvp.c o;
    public final /* synthetic */ com.hyprmx.android.sdk.overlay.k p;
    public RelativeLayout q;
    public RelativeLayout.LayoutParams r;
    public final com.hyprmx.android.sdk.jsAlertDialog.e s;
    public com.hyprmx.android.sdk.webview.f t;
    public boolean u;
    public AlertDialog v;
    public int w;
    public int x;
    public boolean y;

    public interface a {
        void a(int i);
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$onDestroy$1", f = "HyprMXBaseViewController.kt", i = {}, l = {286}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return HyprMXBaseViewController.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HyprMXBaseViewController.this.n.destroy();
                this.a = 1;
                if (DelayKt.delay(1000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            HyprMXBaseViewController hyprMXBaseViewController = HyprMXBaseViewController.this;
            if (hyprMXBaseViewController.t.getParent() != null) {
                hyprMXBaseViewController.U().removeView(hyprMXBaseViewController.t);
            }
            hyprMXBaseViewController.t.c();
            JobKt__JobKt.cancelChildren$default(HyprMXBaseViewController.this.l, (CancellationException) null, 1, (Object) null);
            return kotlin.v.a;
        }
    }

    public HyprMXBaseViewController(AppCompatActivity activity, Bundle bundle, a hyprMXBaseViewControllerListener, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.powersavemode.a powerSaveMode, com.hyprmx.android.sdk.webview.s webViewFactory, com.hyprmx.android.sdk.om.g gVar, com.hyprmx.android.sdk.api.data.a baseAd, CoroutineScope scope, ThreadAssert threadAssert, CoroutineDispatcher mainDispatcher, com.hyprmx.android.sdk.network.i networkConnectionMonitor, com.hyprmx.android.sdk.utility.h0 internetConnectionDialog, Job job, com.hyprmx.android.sdk.presentation.h eventPublisher, com.hyprmx.android.sdk.mvp.c lifecycleEventAdapter, com.hyprmx.android.sdk.overlay.i hyprMXOverlay, com.hyprmx.android.sdk.overlay.k imageCapturer, com.hyprmx.android.sdk.fullscreen.e fullScreenSharedConnector) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(hyprMXBaseViewControllerListener, "hyprMXBaseViewControllerListener");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(powerSaveMode, "powerSaveMode");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(networkConnectionMonitor, "networkConnectionMonitor");
        Intrinsics.checkNotNullParameter(internetConnectionDialog, "internetConnectionDialog");
        Intrinsics.checkNotNullParameter(job, "job");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(lifecycleEventAdapter, "lifecycleEventAdapter");
        Intrinsics.checkNotNullParameter(hyprMXOverlay, "hyprMXOverlay");
        Intrinsics.checkNotNullParameter(imageCapturer, "imageCapturer");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        this.a = activity;
        this.b = bundle;
        this.c = hyprMXBaseViewControllerListener;
        this.f4439d = activityResultListener;
        this.f4440e = powerSaveMode;
        this.f4441f = gVar;
        this.f4442g = baseAd;
        this.h = threadAssert;
        this.i = mainDispatcher;
        this.j = networkConnectionMonitor;
        this.k = internetConnectionDialog;
        this.l = job;
        this.m = hyprMXOverlay;
        this.n = fullScreenSharedConnector;
        this.o = lifecycleEventAdapter;
        this.p = imageCapturer;
        this.s = new com.hyprmx.android.sdk.jsAlertDialog.e(new com.hyprmx.android.sdk.jsAlertDialog.f(), this, this);
        b(new com.hyprmx.android.sdk.fullscreen.b(this, this));
        com.hyprmx.android.sdk.core.j jVarA = com.hyprmx.android.sdk.core.t.a().a();
        if (jVarA != null) {
            jVarA.a(this);
        }
        com.hyprmx.android.sdk.webview.f fVarA = webViewFactory.a(a(), baseAd.a());
        fVarA.setContainingActivity(activity);
        fVarA.b(a(), baseAd.a());
        this.t = fVarA;
        this.w = -1;
        this.x = -1;
    }

    public /* synthetic */ HyprMXBaseViewController(AppCompatActivity appCompatActivity, Bundle bundle, a aVar, com.hyprmx.android.sdk.presentation.a aVar2, com.hyprmx.android.sdk.powersavemode.a aVar3, com.hyprmx.android.sdk.webview.s sVar, com.hyprmx.android.sdk.om.g gVar, com.hyprmx.android.sdk.api.data.a aVar4, CoroutineScope coroutineScope, ThreadAssert threadAssert, MainCoroutineDispatcher mainCoroutineDispatcher, com.hyprmx.android.sdk.network.i iVar, com.hyprmx.android.sdk.utility.h0 h0Var, com.hyprmx.android.sdk.presentation.h hVar, com.hyprmx.android.sdk.fullscreen.e eVar, int i) {
        this(appCompatActivity, bundle, aVar, aVar2, aVar3, sVar, gVar, aVar4, coroutineScope, threadAssert, (i & 1024) != 0 ? Dispatchers.getMain() : mainCoroutineDispatcher, iVar, h0Var, (i & 16384) != 0 ? SupervisorKt.SupervisorJob((i & 8192) != 0 ? (Job) coroutineScope.getCoroutineContext().get(Job.g0) : null) : null, hVar, (65536 & i) != 0 ? new com.hyprmx.android.sdk.mvp.b(hVar, coroutineScope) : null, (131072 & i) != 0 ? new com.hyprmx.android.sdk.overlay.j((Context) appCompatActivity, true, 2) : null, (i & 262144) != 0 ? new com.hyprmx.android.sdk.overlay.l() : null, eVar);
    }

    public static kotlin.v a(final HyprMXBaseViewController hyprMXBaseViewController, String str, String str2, String str3) {
        HyprMXLog.d("Displaying offerCancelAlertDialog");
        com.hyprmx.android.sdk.utility.k kVar = new com.hyprmx.android.sdk.utility.k(new DialogInterface.OnClickListener() { // from class: com.hyprmx.android.sdk.activity.t0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                HyprMXBaseViewController.a(this.a, dialogInterface, i);
            }
        });
        Intrinsics.checkNotNullExpressionValue(kVar, "wrap { dialog, _ ->\n    …itPressed()\n      }\n    }");
        AlertDialog alertDialogCreate = new AlertDialog.Builder(hyprMXBaseViewController.a).setMessage(str).setPositiveButton(str3, (DialogInterface.OnClickListener) null).setNegativeButton(str2, kVar).setCancelable(true).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.hyprmx.android.sdk.activity.d1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                HyprMXBaseViewController.a(dialogInterface);
            }
        }).create();
        alertDialogCreate.setCanceledOnTouchOutside(true);
        if (hyprMXBaseViewController.a.isFinishing()) {
            HyprMXLog.d("Not displaying offerCancelAlertDialog because activity is finishing");
        } else {
            HyprMXLog.d("Displaying offerCancelAlertDialog");
            alertDialogCreate.show();
        }
        kVar.a(alertDialogCreate);
        hyprMXBaseViewController.v = alertDialogCreate;
        return kotlin.v.a;
    }

    public static final void a(DialogInterface dialogInterface) {
        dialogInterface.dismiss();
    }

    public static final void a(HyprMXBaseViewController this$0, DialogInterface dialogInterface, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AlertDialog alertDialog = this$0.v;
        if (alertDialog != null && alertDialog.isShowing()) {
            dialogInterface.dismiss();
        }
        BuildersKt__Builders_commonKt.launch$default(this$0, null, null, new t(this$0, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final String B() {
        return this.n.B();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void E() {
        this.n.E();
    }

    @Override // com.hyprmx.android.sdk.core.v
    public final void G() {
        this.a.finish();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void H() {
        this.n.H();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void I() {
        this.n.I();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void J() {
        this.n.J();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void K() {
        this.n.K();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final String M() {
        return this.n.M();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void O() {
        this.n.O();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final boolean P() {
        return this.n.P();
    }

    public void T() {
        this.h.runningOnMainThread();
        this.n.m();
        this.u = true;
        com.hyprmx.android.sdk.om.g gVar = this.f4441f;
        if (gVar != null) {
            gVar.a();
        }
        this.a.finish();
    }

    public final RelativeLayout U() {
        this.h.runningOnMainThread();
        RelativeLayout relativeLayout = this.q;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.TAG_LAYOUT);
        return null;
    }

    public void V() {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void W() {
        /*
            r2 = this;
            java.lang.String r0 = "onCreate"
            java.lang.String r1 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            com.hyprmx.android.sdk.mvp.c r1 = r2.o
            r1.i(r0)
            r2.b0()
            com.hyprmx.android.sdk.assert.ThreadAssert r0 = r2.h
            r0.runningOnMainThread()
            com.hyprmx.android.sdk.api.data.a r0 = r2.f4442g
            com.hyprmx.android.sdk.api.data.m r0 = r0.b()
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == 0) goto L28
            if (r0 == r1) goto L24
            goto L2d
        L24:
            com.hyprmx.android.sdk.activity.HyprMXBaseViewController$a r0 = r2.c
            r1 = 0
            goto L2a
        L28:
            com.hyprmx.android.sdk.activity.HyprMXBaseViewController$a r0 = r2.c
        L2a:
            r0.a(r1)
        L2d:
            android.os.Bundle r0 = r2.b
            if (r0 == 0) goto L35
            r2.a(r0)
            goto L38
        L35:
            r2.V()
        L38:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.activity.HyprMXBaseViewController.W():void");
    }

    public void X() {
        Intrinsics.checkNotNullParameter("onDestroy", NotificationCompat.CATEGORY_EVENT);
        this.o.i("onDestroy");
        this.s.a.a();
        AlertDialog alertDialog = this.v;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        this.k.p();
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new l(this, null), 3, null);
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(null), 3, null);
    }

    public void Y() {
        Intrinsics.checkNotNullParameter(o2.h.t0, NotificationCompat.CATEGORY_EVENT);
        this.o.i(o2.h.t0);
        this.t.pauseJSExecution();
    }

    public void Z() {
        Intrinsics.checkNotNullParameter(o2.h.u0, NotificationCompat.CATEGORY_EVENT);
        this.o.i(o2.h.u0);
        this.n.c(true);
        this.m.setOverlayPresented(false);
        this.t.resumeJSExecution();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object a(int i, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new z(this, i, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.overlay.k
    public final Object a(Context context, int i, int i2, Intent intent, com.hyprmx.android.sdk.core.w wVar, Continuation<? super kotlin.v> continuation) {
        return this.p.a(context, i, i2, intent, wVar, continuation);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object a(String str, int i, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new p(i, this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object a(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new b0(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object a(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new f(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object a(boolean z, String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new s(this, str, null, z), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object a(boolean z, Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.a(this, z, continuation);
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.n.a();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final kotlin.v a(String str, String str2, String str3, Continuation continuation) {
        return a(this, str, str2, str3);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void a(int i, int i2) {
        this.n.a(i, i2);
    }

    @Override // com.hyprmx.android.sdk.overlay.k
    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.p.a(activity);
    }

    public void a(Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(savedInstanceState, "savedInstanceState");
    }

    @Override // com.hyprmx.android.sdk.utility.h0
    public final void a(AppCompatActivity activity, x onClickAction) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onClickAction, "onClickAction");
        this.k.a(activity, onClickAction);
    }

    @Override // com.hyprmx.android.sdk.utility.k0
    public final void a(ArrayList permissionResults, int i) {
        Intrinsics.checkNotNullParameter(permissionResults, "permissionResults");
        HyprMXLog.d("onPermissionResponse - " + i);
        Intrinsics.checkNotNullParameter(permissionResults, "permissionResults");
        this.n.b(permissionResults, i);
    }

    public final void a0() {
        Intrinsics.checkNotNullParameter("onStop", NotificationCompat.CATEGORY_EVENT);
        this.o.i("onStop");
        this.n.c(false);
        this.j.a((com.hyprmx.android.sdk.network.h) this);
        RelativeLayout relativeLayout = this.q;
        if (relativeLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.TAG_LAYOUT);
            relativeLayout = null;
        }
        relativeLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        if (this.u) {
            BuildersKt__Builders_commonKt.launch$default(this, null, null, new l(this, null), 3, null);
        }
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object b(int i, Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.b(this, i, continuation);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object b(String str, int i, Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.c(this, str, i, continuation);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object b(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new n(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object b(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new k(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object b(boolean z, Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.d(this, z, continuation);
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void b(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.n.b(nativeObject);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void b(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.n.b(url);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void b(ArrayList permissionResults, int i) {
        Intrinsics.checkNotNullParameter(permissionResults, "permissionResults");
        this.n.b(permissionResults, i);
    }

    @Override // com.hyprmx.android.sdk.network.h
    public final void b(boolean z) {
        if (z) {
            return;
        }
        HyprMXLog.d("No internet connection detected.");
        this.n.J();
    }

    public void b0() {
        this.h.runningOnMainThread();
        RelativeLayout relativeLayout = new RelativeLayout(this.a);
        this.q = relativeLayout;
        relativeLayout.setId(R.id.hyprmx_root_layout);
        RelativeLayout relativeLayout2 = this.q;
        RelativeLayout.LayoutParams layoutParams = null;
        if (relativeLayout2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.TAG_LAYOUT);
            relativeLayout2 = null;
        }
        relativeLayout2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        this.r = layoutParams2;
        layoutParams2.addRule(13);
        AppCompatActivity appCompatActivity = this.a;
        RelativeLayout relativeLayout3 = this.q;
        if (relativeLayout3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(TtmlNode.TAG_LAYOUT);
            relativeLayout3 = null;
        }
        RelativeLayout.LayoutParams layoutParams3 = this.r;
        if (layoutParams3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adViewLayout");
        } else {
            layoutParams = layoutParams3;
        }
        appCompatActivity.setContentView(relativeLayout3, layoutParams);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object c(int i, Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.e(this, i, continuation);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object c(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new h(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object c(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new j(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public Object c(boolean z, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new r(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void c(boolean z) {
        this.n.c(z);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object d(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new o(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object d(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new q(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object d(boolean z, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new c0(this, null, z), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void destroy() {
        this.n.destroy();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object e(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new y(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object e(Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.f(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.a
    public final void e() {
        this.t.pauseJSExecution();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object f(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new w(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object f(Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.g(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void f(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.n.f(message);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object g(String str, Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.h(this, str, continuation);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object g(Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.i(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void g() {
        this.n.g();
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.l.plus(this.i).plus(new CoroutineName("HyprMXBaseViewController"));
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public Object h(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new a0(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ Object h(Continuation continuation) {
        return com.hyprmx.android.sdk.fullscreen.i.j(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.jsAlertDialog.a
    public final void h() {
        this.t.resumeJSExecution();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object i(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new v(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object i(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new g(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.mvp.c
    public final void i(String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.o.i(event);
    }

    @Override // com.hyprmx.android.sdk.core.w
    public final void imageCaptured(String str) {
        this.n.imageCaptured(str);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object j(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new u(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public final Object j(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new i(this, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void m() {
        this.n.m();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final String n() {
        return this.n.n();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void o() {
        this.n.o();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        int width = U().getWidth();
        int height = U().getHeight();
        if (this.x == height && this.w == width) {
            return;
        }
        this.x = height;
        this.w = width;
        Intrinsics.checkNotNullExpressionValue(this.a.getBaseContext(), "activity.baseContext");
        int iFloor = (int) Math.floor(com.hyprmx.android.sdk.utility.w.b(width, r1));
        int i = this.x;
        Intrinsics.checkNotNullExpressionValue(this.a.getBaseContext(), "activity.baseContext");
        this.n.a(iFloor, (int) Math.floor(com.hyprmx.android.sdk.utility.w.b(i, r3)));
    }

    @Override // com.hyprmx.android.sdk.utility.h0
    public final void p() {
        this.k.p();
    }

    @Override // com.hyprmx.android.sdk.utility.h0
    public final boolean q() {
        return this.k.q();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void s() {
        this.n.s();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ void showLearnMore() {
        com.hyprmx.android.sdk.fullscreen.i.k(this);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.c
    public /* synthetic */ void startCatalogDurationTracking(float f2, String str, String str2) {
        com.hyprmx.android.sdk.fullscreen.i.l(this, f2, str, str2);
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final boolean t() {
        return this.n.t();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void u() {
        this.n.u();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void w() {
        this.n.w();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final boolean x() {
        return this.n.x();
    }

    @Override // com.hyprmx.android.sdk.fullscreen.e
    public final void y() {
        this.n.y();
    }
}
