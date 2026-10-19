package com.fyber.inneractive.sdk.web;

import android.content.Context;
import android.os.Build;
import android.webkit.WebView;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.measurement.a;
import com.fyber.inneractive.sdk.util.h0;
import com.fyber.inneractive.sdk.web.d;
import com.fyber.inneractive.sdk.web.d0;
import com.fyber.inneractive.sdk.web.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c<T extends d0> extends c0<T> {
    public final b N;

    public c(Context context, b bVar, boolean z, boolean z2) {
        super(context, z, z2, i.g.INTERSTITIAL);
        this.N = bVar;
    }

    @Override // com.fyber.inneractive.sdk.web.g.a
    public void a() {
    }

    @Override // com.fyber.inneractive.sdk.web.d, com.fyber.inneractive.sdk.web.f
    public void a(int i) {
        d.InterfaceC0201d interfaceC0201d;
        if (this.N == null || (interfaceC0201d = this.f2755f) == null) {
            return;
        }
        interfaceC0201d.a(this, new InneractiveInfrastructureError(InneractiveErrorCode.SDK_INTERNAL_ERROR, com.fyber.inneractive.sdk.flow.g.WEBVIEW_FMP_ENDCARD_ERROR));
    }

    @Override // com.fyber.inneractive.sdk.web.d, com.fyber.inneractive.sdk.web.f
    public void a(WebView webView) {
        JSONObject jSONObject;
        if (webView == null || this.N == null) {
            return;
        }
        webView.setLongClickable(false);
        webView.setOnLongClickListener(new com.fyber.inneractive.sdk.util.a0());
        b bVar = this.N;
        com.fyber.inneractive.sdk.model.vast.l lVar = bVar.a.f2075f;
        if (lVar != null) {
            try {
                jSONObject = new JSONObject();
                h0.a(jSONObject, "name", lVar.a);
                h0.a(jSONObject, "description", lVar.b);
                JSONArray jSONArray = new JSONArray();
                List<String> list = lVar.c;
                if (list != null) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next());
                    }
                }
                h0.a(jSONObject, "icons", jSONArray);
                h0.a(jSONObject, CampaignEx.JSON_KEY_STAR, Float.valueOf(lVar.f2088d));
                JSONArray jSONArray2 = new JSONArray();
                List<String> list2 = lVar.f2089e;
                if (list2 != null) {
                    Iterator<String> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        jSONArray2.put(it2.next());
                    }
                }
                h0.a(jSONObject, "screenshots", jSONArray2);
            } catch (Exception unused) {
                jSONObject = null;
            }
        } else {
            jSONObject = null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript(String.format("loadAssets(%s);", jSONObject), new a(bVar));
        } else {
            webView.loadUrl(String.format("javascript:loadAssets('%s');", jSONObject));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    @Override // com.fyber.inneractive.sdk.web.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(java.lang.String r10, com.fyber.inneractive.sdk.util.k0 r11) {
        /*
            r9 = this;
            r0 = 0
            if (r10 == 0) goto Lae
            java.lang.String r1 = r10.toLowerCase()
            java.lang.String r2 = "fmpendcard://"
            java.lang.String r2 = r2.toLowerCase()
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto Lae
            com.fyber.inneractive.sdk.web.b r1 = r9.N
            r2 = 1
            if (r1 == 0) goto Lad
            com.fyber.inneractive.sdk.web.d$d r3 = r9.f2755f
            L extends com.fyber.inneractive.sdk.web.d0 r4 = r9.f2756g
            android.net.Uri r10 = android.net.Uri.parse(r10)
            r5 = 0
            if (r10 == 0) goto L28
            java.lang.String r6 = r10.getAuthority()
            goto L29
        L28:
            r6 = r5
        L29:
            boolean r7 = android.text.TextUtils.isEmpty(r6)
            if (r7 == 0) goto L36
            java.lang.String r10 = "empty type"
            r1.a(r3, r9, r10)
            goto Lad
        L36:
            r6.getClass()
            r7 = -1
            int r8 = r6.hashCode()
            switch(r8) {
                case -1867169789: goto L59;
                case -1086574198: goto L4e;
                case 94750088: goto L43;
                default: goto L41;
            }
        L41:
            r0 = -1
            goto L62
        L43:
            java.lang.String r0 = "click"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L4c
            goto L41
        L4c:
            r0 = 2
            goto L62
        L4e:
            java.lang.String r0 = "failure"
            boolean r0 = r6.equals(r0)
            if (r0 != 0) goto L57
            goto L41
        L57:
            r0 = 1
            goto L62
        L59:
            java.lang.String r8 = "success"
            boolean r6 = r6.equals(r8)
            if (r6 != 0) goto L62
            goto L41
        L62:
            java.lang.String r6 = "version"
            switch(r0) {
                case 0: goto L9e;
                case 1: goto L88;
                case 2: goto L68;
                default: goto L67;
            }
        L67:
            goto Lad
        L68:
            if (r4 == 0) goto Lad
            com.fyber.inneractive.sdk.flow.vast.e r10 = r1.c
            if (r10 == 0) goto Lad
            com.fyber.inneractive.sdk.web.b$a r0 = new com.fyber.inneractive.sdk.web.b$a
            java.lang.String r3 = r1.b
            int r10 = r10.f2032d
            r0.<init>(r3, r10)
            com.fyber.inneractive.sdk.model.vast.b r10 = r1.a
            com.fyber.inneractive.sdk.model.vast.c r1 = r10.h
            if (r1 == 0) goto L7f
            java.lang.String r5 = r1.f2080g
        L7f:
            if (r5 == 0) goto L82
            goto L84
        L82:
            java.lang.String r5 = r10.b
        L84:
            r4.a(r5, r11, r0)
            goto Lad
        L88:
            java.lang.String r11 = r10.getQueryParameter(r6)
            boolean r0 = android.text.TextUtils.isEmpty(r11)
            if (r0 != 0) goto L94
            r1.b = r11
        L94:
            java.lang.String r11 = "error"
            java.lang.String r10 = r10.getQueryParameter(r11)
            r1.a(r3, r9, r10)
            goto Lad
        L9e:
            java.lang.String r10 = r10.getQueryParameter(r6)
            boolean r11 = android.text.TextUtils.isEmpty(r10)
            if (r11 != 0) goto Laa
            r1.b = r10
        Laa:
            r9.g()
        Lad:
            return r2
        Lae:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.web.c.a(java.lang.String, com.fyber.inneractive.sdk.util.k0):boolean");
    }

    @Override // com.fyber.inneractive.sdk.web.g.a
    public void b() {
    }

    @Override // com.fyber.inneractive.sdk.web.d
    public a.InterfaceC0164a d() {
        return null;
    }
}
