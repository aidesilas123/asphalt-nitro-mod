package com.applovin.impl.sdk;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.PixelCopy;
import android.view.View;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.r;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class j {

    @Nullable
    private HandlerThread GH;
    private final long aAg;
    private final long aAh;
    private final int aAi;
    private final int aAj;

    @Nullable
    private a aAn;

    @Nullable
    private Handler jS;
    private final x logger;
    private final n sdk;
    private WeakReference<View> aAk = new WeakReference<>(null);
    private int aAl = 0;
    private Integer aAm = null;
    private final Runnable v = new Runnable() { // from class: com.applovin.impl.sdk.u0
        @Override // java.lang.Runnable
        public final void run() {
            this.a.AZ();
        }
    };

    public interface a {
        void onBlackViewDetected(View view);
    }

    private interface b {
        void aJ(boolean z);

        void b(Bitmap bitmap);
    }

    public j(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.aAg = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aQC)).longValue();
        this.aAh = ((Long) nVar.a(com.applovin.impl.sdk.c.b.aQB)).longValue();
        this.aAi = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aQD)).intValue();
        this.aAj = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aQE)).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void AY() {
        if (this.aAk.get() != null) {
            if (x.Fn()) {
                this.logger.f("BlackViewDetector", "Stopped monitoring view: " + this.aAk.get());
            }
            this.aAk.clear();
        }
        Handler handler = this.jS;
        if (handler != null) {
            handler.removeCallbacks(this.v);
            this.jS = null;
        }
        if (this.aAn != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.v0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Bc();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void AZ() {
        View view = this.aAk.get();
        if (view == null) {
            if (x.Fn()) {
                this.logger.h("BlackViewDetector", "Monitored view no longer exists.");
            }
            AY();
            return;
        }
        if (x.Fn()) {
            this.logger.f("BlackViewDetector", "Checking for black view: " + view);
        }
        final int measuredWidth = view.getMeasuredWidth();
        final int measuredHeight = view.getMeasuredHeight();
        if (measuredWidth != 0 && measuredHeight != 0) {
            a(view, new b() { // from class: com.applovin.impl.sdk.j.1
                @Override // com.applovin.impl.sdk.j.b
                public void aJ(boolean z) {
                    if (z) {
                        j.this.AY();
                    } else {
                        j.this.Ba();
                    }
                }

                @Override // com.applovin.impl.sdk.j.b
                public void b(Bitmap bitmap) {
                    int i = measuredWidth / j.this.aAi;
                    int i2 = measuredHeight / j.this.aAi;
                    int i3 = i / 2;
                    for (int i4 = i2 / 2; i4 < measuredHeight; i4 += i2) {
                        for (int i5 = i3; i5 < measuredWidth; i5 += i) {
                            int pixel = bitmap.getPixel(i5, i4);
                            if (j.this.gz(pixel)) {
                                j.this.aAl = 0;
                                bitmap.recycle();
                                j.this.Ba();
                                return;
                            }
                            if (j.this.aAm == null) {
                                j.this.aAm = Integer.valueOf(pixel);
                            }
                        }
                    }
                    j.d(j.this);
                    bitmap.recycle();
                    j.this.Ba();
                }
            });
            return;
        }
        if (x.Fn()) {
            this.logger.h("BlackViewDetector", "Monitored view is not visible due to dimensions (width = " + measuredWidth + ", height = " + measuredHeight + ")");
        }
        this.aAl = 0;
        Ba();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Ba() {
        long j = this.aAg;
        if (j <= 0) {
            if (this.aAl == 1) {
                Bb();
            }
            AY();
        } else {
            if (this.aAl > 1) {
                Bb();
                AY();
                return;
            }
            Handler handler = this.jS;
            if (handler != null) {
                handler.postDelayed(this.v, j);
                return;
            }
            if (x.Fn()) {
                this.logger.h("BlackViewDetector", "Monitoring handler was unexpectedly null");
            }
            AY();
        }
    }

    private void Bb() {
        final View view = this.aAk.get();
        if (x.Fn()) {
            this.logger.h("BlackViewDetector", "Detected black view: " + view);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.w0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.u(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Bc() {
        this.aAn = null;
    }

    private void a(View view, final b bVar) {
        if (Build.VERSION.SDK_INT < 26) {
            if (x.Fn()) {
                this.logger.h("BlackViewDetector", "Unable to capture screenshots on views below API 26");
            }
            bVar.aJ(true);
            return;
        }
        Activity activityAA = this.sdk.BM().AA();
        if (activityAA == null) {
            if (x.Fn()) {
                this.logger.i("BlackViewDetector", "Failed to capture screenshot due to no active activity");
            }
            bVar.aJ(false);
            return;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + measuredWidth, iArr[1] + measuredHeight);
        try {
            final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
            PixelCopy.request(activityAA.getWindow(), rect, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.applovin.impl.sdk.j.2
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public void onPixelCopyFinished(int i) {
                    if (i == 0) {
                        bVar.b(bitmapCreateBitmap);
                        return;
                    }
                    x unused = j.this.logger;
                    if (x.Fn()) {
                        j.this.logger.i("BlackViewDetector", "Failed to capture screenshot with error code: " + i);
                    }
                    bVar.aJ(true);
                }
            }, new Handler());
        } catch (Throwable th) {
            if (x.Fn()) {
                this.logger.i("BlackViewDetector", "Failed to capture screenshot due to exception: " + th);
            }
            bVar.aJ(true);
        }
    }

    static /* synthetic */ int d(j jVar) {
        int i = jVar.aAl;
        jVar.aAl = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean gz(int i) {
        boolean z = Color.red(i) <= this.aAj && Color.blue(i) <= this.aAj && Color.green(i) <= this.aAj;
        Integer num = this.aAm;
        return !z || (num != null && i != num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u(View view) {
        a aVar = this.aAn;
        if (aVar != null) {
            aVar.onBlackViewDetected(view);
        }
    }

    public void a(View view, a aVar) {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aQA)).booleanValue()) {
            View view2 = this.aAk.get();
            if (view2 != null) {
                if (x.Fn()) {
                    this.logger.h("BlackViewDetector", "Monitoring is already in progress for a view: " + view2);
                    return;
                }
                return;
            }
            if (x.Fn()) {
                this.logger.f("BlackViewDetector", "Started monitoring view: " + view);
            }
            try {
                if (this.GH == null) {
                    HandlerThread handlerThread = new HandlerThread("AppLovinSdk:black_view_detector");
                    this.GH = handlerThread;
                    handlerThread.start();
                } else {
                    this.sdk.Cs().a(r.a.CAUGHT_EXCEPTION, "BlackViewDetector", "maybeStartMonitoring() unexpectedly called multiple times");
                    AY();
                }
                this.aAn = aVar;
                this.aAk = new WeakReference<>(view);
                this.aAl = 0;
                this.aAm = null;
                Handler handler = new Handler(this.GH.getLooper());
                this.jS = handler;
                handler.postDelayed(this.v, this.aAh);
            } catch (Throwable th) {
                AY();
                this.sdk.Cs().d("BlackViewDetector", "maybeStartMonitoring", th);
            }
        }
    }

    public void destroy() {
        AY();
        HandlerThread handlerThread = this.GH;
        if (handlerThread != null) {
            handlerThread.quit();
            this.GH = null;
        }
    }
}
