package com.json.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.json.adqualitysdk.sdk.i.at;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes4.dex */
public final class jo {
    private static long a = -830612219425174917L;
    private static int b = 0;
    private static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<WebView> f5929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WeakReference<jl> f5930e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f5931f;

    public jo(WebView webView) {
        this.f5929d = new WeakReference<>(webView);
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ a);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    private static void b(at.e eVar) {
        new WeakReference(eVar);
        int i = c + 93;
        b = i % 128;
        int i2 = i % 2;
    }

    private void c(jl jlVar) {
        this.f5930e = new WeakReference<>(jlVar);
        int i = b + 105;
        c = i % 128;
        if ((i % 2 == 0 ? (char) 17 : '[') == '[') {
        } else {
            throw null;
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final boolean m927() {
        int i = b + 89;
        c = i % 128;
        if (!(i % 2 == 0)) {
            return this.f5931f;
        }
        int i2 = 13 / 0;
        return this.f5931f;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final WebView m928() {
        int i = b + 49;
        c = i % 128;
        if (!(i % 2 == 0)) {
            return this.f5929d.get();
        }
        int i2 = 84 / 0;
        return this.f5929d.get();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m929(WebChromeClient webChromeClient) {
        int i = c + 67;
        b = i % 128;
        int i2 = i % 2;
        WebView webViewM928 = m928();
        if (webViewM928 != null) {
            try {
                hg hgVar = new hg(kb.m1013(webViewM928), webChromeClient);
                b(hgVar);
                webViewM928.setWebChromeClient(hgVar);
                int i3 = b + 65;
                c = i3 % 128;
                int i4 = i3 % 2;
            } catch (Exception e2) {
                jy.m987(a("䨬翹⇗\ueb98鶎䞝०㍯\ue53b꼐儘\u1af8쳜\uf6a9뢶抜", TextUtils.getOffsetAfter("", 0) + 13799).intern(), a("䨾沺ݯ㸍탅謤ꈮ䓻羗ᙄ죬\ue3a4驸뵌埦\u0e63℩\udbdb\uf285镀俨暹\u197c〭\ueadf赩ꐰ廴熛", 9907 - KeyEvent.getDeadChar(0, 0)).intern(), (Throwable) e2, false);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final jl m930() {
        WeakReference<jl> weakReference = this.f5930e;
        if ((weakReference != null ? (char) 5 : (char) 4) == 4) {
            int i = c + 57;
            b = i % 128;
            int i2 = i % 2;
            return null;
        }
        jl jlVar = weakReference.get();
        int i3 = c + 117;
        b = i3 % 128;
        if ((i3 % 2 != 0 ? ',' : '\\') != ',') {
            return jlVar;
        }
        int i4 = 28 / 0;
        return jlVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m931(WebViewClient webViewClient) {
        int i = b + 71;
        c = i % 128;
        int i2 = i % 2;
        WebView webViewM928 = m928();
        if (webViewM928 != null) {
            try {
                hd hdVar = new hd(kb.m1015(webViewM928), webViewClient);
                c(hdVar);
                webViewM928.setWebViewClient(hdVar);
                this.f5931f = true;
                return;
            } catch (Exception e2) {
                jy.m987(a("䨬翹⇗\ueb98鶎䞝०㍯\ue53b꼐儘\u1af8쳜\uf6a9뢶抜", 13799 - (ViewConfiguration.getEdgeSlop() >> 16)).intern(), a("䨾홶狷齩㯵䐠\ue0e6൧꧷쩸囤\uf360Ῠ련쓞慯跩⹂䫼흳珠鱓㣽䕻\ue1f6ɲ껩", TextUtils.indexOf((CharSequence) "", '0', 0, 0) + 40064).intern(), (Throwable) e2, false);
            }
        }
        this.f5931f = false;
        int i3 = b + 115;
        c = i3 % 128;
        int i4 = i3 % 2;
    }
}
