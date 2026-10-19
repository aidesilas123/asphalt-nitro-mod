package com.vungle.ads.internal.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.d1;
import com.json.o2;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.internal.ui.PresenterAdOpenCallback;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: ActivityManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 .2\u00020\u0001:\u0003./0B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0006J\u0010\u0010\u0019\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\b\u0010\u001e\u001a\u00020\u000eH\u0005J\u000e\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001dJ\u001a\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010'\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0018\u0010(\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"2\u0006\u0010)\u001a\u00020$H\u0016J\u0010\u0010*\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J\u0012\u0010-\u001a\u00020\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002R\u001c\u0010\u0003\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/vungle/ads/internal/util/ActivityManager;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "()V", "adLeftCallbacks", "Ljava/util/concurrent/ConcurrentHashMap;", "Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;", "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", "callbacks", "Ljava/util/concurrent/CopyOnWriteArraySet;", "configChangeRunnable", "Ljava/lang/Runnable;", "handler", "Landroid/os/Handler;", "<set-?>", "", "isInitialized", "()Z", o2.h.f0, "resumed", "", o2.h.e0, o2.h.i0, "addListener", "", "callback", "addOnNextAppLeftCallback", "leftCallback", "deInit", "context", "Landroid/content/Context;", "inForeground", o2.a.f6463e, "onActivityCreated", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "removeListener", "removeOnNextAppLeftCallback", "Companion", "LeftApplicationCallback", "LifeCycleCallback", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class ActivityManager implements Application.ActivityLifecycleCallbacks {
    private Handler handler;
    private boolean isInitialized;
    private int resumed;
    private int started;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = ActivityManager.class.getSimpleName();
    private static final ActivityManager instance = new ActivityManager();
    private static final long TIMEOUT = 3000;
    private static final long CONFIG_CHANGE_DELAY = 700;
    private final CopyOnWriteArraySet<b> callbacks = new CopyOnWriteArraySet<>();
    private final ConcurrentHashMap<a, b> adLeftCallbacks = new ConcurrentHashMap<>();
    private boolean paused = true;
    private boolean stopped = true;
    private final Runnable configChangeRunnable = new Runnable() { // from class: com.vungle.ads.internal.util.a
        @Override // java.lang.Runnable
        public final void run() {
            ActivityManager.m1164configChangeRunnable$lambda0(this.a);
        }
    };

    /* JADX INFO: compiled from: ActivityManager.kt */
    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J.\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J,\u0010!\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010#\u001a\u0004\u0018\u00010$J6\u0010!\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u001f\u001a\u0004\u0018\u00010 R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u0019\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u000e\u0010\u0002\u001a\u0004\b\u000f\u0010\u0007R\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006%"}, d2 = {"Lcom/vungle/ads/internal/util/ActivityManager$Companion;", "", "()V", "CONFIG_CHANGE_DELAY", "", "getCONFIG_CHANGE_DELAY$annotations", "getCONFIG_CHANGE_DELAY", "()J", "TAG", "", "kotlin.jvm.PlatformType", "getTAG", "()Ljava/lang/String;", "TIMEOUT", "getTIMEOUT$annotations", "getTIMEOUT", d1.o, "Lcom/vungle/ads/internal/util/ActivityManager;", "getInstance", "()Lcom/vungle/ads/internal/util/ActivityManager;", "addLifecycleListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", "startActivityHandleException", "", "context", "Landroid/content/Context;", "deepLinkOverrideIntent", "Landroid/content/Intent;", "defaultIntent", "adOpenCallback", "Lcom/vungle/ads/internal/ui/PresenterAdOpenCallback;", "startWhenForeground", "deeplinkOverrideIntent", "leftCallback", "Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: ActivityManager.kt */
        @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/vungle/ads/internal/util/ActivityManager$Companion$startWhenForeground$1", "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", "onStart", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
        public static final class a extends b {
            final /* synthetic */ PresenterAdOpenCallback $adOpenCallback;
            final /* synthetic */ Intent $deepLinkOverrideIntent;
            final /* synthetic */ Intent $defaultIntent;
            final /* synthetic */ a $leftCallback;
            final /* synthetic */ WeakReference<Context> $weakContext;

            a(WeakReference<Context> weakReference, Intent intent, Intent intent2, PresenterAdOpenCallback presenterAdOpenCallback, a aVar) {
                this.$weakContext = weakReference;
                this.$deepLinkOverrideIntent = intent;
                this.$defaultIntent = intent2;
                this.$adOpenCallback = presenterAdOpenCallback;
                this.$leftCallback = aVar;
            }

            @Override // com.vungle.ads.internal.util.ActivityManager.b
            public void onStart() {
                super.onStart();
                Companion companion = ActivityManager.INSTANCE;
                companion.getInstance().removeListener(this);
                Context context = this.$weakContext.get();
                if (context == null || !companion.startActivityHandleException(context, this.$deepLinkOverrideIntent, this.$defaultIntent, this.$adOpenCallback)) {
                    return;
                }
                companion.getInstance().addOnNextAppLeftCallback(this.$leftCallback);
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        @VisibleForTesting
        public static /* synthetic */ void getCONFIG_CHANGE_DELAY$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getTIMEOUT$annotations() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean startActivityHandleException(Context context, Intent intent, Intent intent2, PresenterAdOpenCallback presenterAdOpenCallback) {
            if (intent == null && intent2 == null) {
                return false;
            }
            try {
                if (intent != null) {
                    context.startActivity(intent);
                    if (presenterAdOpenCallback != null) {
                        presenterAdOpenCallback.onDeeplinkClick(true);
                    }
                } else {
                    context.startActivity(intent2);
                }
                return true;
            } catch (Exception e2) {
                Log.e(getTAG(), "Cannot launch/find activity to handle the Implicit intent: " + e2);
                if (intent != null) {
                    try {
                        AnalyticsClient.INSTANCE.logError$vungle_ads_release(312, "Fail to open " + intent.getDataString(), (24 & 4) != 0 ? null : "", (24 & 8) != 0 ? null : null, (24 & 16) != 0 ? null : null);
                        if (presenterAdOpenCallback != null) {
                            presenterAdOpenCallback.onDeeplinkClick(false);
                        }
                    } catch (Exception unused) {
                        return false;
                    }
                }
                if (intent != null && intent2 != null) {
                    context.startActivity(intent2);
                    return true;
                }
                return false;
            }
        }

        public final void addLifecycleListener(b listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            getInstance().addListener(listener);
        }

        public final long getCONFIG_CHANGE_DELAY() {
            return ActivityManager.CONFIG_CHANGE_DELAY;
        }

        public final ActivityManager getInstance() {
            return ActivityManager.instance;
        }

        public final String getTAG() {
            return ActivityManager.TAG;
        }

        public final long getTIMEOUT() {
            return ActivityManager.TIMEOUT;
        }

        public final void startWhenForeground(Context context, Intent intent, Intent intent2, a aVar) {
            Intrinsics.checkNotNullParameter(context, "context");
            startWhenForeground(context, intent, intent2, aVar, null);
        }

        public final void startWhenForeground(Context context, Intent intent, Intent intent2, a aVar, PresenterAdOpenCallback presenterAdOpenCallback) {
            Intrinsics.checkNotNullParameter(context, "context");
            WeakReference weakReference = new WeakReference(context);
            if (!getInstance().inForeground()) {
                getInstance().addListener(new a(weakReference, intent, intent2, presenterAdOpenCallback, aVar));
            } else if (startActivityHandleException(context, intent, intent2, presenterAdOpenCallback)) {
                getInstance().addOnNextAppLeftCallback(aVar);
            }
        }
    }

    /* JADX INFO: compiled from: ActivityManager.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/vungle/ads/internal/util/ActivityManager$LeftApplicationCallback;", "", "onLeftApplication", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public interface a {
        void onLeftApplication();
    }

    /* JADX INFO: compiled from: ActivityManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0004H\u0016¨\u0006\b"}, d2 = {"Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", "", "()V", o2.h.t0, "", o2.h.u0, "onStart", "onStop", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static class b {
        public void onPause() {
        }

        public void onResume() {
        }

        public void onStart() {
        }

        public void onStop() {
        }
    }

    /* JADX INFO: compiled from: ActivityManager.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/vungle/ads/internal/util/ActivityManager$addOnNextAppLeftCallback$1", "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", "onStart", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends b {
        final /* synthetic */ Runnable $cancelRunnable;
        final /* synthetic */ WeakReference<a> $weakCallback;

        c(WeakReference<a> weakReference, Runnable runnable) {
            this.$weakCallback = weakReference;
            this.$cancelRunnable = runnable;
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onStart() {
            Companion companion = ActivityManager.INSTANCE;
            companion.getInstance().removeListener(this);
            b bVar = (b) ActivityManager.this.adLeftCallbacks.get(this.$weakCallback.get());
            if (bVar != null) {
                Handler handler = ActivityManager.this.handler;
                if (handler != null) {
                    handler.postDelayed(this.$cancelRunnable, companion.getTIMEOUT());
                }
                ActivityManager.this.addListener(bVar);
            }
        }
    }

    /* JADX INFO: compiled from: ActivityManager.kt */
    @Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\tH\u0016J\b\u0010\u000b\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"com/vungle/ads/internal/util/ActivityManager$addOnNextAppLeftCallback$callback$1", "Lcom/vungle/ads/internal/util/ActivityManager$LifeCycleCallback;", "wasPaused", "", "getWasPaused", "()Z", "setWasPaused", "(Z)V", o2.h.t0, "", o2.h.u0, "onStop", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class d extends b {
        final /* synthetic */ Runnable $cancelRunnable;
        final /* synthetic */ WeakReference<a> $weakCallback;
        final /* synthetic */ ActivityManager this$0;
        private boolean wasPaused;

        d(WeakReference<a> weakReference, ActivityManager activityManager, Runnable runnable) {
            this.$weakCallback = weakReference;
            this.this$0 = activityManager;
            this.$cancelRunnable = runnable;
        }

        public final boolean getWasPaused() {
            return this.wasPaused;
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onPause() {
            super.onPause();
            this.wasPaused = true;
            Handler handler = this.this$0.handler;
            if (handler != null) {
                handler.removeCallbacks(this.$cancelRunnable);
            }
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onResume() {
            super.onResume();
            Handler handler = this.this$0.handler;
            if (handler != null) {
                handler.postDelayed(this.$cancelRunnable, ActivityManager.INSTANCE.getCONFIG_CHANGE_DELAY() * ((long) 2));
            }
        }

        @Override // com.vungle.ads.internal.util.ActivityManager.b
        public void onStop() {
            super.onStop();
            a aVar = this.$weakCallback.get();
            if (this.wasPaused && aVar != null && this.this$0.adLeftCallbacks.containsKey(aVar)) {
                aVar.onLeftApplication();
            }
            this.this$0.removeOnNextAppLeftCallback(aVar);
            Handler handler = this.this$0.handler;
            if (handler != null) {
                handler.removeCallbacks(this.$cancelRunnable);
            }
        }

        public final void setWasPaused(boolean z) {
            this.wasPaused = z;
        }
    }

    /* JADX INFO: compiled from: ActivityManager.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/vungle/ads/internal/util/ActivityManager$addOnNextAppLeftCallback$cancelRunnable$1", "Ljava/lang/Runnable;", "run", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class e implements Runnable {
        final /* synthetic */ WeakReference<a> $weakCallback;

        e(WeakReference<a> weakReference) {
            this.$weakCallback = weakReference;
        }

        @Override // java.lang.Runnable
        public void run() {
            Handler handler = ActivityManager.this.handler;
            if (handler != null) {
                handler.removeCallbacks(this);
            }
            ActivityManager.this.removeOnNextAppLeftCallback(this.$weakCallback.get());
        }
    }

    private ActivityManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: configChangeRunnable$lambda-0, reason: not valid java name */
    public static final void m1164configChangeRunnable$lambda0(ActivityManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.resumed == 0 && !this$0.paused) {
            this$0.paused = true;
            Iterator<b> it = this$0.callbacks.iterator();
            while (it.hasNext()) {
                it.next().onPause();
            }
        }
        if (this$0.started == 0 && this$0.paused && !this$0.stopped) {
            this$0.stopped = true;
            Iterator<b> it2 = this$0.callbacks.iterator();
            while (it2.hasNext()) {
                it2.next().onStop();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeListener(b bVar) {
        this.callbacks.remove(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeOnNextAppLeftCallback(a aVar) {
        b bVarRemove;
        if (aVar == null || (bVarRemove = this.adLeftCallbacks.remove(aVar)) == null) {
            return;
        }
        removeListener(bVarRemove);
    }

    public final void addListener(b callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callbacks.add(callback);
    }

    public final void addOnNextAppLeftCallback(a aVar) {
        if (aVar == null) {
            return;
        }
        if (!this.isInitialized) {
            aVar.onLeftApplication();
            return;
        }
        WeakReference weakReference = new WeakReference(aVar);
        e eVar = new e(weakReference);
        d dVar = new d(weakReference, this, eVar);
        this.adLeftCallbacks.put(aVar, dVar);
        if (!inForeground()) {
            instance.addListener(new c(weakReference, eVar));
            return;
        }
        Handler handler = this.handler;
        if (handler != null) {
            handler.postDelayed(eVar, TIMEOUT);
        }
        addListener(dVar);
    }

    @VisibleForTesting
    public final void deInit(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
        this.started = 0;
        this.resumed = 0;
        this.paused = true;
        this.stopped = true;
        this.isInitialized = false;
        this.callbacks.clear();
        this.adLeftCallbacks.clear();
    }

    @VisibleForTesting
    protected final boolean inForeground() {
        return !this.isInitialized || this.started > 0;
    }

    public final void init(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.isInitialized) {
            return;
        }
        this.handler = new Handler(Looper.getMainLooper());
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
        this.isInitialized = true;
    }

    /* JADX INFO: renamed from: isInitialized, reason: from getter */
    public final boolean getIsInitialized() {
        return this.isInitialized;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.resumed = Math.max(0, this.resumed - 1);
        Handler handler = this.handler;
        if (handler != null) {
            handler.postDelayed(this.configChangeRunnable, CONFIG_CHANGE_DELAY);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        int i = this.resumed + 1;
        this.resumed = i;
        if (i == 1) {
            if (this.paused) {
                this.paused = false;
                Iterator<b> it = this.callbacks.iterator();
                while (it.hasNext()) {
                    it.next().onResume();
                }
                return;
            }
            Handler handler = this.handler;
            if (handler != null) {
                handler.removeCallbacks(this.configChangeRunnable);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        int i = this.started + 1;
        this.started = i;
        if (i == 1 && this.stopped) {
            this.stopped = false;
            Iterator<b> it = this.callbacks.iterator();
            while (it.hasNext()) {
                it.next().onStart();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.started = Math.max(0, this.started - 1);
        Handler handler = this.handler;
        if (handler != null) {
            handler.postDelayed(this.configChangeRunnable, CONFIG_CHANGE_DELAY);
        }
    }
}
