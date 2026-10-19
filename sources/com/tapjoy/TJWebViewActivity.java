package com.tapjoy;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.PersistableBundle;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.json.o2;
import com.tapjoy.internal.u7;
import com.tapjoy.internal.v8;
import com.unity3d.ads.adplayer.AndroidWebViewClient;

/* JADX INFO: loaded from: classes4.dex */
public class TJWebViewActivity extends TJActivity {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View f7819f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TJWebView f7820g;
    public k h;

    public class a extends t {
        public a() {
        }

        @Override // com.tapjoy.t
        public Context a() {
            return TJWebViewActivity.this;
        }

        @Override // com.tapjoy.t
        public WebView c() {
            return TJWebViewActivity.this.f7820g;
        }
    }

    @Override // com.tapjoy.TJActivity
    public final void b() {
        k kVar = this.h;
        if (kVar == null || kVar.j) {
            return;
        }
        TapjoyLog.d("TJWebViewActivity", "closeRequested");
        this.h.b(Boolean.FALSE);
        new Handler(getMainLooper()).postDelayed(new u7(this), 1000L);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean e(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 233
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TJWebViewActivity.e(java.lang.String):boolean");
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.h != null) {
            int iB = v8.b(this);
            int iA = v8.a(this);
            this.h.k(iB > iA ? o2.h.C : o2.h.D, iB, iA);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    @Override // com.tapjoy.TJActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onCreate(android.os.Bundle r13) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.TJWebViewActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle, @Nullable PersistableBundle persistableBundle) {
        super.onCreate(bundle, persistableBundle);
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        this.a.removeAllViews();
        TJWebView tJWebView = this.f7820g;
        if (tJWebView != null) {
            tJWebView.loadUrl(AndroidWebViewClient.BLANK_PAGE);
            this.f7820g.destroy();
            this.f7820g = null;
        }
        k kVar = this.h;
        if (kVar != null) {
            kVar.c();
            this.h = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        TJWebView tJWebView = this.f7820g;
        if (tJWebView != null) {
            tJWebView.onPause();
        }
        k kVar = this.h;
        if (kVar != null) {
            kVar.v(false);
            this.h.t();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        TJWebView tJWebView = this.f7820g;
        if (tJWebView != null) {
            tJWebView.onResume();
        }
        k kVar = this.h;
        if (kVar != null) {
            kVar.v(true);
            this.h.u();
        }
    }

    @Override // com.tapjoy.TJActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
    }

    @Override // com.tapjoy.TJActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
    }
}
