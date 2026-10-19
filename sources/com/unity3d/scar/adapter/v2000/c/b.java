package com.unity3d.scar.adapter.v2000.c;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.query.QueryInfo;
import com.unity3d.scar.adapter.common.l.c;
import com.unity3d.scar.adapter.common.l.d;
import com.unity3d.scar.adapter.common.l.e;
import com.unity3d.scar.adapter.common.l.f;
import com.unity3d.scar.adapter.common.l.g;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;

/* JADX INFO: compiled from: SignalsCollector.java */
/* JADX INFO: loaded from: classes4.dex */
public class b extends e implements c {
    private g<QueryInfo> a;

    /* JADX INFO: compiled from: SignalsCollector.java */
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

    public b(g<QueryInfo> gVar) {
        this.a = gVar;
    }

    @Override // com.unity3d.scar.adapter.common.l.c
    public void c(Context context, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.a aVar, f fVar) {
        f("GMA v2000 - SCAR signal retrieval without a placementId not relevant", aVar, fVar);
    }

    @Override // com.unity3d.scar.adapter.common.l.c
    public void d(Context context, String str, UnityAdFormat unityAdFormat, com.unity3d.scar.adapter.common.a aVar, f fVar) {
        QueryInfo.generate(context, g(unityAdFormat), new AdRequest.Builder().build(), new com.unity3d.scar.adapter.v2000.c.a(str, new d(aVar, this.a, fVar)));
    }

    public AdFormat g(UnityAdFormat unityAdFormat) {
        int i = a.a[unityAdFormat.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? AdFormat.BANNER : AdFormat.REWARDED : AdFormat.INTERSTITIAL : AdFormat.BANNER;
    }
}
