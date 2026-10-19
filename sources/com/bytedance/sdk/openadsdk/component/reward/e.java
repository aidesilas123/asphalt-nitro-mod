package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.v;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.component.reward.d;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.s;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.core.video.b.a;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: compiled from: FullScreenVideoLoadManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile e a;
    private final Context b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.component.g.h f1359e;
    private final AtomicBoolean c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<b> f1358d = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v.a f1360f = new v.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.7
        @Override // com.bytedance.sdk.component.utils.v.a
        public void a(Context context, Intent intent, boolean z, int i) {
            if (z) {
                if (e.this.f1359e == null) {
                    e eVar = e.this;
                    eVar.f1359e = new com.bytedance.sdk.openadsdk.component.reward.b("fsv net connect task", eVar.f1358d);
                }
                com.bytedance.sdk.component.utils.h.a().post(e.this.f1359e);
            }
        }
    };

    /* JADX INFO: compiled from: FullScreenVideoLoadManager.java */
    private static class a implements PAGInterstitialAdLoadListener {
        private final com.bytedance.sdk.openadsdk.common.b a;
        private final AtomicBoolean b;
        private final AtomicInteger c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.bytedance.sdk.openadsdk.core.model.a f1379d;

        private a(com.bytedance.sdk.openadsdk.common.b bVar, com.bytedance.sdk.openadsdk.core.model.a aVar) {
            this.b = new AtomicBoolean(false);
            this.a = bVar;
            this.f1379d = aVar;
            this.c = new AtomicInteger(a());
        }

        private int a() {
            if (!this.f1379d.d()) {
                return 0;
            }
            int i = 0;
            for (int i2 = 0; i2 < this.f1379d.c().size(); i2++) {
                q qVar = this.f1379d.c().get(i2);
                if (qVar != null && !t.k(qVar) && qVar.K() != null) {
                    i++;
                }
            }
            return i;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
            this.c.decrementAndGet();
            if ((this.a instanceof PAGInterstitialAdLoadListener) && this.b.compareAndSet(false, true)) {
                ((PAGInterstitialAdLoadListener) this.a).onAdLoaded(pAGInterstitialAd);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.b
        public void onError(int i, String str) {
            if (this.c.decrementAndGet() > 0 || !this.b.compareAndSet(false, true)) {
                return;
            }
            this.a.onError(i, str);
            com.bytedance.sdk.openadsdk.j.b.a("choose_ad_load_error", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.a.1
                @Override // com.bytedance.sdk.openadsdk.j.a
                @Nullable
                public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("req_id", a.this.f1379d.a());
                    return com.bytedance.sdk.openadsdk.j.a.b.b().a("choose_ad_load_error").b(jSONObject.toString());
                }
            });
        }
    }

    /* JADX INFO: compiled from: FullScreenVideoLoadManager.java */
    private static class b extends com.bytedance.sdk.component.g.h {
        q a;
        AdSlot b;
        com.bytedance.sdk.openadsdk.core.model.a c;

        b(q qVar, AdSlot adSlot) {
            super("Fullscreen Task");
            this.a = qVar;
            this.b = adSlot;
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = this.a;
            if (qVar == null) {
                return;
            }
            if (Build.VERSION.SDK_INT < 23) {
                d.a(com.bytedance.sdk.openadsdk.core.o.a()).a(this.a, new d.a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.b.2
                    @Override // com.bytedance.sdk.openadsdk.component.reward.d.a
                    public void a(boolean z, Object obj) {
                        if (!z) {
                            com.bytedance.sdk.component.utils.l.c("ScreenVideoLoadM", "FullScreenLog: preload video success with net fail ");
                            return;
                        }
                        d dVarA = d.a(com.bytedance.sdk.openadsdk.core.o.a());
                        b bVar = b.this;
                        dVarA.a(bVar.b, bVar.c);
                        com.bytedance.sdk.component.utils.l.c("ScreenVideoLoadM", "FullScreenLog: preload video success with net change ");
                    }
                });
                return;
            }
            if (qVar.K() != null) {
                com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(this.a.aK()).a(), this.a);
                bVarA.a("material_meta", this.a);
                bVarA.a("ad_slot", this.b);
                com.bytedance.sdk.component.utils.l.c("ScreenVideoLoadM", "FullScreenLog: preload video ");
                com.bytedance.sdk.openadsdk.core.video.d.a.a(bVarA, new com.bykv.vk.openvk.component.video.api.e.b() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.b.1
                    @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                    public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i) {
                        d dVarA = d.a(com.bytedance.sdk.openadsdk.core.o.a());
                        b bVar = b.this;
                        dVarA.a(bVar.b, bVar.c);
                        com.bytedance.sdk.component.utils.l.c("ScreenVideoLoadM", "FullScreenLog: preload video success with net change ");
                    }

                    @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                    public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i, String str) {
                        com.bytedance.sdk.component.utils.l.c("ScreenVideoLoadM", "FullScreenLog: preload video success with net fail with net change ");
                    }
                });
            }
        }
    }

    private e(Context context) {
        this.b = context == null ? com.bytedance.sdk.openadsdk.core.o.a() : context.getApplicationContext();
        b();
    }

    public static e a(Context context) {
        if (a == null) {
            synchronized (e.class) {
                if (a == null) {
                    a = new e(context);
                }
            }
        }
        return a;
    }

    private void a(final AdSlot adSlot, boolean z, com.bytedance.sdk.openadsdk.common.b bVar) {
        final ab abVarA = ab.a();
        if (z) {
            a(adSlot, true, abVarA, bVar);
            return;
        }
        com.bytedance.sdk.openadsdk.core.model.a aVarB = d.a(this.b).b(adSlot.getCodeId());
        if (aVarB == null || !aVarB.d()) {
            a(adSlot, false, abVarA, bVar);
            return;
        }
        n nVar = new n(this.b, aVarB);
        if (!aVarB.f() && !t.k(aVarB.e())) {
            nVar.b();
        }
        if (bVar != null) {
            if (!aVarB.f() && (bVar instanceof PAGInterstitialAdLoadListener) && com.bytedance.sdk.openadsdk.core.o.d().s() == 0) {
                ((PAGInterstitialAdLoadListener) bVar).onAdLoaded(nVar.a());
            }
            a aVar = new a(bVar, aVarB);
            for (int i = 0; i < aVarB.c().size(); i++) {
                a(aVarB.c().get(i), adSlot, aVar, abVarA, nVar, aVarB.f());
            }
        }
        for (int i2 = 0; i2 < aVarB.c().size(); i2++) {
            final q qVar = aVarB.c().get(i2);
            com.bytedance.sdk.openadsdk.core.video.b.a.a().a(qVar, new a.InterfaceC0141a() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.1
                @Override // com.bytedance.sdk.openadsdk.core.video.b.a.InterfaceC0141a
                public void a(boolean z2) {
                    if (t.k(qVar)) {
                        com.bytedance.sdk.openadsdk.b.c.b(qVar, ac.c(adSlot.getDurationSlotType()), abVarA);
                    }
                }
            });
        }
        com.bytedance.sdk.component.utils.l.b("ScreenVideoLoadM", "get cache data success");
        com.bytedance.sdk.component.utils.l.b("bidding", "full video get cache data success");
    }

    private void a(final AdSlot adSlot, final boolean z, final ab abVar, final com.bytedance.sdk.openadsdk.common.b bVar) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        s sVar = new s();
        sVar.c = z ? 2 : 1;
        if (com.bytedance.sdk.openadsdk.core.o.d().k(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            sVar.f1595f = 2;
        }
        com.bytedance.sdk.openadsdk.core.o.c().a(adSlot, sVar, 8, new p.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.3
            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(int i, String str) {
                com.bytedance.sdk.openadsdk.common.b bVar2;
                if (z || (bVar2 = bVar) == null) {
                    return;
                }
                bVar2.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.p.a
            public void a(com.bytedance.sdk.openadsdk.core.model.a aVar, com.bytedance.sdk.openadsdk.core.model.b bVar2) {
                com.bytedance.sdk.openadsdk.common.b bVar3;
                if (aVar.c() == null || aVar.c().isEmpty()) {
                    if (z || (bVar3 = bVar) == null) {
                        return;
                    }
                    bVar3.onError(-3, com.bytedance.sdk.openadsdk.core.g.a(-3));
                    bVar2.a(-3);
                    com.bytedance.sdk.openadsdk.core.model.b.a(bVar2);
                    return;
                }
                com.bytedance.sdk.component.utils.l.b("ScreenVideoLoadM", "get material data success isPreload=" + z);
                n nVar = new n(e.this.b, aVar);
                if (!z) {
                    if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                        com.bytedance.sdk.openadsdk.b.c.c(aVar.e(), "fullscreen_interstitial_ad", System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                    if (!aVar.f() && (bVar instanceof PAGInterstitialAdLoadListener) && com.bytedance.sdk.openadsdk.core.o.d().s() == 0) {
                        ((PAGInterstitialAdLoadListener) bVar).onAdLoaded(nVar.a());
                    }
                }
                a aVar2 = new a(bVar, aVar);
                for (int i = 0; i < aVar.c().size(); i++) {
                    e.this.a(aVar, aVar.c().get(i), nVar, adSlot, z, abVar, aVar2, aVar.f());
                }
            }
        });
    }

    private void a(b bVar) {
        if (bVar == null) {
            return;
        }
        if (this.f1358d.size() >= 1) {
            this.f1358d.remove(0);
        }
        this.f1358d.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(final com.bytedance.sdk.openadsdk.core.model.a r17, final com.bytedance.sdk.openadsdk.core.model.q r18, final com.bytedance.sdk.openadsdk.component.reward.n r19, final com.bytedance.sdk.openadsdk.AdSlot r20, final boolean r21, final com.bytedance.sdk.openadsdk.utils.ab r22, final com.bytedance.sdk.openadsdk.component.reward.e.a r23, final boolean r24) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.e.a(com.bytedance.sdk.openadsdk.core.model.a, com.bytedance.sdk.openadsdk.core.model.q, com.bytedance.sdk.openadsdk.component.reward.n, com.bytedance.sdk.openadsdk.AdSlot, boolean, com.bytedance.sdk.openadsdk.utils.ab, com.bytedance.sdk.openadsdk.component.reward.e$a, boolean):void");
    }

    private void a(final q qVar, final AdSlot adSlot, final a aVar, final ab abVar, final n nVar, final boolean z) {
        boolean z2 = true;
        boolean z3 = false;
        if (aVar == null || (!z && com.bytedance.sdk.openadsdk.core.o.d().s() != 1)) {
            z2 = false;
        }
        if (t.k(qVar) || !q.c(qVar)) {
            z3 = z2;
        } else if (Build.VERSION.SDK_INT >= 23) {
            final com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
            com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(qVar.aK()).a(), qVar);
            bVarA.a("material_meta", qVar);
            bVarA.a("ad_slot", adSlot);
            com.bytedance.sdk.openadsdk.core.video.d.a.a(bVarA, new com.bykv.vk.openvk.component.video.api.e.b() { // from class: com.bytedance.sdk.openadsdk.component.reward.e.2
                @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i) {
                    com.bytedance.sdk.openadsdk.b.c.b(qVar, ac.c(adSlot.getDurationSlotType()), abVar);
                    if (aVar != null) {
                        if (z || com.bytedance.sdk.openadsdk.core.o.d().s() == 1) {
                            aVar.onAdLoaded(nVar.a());
                        }
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i, String str) {
                    com.bytedance.sdk.component.utils.l.c("ScreenVideoLoadM", "FullScreenLog: Cached ad onVideoPreloadFail");
                    if (bVarK.u()) {
                        com.bytedance.sdk.openadsdk.b.c.b(qVar, ac.c(adSlot.getDurationSlotType()), abVar);
                    }
                    if (aVar != null) {
                        if (z || com.bytedance.sdk.openadsdk.core.o.d().s() == 1) {
                            aVar.onError(i, str);
                        }
                    }
                }
            });
        } else {
            com.bytedance.sdk.openadsdk.b.c.b(qVar, ac.c(adSlot.getDurationSlotType()), abVar);
            z3 = z2;
        }
        if (z3) {
            aVar.onAdLoaded(nVar.a());
        }
    }

    private void b() {
        if (this.c.get()) {
            return;
        }
        this.c.set(true);
        v.a(this.f1360f, this.b);
    }

    private void c() {
        if (this.c.get()) {
            this.c.set(false);
            try {
                v.a(this.f1360f);
            } catch (Exception unused) {
            }
        }
    }

    public void a() {
        try {
            d.a(this.b).a();
        } catch (Throwable unused) {
        }
    }

    public void a(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getCodeId()) || d.a(this.b).b(adSlot.getCodeId()) != null) {
            return;
        }
        b(adSlot);
    }

    public void a(AdSlot adSlot, com.bytedance.sdk.openadsdk.common.b bVar) {
        a(adSlot, false, bVar);
    }

    public void a(String str) {
        d.a(this.b).a(str);
    }

    public void b(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getBidAdm())) {
            a(adSlot, true, null);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.f1359e != null) {
            try {
                com.bytedance.sdk.component.utils.h.a().removeCallbacks(this.f1359e);
            } catch (Exception unused) {
            }
            this.f1359e = null;
        }
        c();
    }
}
