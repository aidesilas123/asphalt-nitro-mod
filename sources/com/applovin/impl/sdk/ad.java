package com.applovin.impl.sdk;

import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class ad {
    private final Runnable aFN;
    private final WeakReference<View> aFO;
    private final long aFP;
    private int aFS;
    private float aFT;
    private float aFU;
    private long aFV;
    private final ViewTreeObserver.OnPreDrawListener auZ;
    private final x logger;
    private final Object rT = new Object();
    private final Rect aFM = new Rect();
    private WeakReference<ViewTreeObserver> aFQ = new WeakReference<>(null);
    private WeakReference<View> aFR = new WeakReference<>(null);
    private long startTimeMillis = Long.MIN_VALUE;
    private final Handler auW = new Handler(Looper.getMainLooper());

    public interface a {
        void onLogVisibilityImpression();
    }

    public ad(final View view, n nVar, a aVar) {
        this.logger = nVar.BN();
        this.aFP = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aMD)).longValue();
        this.aFO = new WeakReference<>(view);
        final WeakReference weakReference = new WeakReference(aVar);
        this.aFN = new Runnable() { // from class: com.applovin.impl.sdk.i0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(weakReference);
            }
        };
        this.auZ = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.sdk.h0
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.a.h(view);
            }
        };
    }

    private boolean a(View view, View view2) {
        if (view2 == null || view2.getVisibility() != 0 || view.getParent() == null || view2.getWidth() <= 0 || view2.getHeight() <= 0 || !view2.getGlobalVisibleRect(this.aFM)) {
            return false;
        }
        long jPxToDp = AppLovinSdkUtils.pxToDp(view2.getContext(), this.aFM.width()) * AppLovinSdkUtils.pxToDp(view2.getContext(), this.aFM.height());
        if (jPxToDp < this.aFS) {
            return false;
        }
        if ((jPxToDp / (AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getWidth()) * AppLovinSdkUtils.pxToDp(view2.getContext(), view2.getHeight()))) * 100.0f < this.aFT) {
            return false;
        }
        return (((float) ((long) (this.aFM.width() * this.aFM.height()))) / ((float) ((long) (view2.getWidth() * view2.getHeight())))) * 100.0f >= this.aFU;
    }

    private boolean b(View view, View view2) {
        if (!a(view, view2)) {
            return false;
        }
        if (this.startTimeMillis == Long.MIN_VALUE) {
            this.startTimeMillis = SystemClock.uptimeMillis();
        }
        return SystemClock.uptimeMillis() - this.startTimeMillis >= this.aFV;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(WeakReference weakReference) {
        View view = this.aFO.get();
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        View view2 = this.aFR.get();
        if (viewGroup == null || view2 == null) {
            return;
        }
        if (!b(viewGroup, view2)) {
            yQ();
            return;
        }
        if (x.Fn()) {
            this.logger.f("VisibilityTracker", "View met visibility requirements. Logging visibility impression..");
        }
        Fw();
        a aVar = (a) weakReference.get();
        if (aVar != null) {
            aVar.onLogVisibilityImpression();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean h(View view) {
        yQ();
        w(view);
        return true;
    }

    private void v(View view) {
        View viewA = com.applovin.impl.sdk.utils.u.A(this.aFO.get());
        if (viewA == null) {
            viewA = com.applovin.impl.sdk.utils.u.A(view);
        }
        if (viewA == null) {
            if (x.Fn()) {
                this.logger.f("VisibilityTracker", "Unable to set view tree observer due to no root view.");
                return;
            }
            return;
        }
        ViewTreeObserver viewTreeObserver = viewA.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.aFQ = new WeakReference<>(viewTreeObserver);
            viewTreeObserver.addOnPreDrawListener(this.auZ);
        } else if (x.Fn()) {
            this.logger.h("VisibilityTracker", "Unable to set view tree observer since the view tree observer is not alive.");
        }
    }

    private void w(View view) {
        ViewTreeObserver viewTreeObserver = this.aFQ.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.auZ);
        } else if (view != null) {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnPreDrawListener(this.auZ);
            } else if (x.Fn()) {
                this.logger.f("VisibilityTracker", "Could not remove on pre-draw listener. View tree observer is not alive.");
            }
        } else if (x.Fn()) {
            this.logger.f("VisibilityTracker", "Could not remove on pre-draw listener. Root view is null.");
        }
        this.aFQ.clear();
    }

    private void yQ() {
        this.auW.postDelayed(this.aFN, this.aFP);
    }

    public void Fw() {
        synchronized (this.rT) {
            this.auW.removeMessages(0);
            w(this.aFO.get());
            this.startTimeMillis = Long.MIN_VALUE;
            this.aFR.clear();
        }
    }

    public void a(int i, float f2, float f3, long j, View view) {
        synchronized (this.rT) {
            if (x.Fn()) {
                this.logger.f("VisibilityTracker", "Tracking visibility for " + view);
            }
            Fw();
            WeakReference<View> weakReference = new WeakReference<>(view);
            this.aFR = weakReference;
            this.aFS = i;
            this.aFT = f2;
            this.aFU = f3;
            this.aFV = j;
            v(weakReference.get());
        }
    }

    public void b(com.applovin.impl.mediation.b.e eVar) {
        View viewYl;
        if (eVar instanceof com.applovin.impl.mediation.b.b) {
            viewYl = eVar.getAdView();
        } else if (!(eVar instanceof com.applovin.impl.mediation.b.d)) {
            return;
        } else {
            viewYl = ((com.applovin.impl.mediation.b.d) eVar).yl();
        }
        a(eVar.yt(), eVar.yu(), eVar.yv(), eVar.yx(), viewYl);
    }
}
