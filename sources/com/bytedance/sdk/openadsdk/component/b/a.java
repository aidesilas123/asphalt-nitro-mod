package com.bytedance.sdk.openadsdk.component.b;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.b.c;
import com.bytedance.sdk.openadsdk.common.b;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.s;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: FeedAdManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a a;
    private final p b = o.c();

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    public void a(final Context context, final AdSlot adSlot, final b bVar) {
        final ab abVarA = ab.a();
        this.b.a(adSlot, new s(), 5, new p.a() { // from class: com.bytedance.sdk.openadsdk.component.b.a.1
            private PAGNativeAd a(Context context2, q qVar, AdSlot adSlot2) {
                return qVar.u() != 2 ? new com.bytedance.sdk.openadsdk.apiImpl.feed.b(context2, qVar, 5, adSlot2) : qVar.K() != null ? new com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.a(context2, qVar, adSlot2) : new com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b(context2, qVar, adSlot2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(int i, String str) {
                bVar.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(com.bytedance.sdk.openadsdk.core.model.a aVar, com.bytedance.sdk.openadsdk.core.model.b bVar2) {
                if (aVar.c() == null || aVar.c().isEmpty()) {
                    bVar.onError(-3, g.a(-3));
                    bVar2.a(-3);
                    com.bytedance.sdk.openadsdk.core.model.b.a(bVar2);
                    return;
                }
                List<q> listC = aVar.c();
                ArrayList arrayList = new ArrayList(listC.size());
                Iterator<q> it = listC.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    q next = it.next();
                    if (q.c(next) || (next != null && next.am())) {
                        PAGNativeAd pAGNativeAdA = a(context, next, adSlot);
                        if (bVar instanceof PAGNativeAdLoadListener) {
                            arrayList.add(pAGNativeAdA);
                        }
                    }
                    if (q.c(next) && next.K() != null && next.K().k() != null) {
                        if (o.d().e(String.valueOf(next.aZ())) && o.d().X()) {
                            if (next.K() != null) {
                                next.K().f(1);
                            }
                            if (next.aN() != null) {
                                next.aN().f(1);
                            }
                            com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(next.aK()).c(), next);
                            bVarA.a("material_meta", next);
                            bVarA.a("ad_slot", adSlot);
                            com.bytedance.sdk.openadsdk.core.video.d.a.a(bVarA, null);
                        }
                    }
                }
                if (!((bVar instanceof PAGNativeAdLoadListener) && !arrayList.isEmpty())) {
                    bVar.onError(-4, g.a(-4));
                    bVar2.a(-4);
                    com.bytedance.sdk.openadsdk.core.model.b.a(bVar2);
                    return;
                }
                AdSlot adSlot2 = adSlot;
                if (adSlot2 == null) {
                    c.b(listC.get(0), ac.c(5), abVarA);
                } else if (TextUtils.isEmpty(adSlot2.getBidAdm())) {
                    c.b(listC.get(0), ac.c(adSlot.getDurationSlotType()), abVarA);
                } else {
                    c.c(listC.get(0), "embeded_ad", abVarA.c());
                }
                b bVar3 = bVar;
                if (bVar3 instanceof PAGNativeAdLoadListener) {
                    ((PAGNativeAdLoadListener) bVar3).onAdLoaded(arrayList.get(0));
                }
                if (bVar2.e() == null || bVar2.e().isEmpty()) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.model.b.a(bVar2);
            }
        });
    }
}
