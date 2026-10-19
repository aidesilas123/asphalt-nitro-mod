package com.tapjoy;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.VideoView;
import com.json.b4;
import com.tapjoy.TapjoyErrorMessage;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 implements Runnable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ w b;
    public final /* synthetic */ boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TJAdUnit f8036d;

    public k0(TJAdUnit tJAdUnit, Context context, w wVar, boolean z) {
        this.f8036d = tJAdUnit;
        this.a = context;
        this.b = wVar;
        this.c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        TJAdUnit tJAdUnit = this.f8036d;
        Context context = this.a;
        tJAdUnit.getClass();
        if (Looper.myLooper() != Looper.getMainLooper() || tJAdUnit.y || context == null) {
            z = tJAdUnit.y;
        } else {
            TapjoyLog.d("TJAdUnit", "Constructing ad unit");
            tJAdUnit.y = true;
            try {
                tJAdUnit.h = new View(context);
                TJWebView tJWebView = new TJWebView(context);
                tJAdUnit.i = tJWebView;
                tJWebView.setWebViewClient(tJAdUnit.I);
                tJAdUnit.i.setWebChromeClient(tJAdUnit.J);
                VideoView videoView = new VideoView(context);
                tJAdUnit.j = videoView;
                videoView.setOnCompletionListener(tJAdUnit);
                tJAdUnit.j.setOnErrorListener(tJAdUnit);
                tJAdUnit.j.setOnPreparedListener(tJAdUnit);
                tJAdUnit.j.setVisibility(4);
                l0 l0Var = new l0(tJAdUnit);
                tJAdUnit.f7790g = l0Var;
                tJAdUnit.f7789f = new k(l0Var);
                if (context instanceof TJAdUnitActivity) {
                    tJAdUnit.w((TJAdUnitActivity) context);
                }
                z = tJAdUnit.y;
            } catch (Exception e2) {
                TapjoyLog.w("TJAdUnit", e2.getMessage());
                z = false;
            }
        }
        if (z) {
            TapjoyLog.i("TJAdUnit", "Loading ad unit content");
            this.f8036d.w = true;
            try {
                if (TextUtils.isEmpty(this.b.j())) {
                    if (this.b.d() == null || this.b.f() == null) {
                        TapjoyLog.e("TJAdUnit", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Error loading ad unit content"));
                        this.f8036d.w = false;
                    } else {
                        this.f8036d.i.loadDataWithBaseURL(this.b.d(), this.b.f(), "text/html", b4.L, null);
                    }
                } else if (this.b.n()) {
                    this.f8036d.i.postUrl(this.b.j(), null);
                } else {
                    this.f8036d.i.loadUrl(this.b.j());
                }
            } catch (Exception unused) {
                TapjoyLog.e("TJAdUnit", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Error loading ad unit content"));
                this.f8036d.w = false;
            }
            TJAdUnit tJAdUnit2 = this.f8036d;
            tJAdUnit2.x = tJAdUnit2.w && this.c;
        }
    }
}
