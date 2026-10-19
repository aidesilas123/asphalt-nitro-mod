package com.bytedance.sdk.openadsdk.core.video.d;

import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.c.c;
import com.bykv.vk.openvk.component.video.api.e.a;
import com.bytedance.sdk.component.b.a.g;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.b.d.b.i;
import com.bytedance.sdk.openadsdk.b.d.b.j;
import com.bytedance.sdk.openadsdk.b.d.b.k;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.google.android.gms.games.GamesStatusCodes;
import org.json.JSONObject;

/* JADX INFO: compiled from: VideoPreloadFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static final com.bykv.vk.openvk.component.video.api.e.a a = new com.bykv.vk.openvk.component.video.a.a.b.a();

    public static void a(final c cVar, final a.InterfaceC0093a interfaceC0093a) {
        AdSlot adSlot;
        if ((cVar.c() > 0 || cVar.j()) && cVar.o() != -2) {
            if (cVar.o() != 1) {
                cVar.d(GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED);
                cVar.e(GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED);
                cVar.f(GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_CREATION_NOT_ALLOWED);
                boolean z = cVar.e("material_meta") != null && (cVar.e("material_meta") instanceof q);
                boolean z2 = cVar.e("ad_slot") != null && (cVar.e("ad_slot") instanceof AdSlot);
                q qVar = null;
                if (z && z2) {
                    qVar = (q) cVar.e("material_meta");
                    adSlot = (AdSlot) cVar.e("ad_slot");
                    b(cVar, qVar, adSlot);
                } else {
                    adSlot = null;
                }
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                final q qVar2 = qVar;
                final AdSlot adSlot2 = adSlot;
                a.InterfaceC0093a interfaceC0093a2 = new a.InterfaceC0093a() { // from class: com.bytedance.sdk.openadsdk.core.video.d.a.1
                    @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                    public void a(c cVar2, int i) {
                        a.InterfaceC0093a interfaceC0093a3 = interfaceC0093a;
                        if (interfaceC0093a3 != null) {
                            interfaceC0093a3.a(cVar2, i);
                        }
                        if (qVar2 == null || adSlot2 == null) {
                            return;
                        }
                        a.b(cVar, qVar2, adSlot2, SystemClock.elapsedRealtime() - jElapsedRealtime);
                    }

                    @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                    public void a(c cVar2, int i, String str) {
                        a.InterfaceC0093a interfaceC0093a3 = interfaceC0093a;
                        if (interfaceC0093a3 != null) {
                            interfaceC0093a3.a(cVar2, i, str);
                        }
                        if (qVar2 == null || adSlot2 == null) {
                            return;
                        }
                        a.b(cVar, qVar2, adSlot2, SystemClock.elapsedRealtime() - jElapsedRealtime, i, str);
                    }

                    @Override // com.bykv.vk.openvk.component.video.api.e.a.InterfaceC0093a
                    public void b(c cVar2, int i) {
                        AdSlot adSlot3;
                        a.InterfaceC0093a interfaceC0093a3 = interfaceC0093a;
                        if (interfaceC0093a3 != null) {
                            interfaceC0093a3.a(cVar2, i);
                        }
                        q qVar3 = qVar2;
                        if (qVar3 != null && (adSlot3 = adSlot2) != null) {
                            a.c(cVar, qVar3, adSlot3);
                        }
                        l.b("VideoPreloadUtils", "cancel: ", cVar.n());
                    }
                };
                if (!a(cVar.m())) {
                    if (interfaceC0093a != null) {
                        interfaceC0093a.a(cVar, TTAdConstant.DEEPLINK_FALLBACK_CODE, "unexpected url: " + cVar.m());
                    }
                    b(cVar, qVar, adSlot, SystemClock.elapsedRealtime() - jElapsedRealtime, -1, "video url is invalid");
                    return;
                }
                if (Build.VERSION.SDK_INT < 23) {
                    com.bykv.vk.openvk.component.video.a.b.f.a.a().a(cVar);
                    return;
                }
                try {
                    a.a(o.a(), cVar, interfaceC0093a2);
                    return;
                } catch (Exception e2) {
                    l.d("VideoPreloadUtils", e2.getMessage());
                    return;
                }
            }
        }
        if (interfaceC0093a != null) {
            interfaceC0093a.a(cVar, 100);
        }
    }

    private static boolean a(c cVar) {
        return Build.VERSION.SDK_INT >= 23 || cVar.o() != 0;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.regionMatches(true, 0, "ws:", 0, 3)) {
            str = "http:" + str.substring(3);
        } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
            str = "https:" + str.substring(4);
        }
        return g.c(str) != null;
    }

    private static void b(c cVar, q qVar, AdSlot adSlot) {
        if (a(cVar)) {
            com.bytedance.sdk.openadsdk.b.d.a.a.a((com.bytedance.sdk.openadsdk.b.d.b.a<k>) new com.bytedance.sdk.openadsdk.b.d.b.a(qVar, ac.c(adSlot.getDurationSlotType()), com.bytedance.sdk.openadsdk.b.d.a.a.a(qVar, (String) null, -1, cVar), new k(cVar.m(), cVar.j() ? cVar.i() : cVar.c())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(c cVar, q qVar, AdSlot adSlot, long j) {
        if (a(cVar)) {
            String strC = ac.c(adSlot.getDurationSlotType());
            JSONObject jSONObjectA = com.bytedance.sdk.openadsdk.b.d.a.a.a(qVar, (String) null, -1, cVar);
            com.bytedance.sdk.openadsdk.b.d.b.l lVar = new com.bytedance.sdk.openadsdk.b.d.b.l();
            lVar.a(cVar.m());
            lVar.a(cVar.c());
            lVar.b(j);
            if (cVar.s() == 1) {
                lVar.c(1L);
            } else {
                lVar.c(0L);
            }
            com.bytedance.sdk.openadsdk.b.d.a.a.b((com.bytedance.sdk.openadsdk.b.d.b.a<com.bytedance.sdk.openadsdk.b.d.b.l>) new com.bytedance.sdk.openadsdk.b.d.b.a(qVar, strC, jSONObjectA, lVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(c cVar, q qVar, AdSlot adSlot, long j, int i, String str) {
        if (a(cVar)) {
            String strC = ac.c(adSlot.getDurationSlotType());
            JSONObject jSONObjectA = com.bytedance.sdk.openadsdk.b.d.a.a.a(qVar, (String) null, -1, cVar);
            j jVar = new j();
            jVar.a(cVar.m());
            jVar.a(cVar.c());
            jVar.b(j);
            jVar.a(i);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            jVar.b(str);
            jVar.c("");
            com.bytedance.sdk.openadsdk.b.d.a.a.c((com.bytedance.sdk.openadsdk.b.d.b.a<j>) new com.bytedance.sdk.openadsdk.b.d.b.a(qVar, strC, jSONObjectA, jVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(c cVar, q qVar, AdSlot adSlot) {
        if (a(cVar)) {
            com.bytedance.sdk.openadsdk.b.d.a.a.d((com.bytedance.sdk.openadsdk.b.d.b.a<i>) new com.bytedance.sdk.openadsdk.b.d.b.a(qVar, ac.c(adSlot.getDurationSlotType()), com.bytedance.sdk.openadsdk.b.d.a.a.a(qVar, (String) null, -1, cVar), new i(cVar.m(), cVar.c())));
        }
    }
}
