package com.fyber.inneractive.sdk.measurement;

import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.network.t;
import com.fyber.inneractive.sdk.util.IAlog;
import com.iab.omid.library.fyber.adsession.AdEvents;
import com.iab.omid.library.fyber.adsession.AdSession;
import com.iab.omid.library.fyber.adsession.VerificationScriptResource;
import com.iab.omid.library.fyber.adsession.media.MediaEvents;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public AdSession a;
    public AdEvents b;
    public MediaEvents c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public f0 f2052f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2050d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2051e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public WebViewClient f2053g = new a();

    public class a extends WebViewClient {
        public a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            d.this.a();
            return true;
        }
    }

    public List<VerificationScriptResource> a(List<f> list) {
        ArrayList arrayList = new ArrayList();
        for (f fVar : list) {
            VerificationScriptResource verificationScriptResourceCreateVerificationScriptResourceWithoutParameters = null;
            try {
                if (fVar.a != null) {
                    verificationScriptResourceCreateVerificationScriptResourceWithoutParameters = (TextUtils.isEmpty(fVar.f2055e) || TextUtils.isEmpty(fVar.f2054d)) ? VerificationScriptResource.createVerificationScriptResourceWithoutParameters(fVar.a) : VerificationScriptResource.createVerificationScriptResourceWithParameters(fVar.f2055e, fVar.a, fVar.f2054d);
                }
            } catch (Throwable th) {
                a(th);
            }
            if (verificationScriptResourceCreateVerificationScriptResourceWithoutParameters != null) {
                arrayList.add(verificationScriptResourceCreateVerificationScriptResourceWithoutParameters);
            }
        }
        return arrayList;
    }

    public void a() {
        if (this.a != null) {
            IAlog.a("%s destroy", "OMVideo");
            try {
                this.a.finish();
            } catch (Throwable th) {
                a(th);
            }
        }
        this.b = null;
        this.a = null;
        this.c = null;
    }

    public final void a(Throwable th) {
        String simpleName = th.getClass().getSimpleName();
        String str = String.format("%s - %s", "OpenMeasurementNativeVideoTracker", th.getMessage());
        f0 f0Var = this.f2052f;
        t.a(simpleName, str, f0Var != null ? f0Var.a : null, f0Var != null ? (com.fyber.inneractive.sdk.response.g) f0Var.b : null);
    }
}
