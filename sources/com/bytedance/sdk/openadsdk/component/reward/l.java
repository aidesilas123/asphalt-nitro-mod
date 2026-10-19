package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.v;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.component.reward.k;
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

/* JADX INFO: compiled from: RewardVideoLoadManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class l {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile l a;
    private final Context b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.component.g.h f1390e;
    private final AtomicBoolean c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<b> f1389d = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final v.a f1391f = new v.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.l.7
        @Override // com.bytedance.sdk.component.utils.v.a
        public void a(Context context, Intent intent, boolean z, int i) {
            if (z) {
                if (l.this.f1390e == null) {
                    l lVar = l.this;
                    lVar.f1390e = new com.bytedance.sdk.openadsdk.component.reward.b("net connect task", lVar.f1389d);
                }
                com.bytedance.sdk.component.utils.h.a().post(l.this.f1390e);
            }
        }
    };

    /* JADX INFO: compiled from: RewardVideoLoadManager.java */
    private static class a implements PAGRewardedAdLoadListener {
        private final com.bytedance.sdk.openadsdk.common.b a;
        private final AtomicBoolean b;
        private final AtomicInteger c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final com.bytedance.sdk.openadsdk.core.model.a f1410d;

        private a(com.bytedance.sdk.openadsdk.common.b bVar, com.bytedance.sdk.openadsdk.core.model.a aVar) {
            this.b = new AtomicBoolean(false);
            this.a = bVar;
            this.f1410d = aVar;
            this.c = new AtomicInteger(a());
        }

        private int a() {
            if (!this.f1410d.d()) {
                return 0;
            }
            int i = 0;
            for (int i2 = 0; i2 < this.f1410d.c().size(); i2++) {
                q qVar = this.f1410d.c().get(i2);
                if (qVar != null && !t.k(qVar) && qVar.K() != null) {
                    i++;
                }
            }
            return i;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onAdLoaded(PAGRewardedAd pAGRewardedAd) {
            this.c.decrementAndGet();
            if ((this.a instanceof PAGRewardedAdLoadListener) && this.b.compareAndSet(false, true)) {
                ((PAGRewardedAdLoadListener) this.a).onAdLoaded(pAGRewardedAd);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.b
        public void onError(int i, String str) {
            if (this.c.decrementAndGet() <= 0 && (this.a instanceof PAGRewardedAdLoadListener) && this.b.compareAndSet(false, true)) {
                this.a.onError(i, str);
                com.bytedance.sdk.openadsdk.j.b.a("choose_ad_load_error", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.l.a.1
                    @Override // com.bytedance.sdk.openadsdk.j.a
                    @Nullable
                    public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("req_id", a.this.f1410d.a());
                        return com.bytedance.sdk.openadsdk.j.a.b.b().a("choose_ad_load_error").b(jSONObject.toString());
                    }
                });
            }
        }
    }

    /* JADX INFO: compiled from: RewardVideoLoadManager.java */
    public static class b extends com.bytedance.sdk.component.g.h {
        q a;
        AdSlot b;
        com.bytedance.sdk.openadsdk.core.model.a c;

        b(q qVar, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.a aVar) {
            super("Reward Task");
            this.a = qVar;
            this.b = adSlot;
            this.c = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            q qVar = this.a;
            if (qVar == null) {
                return;
            }
            if (Build.VERSION.SDK_INT < 23) {
                k.a(com.bytedance.sdk.openadsdk.core.o.a()).a(this.a, new k.a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.l.b.2
                    @Override // com.bytedance.sdk.openadsdk.component.reward.k.a
                    public void a(boolean z, Object obj) {
                        if (!z) {
                            com.bytedance.sdk.component.utils.l.c("RewardVideoLoadManager", "RewardVideoLog: onVideoPreloadFail with net change !!");
                            return;
                        }
                        com.bytedance.sdk.component.utils.l.c("RewardVideoLoadManager", "RewardVideoLog: onVideoPreloadSuccess with net change !!");
                        k kVarA = k.a(com.bytedance.sdk.openadsdk.core.o.a());
                        b bVar = b.this;
                        kVarA.a(bVar.b, bVar.c);
                    }
                });
            } else if (qVar.K() != null) {
                com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(this.a.aK()).a(), this.a);
                bVarA.a("material_meta", this.a);
                bVarA.a("ad_slot", this.b);
                com.bytedance.sdk.openadsdk.core.video.d.a.a(bVarA, new com.bykv.vk.openvk.component.video.api.e.b() { // from class: com.bytedance.sdk.openadsdk.component.reward.l.b.1
                    @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                    public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i) {
                        com.bytedance.sdk.component.utils.l.c("RewardVideoLoadManager", "RewardVideoLog: onVideoPreloadSuccess with net change !!");
                        k kVarA = k.a(com.bytedance.sdk.openadsdk.core.o.a());
                        b bVar = b.this;
                        kVarA.a(bVar.b, bVar.c);
                    }

                    @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                    public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i, String str) {
                        com.bytedance.sdk.component.utils.l.c("RewardVideoLoadManager", "RewardVideoLog: onVideoPreloadFail with net change !!");
                    }
                });
            }
        }
    }

    private l(Context context) {
        this.b = context == null ? com.bytedance.sdk.openadsdk.core.o.a() : context.getApplicationContext();
        b();
    }

    public static l a(Context context) {
        if (a == null) {
            synchronized (l.class) {
                if (a == null) {
                    a = new l(context);
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
        com.bytedance.sdk.openadsdk.core.model.a aVarB = k.a(this.b).b(adSlot.getCodeId());
        if (aVarB == null || !aVarB.d()) {
            a(adSlot, false, abVarA, bVar);
            return;
        }
        o oVar = new o(this.b, aVarB, adSlot);
        if (!aVarB.f() && !t.k(aVarB.e())) {
            oVar.b();
        }
        if (bVar != null) {
            if (!aVarB.f() && (bVar instanceof PAGRewardedAdLoadListener) && com.bytedance.sdk.openadsdk.core.o.d().s() == 0) {
                ((PAGRewardedAdLoadListener) bVar).onAdLoaded(oVar.a());
            }
            a aVar = new a(bVar, aVarB);
            for (int i = 0; i < aVarB.c().size(); i++) {
                a(aVarB.c().get(i), adSlot, aVar, abVarA, oVar, aVarB.f());
            }
        }
        for (int i2 = 0; i2 < aVarB.c().size(); i2++) {
            final q qVar = aVarB.c().get(i2);
            com.bytedance.sdk.openadsdk.core.video.b.a.a().a(qVar, new a.InterfaceC0141a() { // from class: com.bytedance.sdk.openadsdk.component.reward.l.1
                @Override // com.bytedance.sdk.openadsdk.core.video.b.a.InterfaceC0141a
                public void a(boolean z2) {
                    if (t.k(qVar)) {
                        com.bytedance.sdk.openadsdk.b.c.b(qVar, ac.c(adSlot.getDurationSlotType()), abVarA);
                    }
                }
            });
        }
        com.bytedance.sdk.component.utils.l.b("RewardVideoLoadManager", "get cache data success");
        com.bytedance.sdk.component.utils.l.b("bidding", "reward video get cache data success");
    }

    private void a(final AdSlot adSlot, final boolean z, final ab abVar, final com.bytedance.sdk.openadsdk.common.b bVar) {
        if (com.bytedance.sdk.component.utils.l.d()) {
            com.bytedance.sdk.component.utils.l.b("bidding", "reward video doNetwork , get new materials:BidAdm->MD5->" + com.bykv.vk.openvk.component.video.api.f.b.a(adSlot.getBidAdm()));
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        s sVar = new s();
        sVar.b = z ? 2 : 1;
        if (com.bytedance.sdk.openadsdk.core.o.d().k(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            sVar.f1595f = 2;
        }
        com.bytedance.sdk.openadsdk.core.o.c().a(adSlot, sVar, 7, new p.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.l.3
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
                com.bytedance.sdk.component.utils.l.b("RewardVideoLoadManager", "get material data success isPreload=" + z);
                o oVar = new o(l.this.b, aVar, adSlot);
                if (!z) {
                    if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                        com.bytedance.sdk.openadsdk.b.c.c(aVar.e(), "rewarded_video", System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                    if (!aVar.f() && (bVar instanceof PAGRewardedAdLoadListener) && com.bytedance.sdk.openadsdk.core.o.d().s() == 0) {
                        ((PAGRewardedAdLoadListener) bVar).onAdLoaded(oVar.a());
                    }
                }
                a aVar2 = new a(bVar, aVar);
                for (int i = 0; i < aVar.c().size(); i++) {
                    l.this.a(aVar, aVar.c().get(i), oVar, adSlot, z, abVar, aVar2, aVar.f());
                }
            }
        });
    }

    private void a(b bVar) {
        if (bVar == null) {
            return;
        }
        if (this.f1389d.size() >= 1) {
            this.f1389d.remove(0);
        }
        this.f1389d.add(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(final com.bytedance.sdk.openadsdk.core.model.a r17, final com.bytedance.sdk.openadsdk.core.model.q r18, final com.bytedance.sdk.openadsdk.component.reward.o r19, final com.bytedance.sdk.openadsdk.AdSlot r20, final boolean r21, final com.bytedance.sdk.openadsdk.utils.ab r22, final com.bytedance.sdk.openadsdk.component.reward.l.a r23, final boolean r24) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.component.reward.l.a(com.bytedance.sdk.openadsdk.core.model.a, com.bytedance.sdk.openadsdk.core.model.q, com.bytedance.sdk.openadsdk.component.reward.o, com.bytedance.sdk.openadsdk.AdSlot, boolean, com.bytedance.sdk.openadsdk.utils.ab, com.bytedance.sdk.openadsdk.component.reward.l$a, boolean):void");
    }

    private void a(final q qVar, final AdSlot adSlot, final a aVar, final ab abVar, final o oVar, final boolean z) {
        boolean z2 = true;
        boolean z3 = false;
        if (aVar == null || (!z && com.bytedance.sdk.openadsdk.core.o.d().s() != 1)) {
            z2 = false;
        }
        if (t.k(qVar)) {
            z3 = z2;
        } else if (Build.VERSION.SDK_INT >= 23) {
            final com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
            com.bytedance.sdk.openadsdk.core.video.a.b bVarA = q.a(CacheDirFactory.getICacheDir(qVar.aK()).a(), qVar);
            bVarA.a("material_meta", qVar);
            bVarA.a("ad_slot", adSlot);
            com.bytedance.sdk.openadsdk.core.video.d.a.a(bVarA, new com.bykv.vk.openvk.component.video.api.e.b() { // from class: com.bytedance.sdk.openadsdk.component.reward.l.2
                @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i) {
                    Log.d("RewardVideoLoadManager", "onVideoPreloadSuccess: ");
                    com.bytedance.sdk.openadsdk.b.c.b(qVar, ac.c(adSlot.getDurationSlotType()), abVar);
                    if (aVar != null) {
                        if (z || com.bytedance.sdk.openadsdk.core.o.d().s() == 1) {
                            aVar.onAdLoaded(oVar.a());
                        }
                    }
                }

                @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                public void a(com.bykv.vk.openvk.component.video.api.c.c cVar, int i, String str) {
                    com.bytedance.sdk.component.utils.l.c("RewardVideoLoadManager", "RewardVideoLog: Cached ad  onVideoPreloadFail");
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
            aVar.onAdLoaded(oVar.a());
        }
    }

    private void b() {
        if (this.c.get()) {
            return;
        }
        this.c.set(true);
        v.a(this.f1391f, this.b);
    }

    private void c() {
        if (this.c.get()) {
            this.c.set(false);
            try {
                v.a(this.f1391f);
            } catch (Exception unused) {
            }
        }
    }

    public void a() {
        try {
            k.a(this.b).a();
        } catch (Throwable unused) {
        }
    }

    public void a(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getCodeId()) || k.a(this.b).b(adSlot.getCodeId()) != null) {
            return;
        }
        b(adSlot);
    }

    public void a(AdSlot adSlot, com.bytedance.sdk.openadsdk.common.b bVar) {
        a(adSlot, false, bVar);
    }

    public void a(String str) {
        k.a(this.b).a(str);
    }

    public void b(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getBidAdm())) {
            a(adSlot, true, null);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.f1390e != null) {
            try {
                com.bytedance.sdk.component.utils.h.a().removeCallbacks(this.f1390e);
            } catch (Exception unused) {
            }
            this.f1390e = null;
        }
        c();
    }
}
