package com.fyber.inneractive.sdk.web;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.web.d;
import com.json.b4;

/* JADX INFO: loaded from: classes2.dex */
public class e extends AsyncTask<Void, Void, String> {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f2757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f2758e;

    public e(d dVar, String str, String str2, String str3, String str4) {
        this.f2758e = dVar;
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.f2757d = str4;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0165  */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String doInBackground(java.lang.Void[] r15) {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.web.e.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        String str2 = str;
        String str3 = com.fyber.inneractive.sdk.util.p.a() ? "http://" : "https://";
        if (TextUtils.isEmpty(str2) || isCancelled()) {
            if (isCancelled()) {
                return;
            }
            d dVar = this.f2758e;
            InneractiveInfrastructureError inneractiveInfrastructureError = new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, com.fyber.inneractive.sdk.flow.g.EMPTY_FINAL_HTML);
            d.InterfaceC0201d interfaceC0201d = dVar.f2755f;
            if (interfaceC0201d != null) {
                interfaceC0201d.a(dVar, inneractiveInfrastructureError);
            }
            dVar.b(true);
            return;
        }
        this.f2758e.o = null;
        if (TextUtils.isEmpty(this.f2757d)) {
            this.f2758e.p = str3 + "wv.inner-active.mobi/";
        } else {
            this.f2758e.p = str3 + this.f2757d;
        }
        d dVar2 = this.f2758e;
        g gVar = dVar2.b;
        if (gVar != null) {
            gVar.loadDataWithBaseURL(dVar2.p, str2, "text/html", b4.L, null);
            this.f2758e.q = str2;
            return;
        }
        InneractiveInfrastructureError inneractiveInfrastructureError2 = new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, com.fyber.inneractive.sdk.flow.g.COULD_NOT_LOAD_TO_WEBVIEW);
        d.InterfaceC0201d interfaceC0201d2 = dVar2.f2755f;
        if (interfaceC0201d2 != null) {
            interfaceC0201d2.a(dVar2, inneractiveInfrastructureError2);
        }
        dVar2.b(true);
    }
}
