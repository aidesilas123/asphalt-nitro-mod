package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ND {
    public static String[] A07 = {"FOFLIt4izaDLaQDOMIXk8qYNT283z5pM", "oiToeohcscvINDKXEsytRf9HFldaqPXB", "4ipPd9h88IiL3d99rWL92oIsRR1k6HBA", "hPx", "0GhefH5NzI2ypbPnqUG75Cq8VmhNX1", "2b6", "snO0JYp8WiAdMwbOevXppfTs6iFhTSIS", "awSLBYFe7Md8cHgboMT9P3Pgh1wlsZGE"};
    public final String A00 = ND.class.getSimpleName();
    public final WeakReference<AtomicBoolean> A01;
    public final WeakReference<AtomicBoolean> A02;
    public final WeakReference<C0S> A03;
    public final WeakReference<NE> A04;
    public final WeakReference<C1285Qb> A05;
    public final WeakReference<TA> A06;

    public ND(TA ta, NE ne, C1285Qb c1285Qb, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, YA ya) {
        this.A06 = new WeakReference<>(ta);
        this.A04 = new WeakReference<>(ne);
        this.A05 = new WeakReference<>(c1285Qb);
        this.A01 = new WeakReference<>(atomicBoolean);
        this.A02 = new WeakReference<>(atomicBoolean2);
        this.A03 = new WeakReference<>(ya.A0E());
    }

    private C0S A00() {
        C0S c0s = this.A03.get();
        return c0s == null ? new C1598ay() : c0s;
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(this.A00, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return L0.A01(AnonymousClass86.A02());
    }

    @JavascriptInterface
    public void logFunnel(int i, String str) {
        A00().AGE(i, str);
    }

    @JavascriptInterface
    public void onMainAssetLoaded() {
        A00().AGF();
        if (this.A06.get() == null || this.A01.get() == null || this.A02.get() == null) {
            return;
        }
        boolean z = this.A02.get().get();
        String[] strArr = A07;
        if (strArr[4].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A07[1] = "xXjDpbk5Vvc7CvrBd08NYXaJ46SIZN7q";
        if (z) {
            this.A01.get().set(true);
            A00().AGG();
            if (this.A06.get().isShown()) {
                A00().AGH();
                new Handler(Looper.getMainLooper()).post(new TC(this.A05));
            }
            NE ne = this.A04.get();
            if (ne != null) {
                new Handler(Looper.getMainLooper()).post(new NC(this, ne));
            }
        }
    }

    @JavascriptInterface
    public void onPageInitialized() {
        TA ta = this.A06.get();
        if (ta == null || ta.A06()) {
            A00().AGI(true);
            return;
        }
        NE ne = this.A04.get();
        if (ne == null) {
            A00().AGI(true);
        } else {
            A00().AGI(false);
            ne.ACH();
        }
    }
}
