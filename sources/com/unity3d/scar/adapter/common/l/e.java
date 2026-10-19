package com.unity3d.scar.adapter.common.l;

import android.content.Context;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: SignalsCollectorBase.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class e implements c {

    /* JADX INFO: compiled from: SignalsCollectorBase.java */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[UnityAdFormat.values().length];
            a = iArr;
            try {
                iArr[UnityAdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[UnityAdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[UnityAdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: compiled from: SignalsCollectorBase.java */
    private class b implements Runnable {
        private com.unity3d.scar.adapter.common.l.b a;
        private f b;

        public b(com.unity3d.scar.adapter.common.l.b bVar, f fVar) {
            this.a = bVar;
            this.b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> mapC = this.b.c();
            if (mapC.size() > 0) {
                this.a.onSignalsCollected(new JSONObject(mapC).toString());
            } else if (this.b.b() == null) {
                this.a.onSignalsCollected("");
            } else {
                this.a.onSignalsCollectionFailed(this.b.b());
            }
        }
    }

    @Override // com.unity3d.scar.adapter.common.l.c
    public void a(Context context, boolean z, com.unity3d.scar.adapter.common.l.b bVar) {
        com.unity3d.scar.adapter.common.a aVar = new com.unity3d.scar.adapter.common.a();
        f fVar = new f();
        aVar.a();
        c(context, UnityAdFormat.INTERSTITIAL, aVar, fVar);
        aVar.a();
        c(context, UnityAdFormat.REWARDED, aVar, fVar);
        if (z) {
            aVar.a();
            c(context, UnityAdFormat.BANNER, aVar, fVar);
        }
        aVar.c(new b(bVar, fVar));
    }

    @Override // com.unity3d.scar.adapter.common.l.c
    public void b(Context context, String str, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.l.b bVar) {
        com.unity3d.scar.adapter.common.a aVar = new com.unity3d.scar.adapter.common.a();
        f fVar = new f();
        aVar.a();
        d(context, str, unityAdFormat, aVar, fVar);
        aVar.c(new b(bVar, fVar));
    }

    public String e(UnityAdFormat unityAdFormat) {
        int i = a.a[unityAdFormat.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? "" : "gmaScarBiddingRewardedSignal" : "gmaScarBiddingInterstitialSignal" : "gmaScarBiddingBannerSignal";
    }

    public void f(String str, com.unity3d.scar.adapter.common.a aVar, f fVar) {
        fVar.d(String.format("Operation Not supported: %s.", str));
        aVar.b();
    }
}
