package com.facebook.ads.redexgen.X;

import android.webkit.WebView;
import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aF, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1553aF implements C6I {
    public final C1Z A00;
    public final InterfaceC06891n A01;
    public final C6Q A02;
    public final YA A03;
    public final boolean A04;

    public C1553aF(YA ya, InterfaceC06891n interfaceC06891n, C6Q c6q, C1Z c1z, boolean z) {
        this.A03 = ya;
        this.A01 = interfaceC06891n;
        this.A02 = c6q;
        this.A00 = c1z;
        this.A04 = z;
    }

    private final void A00() {
        WebView webView = new WebView(this.A03);
        webView.getSettings().setCacheMode(1);
        webView.setWebViewClient(new C06901o(this.A00, this.A01, this.A04));
        webView.loadUrl(this.A00.A0E());
    }

    private void A01(boolean z) {
        if (this.A00.A09() == EnumC06761a.A05) {
            A00();
            return;
        }
        String strA0E = this.A00.A0E();
        if (z) {
            strA0E = this.A02.A0R(this.A00.A0E());
        }
        this.A00.A0H(strA0E);
        this.A01.ACN();
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAn() {
        if (this.A04) {
            this.A01.ACM(AdError.CACHE_ERROR);
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C6I
    public final void AAw() {
        A01(true);
    }
}
