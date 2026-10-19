package com.applovin.impl.mediation.nativeAds.a;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final WeakHashMap<View, Integer> auU = new WeakHashMap<>();
    private final Object auV = new Object();
    private final Handler auW = new Handler();
    private boolean auX = false;
    private final WeakReference<View> auY;
    private final ViewTreeObserver.OnPreDrawListener auZ;
    private a ava;

    public interface a {
        void S(int i, int i2);
    }

    public c(View view) {
        this.auY = new WeakReference<>(view);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            this.auZ = null;
            return;
        }
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.mediation.nativeAds.a.e
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.a.yS();
            }
        };
        this.auZ = onPreDrawListener;
        viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
    }

    private boolean t(View view) {
        return (view == null || view.getVisibility() != 0 || view.getParent() == null) ? false : true;
    }

    private void yQ() {
        if (this.auX) {
            return;
        }
        this.auX = true;
        this.auW.postDelayed(new Runnable() { // from class: com.applovin.impl.mediation.nativeAds.a.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.yR();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void yR() {
        synchronized (this.auV) {
            this.auX = false;
            int iMin = -1;
            int iMax = -1;
            for (Map.Entry<View, Integer> entry : this.auU.entrySet()) {
                if (t(entry.getKey())) {
                    Integer value = entry.getValue();
                    if (iMin == -1 && iMax == -1) {
                        iMin = value.intValue();
                        iMax = value.intValue();
                    } else {
                        iMin = Math.min(iMin, entry.getValue().intValue());
                        iMax = Math.max(iMax, entry.getValue().intValue());
                    }
                }
            }
            a aVar = this.ava;
            if (aVar != null) {
                aVar.S(iMin, iMax);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean yS() {
        yQ();
        return true;
    }

    public void a(View view, int i) {
        synchronized (this.auV) {
            this.auU.put(view, Integer.valueOf(i));
            yQ();
        }
    }

    public void a(a aVar) {
        this.ava = aVar;
    }

    public void destroy() {
        ViewTreeObserver.OnPreDrawListener onPreDrawListener;
        this.ava = null;
        View view = this.auY.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive() && (onPreDrawListener = this.auZ) != null) {
                viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            }
            this.auY.clear();
        }
    }

    public void k(View view) {
        synchronized (this.auV) {
            this.auU.remove(view);
        }
    }
}
