package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.bytedance.JProtect;
import com.bytedance.sdk.component.embedapplog.PangleEncryptUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.p;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.ab;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.json.b4;
import com.json.o2;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NetApiImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class q implements p<com.bytedance.sdk.openadsdk.b.a> {
    private final Context a;

    /* JADX INFO: compiled from: NetApiImpl.java */
    public static class a {
        final int a;
        final long b;
        final long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f1660d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final String f1661e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final int f1662f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final String f1663g;

        @Nullable
        public final com.bytedance.sdk.openadsdk.core.model.a h;
        final String i;
        final ArrayList<Integer> j;

        private a(String str, int i, int i2, String str2, int i3, String str3, @Nullable com.bytedance.sdk.openadsdk.core.model.a aVar, long j, long j2, ArrayList<Integer> arrayList) {
            this.a = i;
            this.f1660d = i2;
            this.f1661e = str2;
            this.f1663g = str3;
            this.h = aVar;
            this.i = str;
            this.f1662f = i3;
            this.b = j;
            this.c = j2;
            this.j = arrayList;
        }

        public static a a(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.s sVar) {
            JSONArray jSONArray;
            int i;
            String str;
            long j;
            long j2;
            String strOptString = jSONObject.optString("did");
            int iOptInt = jSONObject.optInt("processing_time_ms");
            long jOptLong = jSONObject.optLong("s_receive_ts");
            long jOptLong2 = jSONObject.optLong("s_send_ts");
            int iOptInt2 = jSONObject.optInt("status_code");
            String strOptString2 = jSONObject.optString(CampaignEx.JSON_KEY_DESC);
            String strOptString3 = jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID);
            int iOptInt3 = jSONObject.optInt("reason");
            if (adSlot == null || adSlot.getBiddingTokens() == null) {
                return new a(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, null, jOptLong, jOptLong2, null);
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("adn_bid_result");
            com.bytedance.sdk.openadsdk.core.model.a aVar = new com.bytedance.sdk.openadsdk.core.model.a();
            if (jSONArrayOptJSONArray != null) {
                int i2 = 0;
                while (i2 < jSONArrayOptJSONArray.length()) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i2);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString4 = jSONObjectOptJSONObject.optString("name");
                        String strOptString5 = jSONObjectOptJSONObject.optString("render_data");
                        jSONArray = jSONArrayOptJSONArray;
                        String strOptString6 = jSONObjectOptJSONObject.optString("price");
                        j2 = jOptLong2;
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("win_notice");
                        JSONArray jSONArrayOptJSONArray3 = jSONObjectOptJSONObject.optJSONArray("loss_notice");
                        j = jOptLong;
                        String strOptString7 = jSONObjectOptJSONObject.optString(BidResponsedEx.KEY_CID);
                        String strOptString8 = jSONObjectOptJSONObject.optString("crid");
                        str = strOptString3;
                        JSONArray jSONArrayOptJSONArray4 = jSONObjectOptJSONObject.optJSONArray("adomain");
                        i = iOptInt3;
                        String strOptString9 = jSONObjectOptJSONObject.optString("adn_response_id");
                        com.bytedance.sdk.openadsdk.core.model.g gVar = new com.bytedance.sdk.openadsdk.core.model.g();
                        gVar.a(strOptString4);
                        gVar.b(strOptString5);
                        gVar.c(strOptString6);
                        gVar.d(strOptString7);
                        gVar.e(strOptString8);
                        gVar.f(strOptString9);
                        if (jSONArrayOptJSONArray4 != null) {
                            ArrayList arrayList = new ArrayList();
                            for (int i3 = 0; i3 < jSONArrayOptJSONArray4.length(); i3++) {
                                arrayList.add(jSONArrayOptJSONArray4.optString(i3));
                            }
                            gVar.c(arrayList);
                        }
                        if (jSONArrayOptJSONArray2 != null) {
                            ArrayList arrayList2 = new ArrayList();
                            for (int i4 = 0; i4 < jSONArrayOptJSONArray2.length(); i4++) {
                                arrayList2.add(jSONArrayOptJSONArray2.optString(i4));
                            }
                            gVar.a(arrayList2);
                        }
                        if (jSONArrayOptJSONArray3 != null) {
                            ArrayList arrayList3 = new ArrayList();
                            for (int i5 = 0; i5 < jSONArrayOptJSONArray3.length(); i5++) {
                                arrayList3.add(jSONArrayOptJSONArray3.optString(i5));
                            }
                            gVar.b(arrayList3);
                        }
                        aVar.a(gVar);
                    } else {
                        jSONArray = jSONArrayOptJSONArray;
                        i = iOptInt3;
                        str = strOptString3;
                        j = jOptLong;
                        j2 = jOptLong2;
                    }
                    i2++;
                    jSONArrayOptJSONArray = jSONArray;
                    strOptString3 = str;
                    jOptLong2 = j2;
                    jOptLong = j;
                    iOptInt3 = i;
                }
            }
            return new a(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, aVar, jOptLong, jOptLong2, null);
        }

        public static a a(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.s sVar, com.bytedance.sdk.openadsdk.core.model.b bVar) {
            Object obj;
            String strOptString = jSONObject.optString("did");
            int iOptInt = jSONObject.optInt("processing_time_ms");
            long jOptLong = jSONObject.optLong("s_receive_ts");
            long jOptLong2 = jSONObject.optLong("s_send_ts");
            int iOptInt2 = jSONObject.optInt("status_code");
            String strOptString2 = jSONObject.optString(CampaignEx.JSON_KEY_DESC);
            String strOptString3 = jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID);
            int iOptInt3 = jSONObject.optInt("reason");
            Pair<com.bytedance.sdk.openadsdk.core.model.a, ArrayList<Integer>> pairA = com.bytedance.sdk.openadsdk.core.b.a(jSONObject, adSlot, sVar, bVar);
            if (pairA != null && (obj = pairA.first) != null) {
                ((com.bytedance.sdk.openadsdk.core.model.a) obj).a(jSONObject.optLong("request_after"));
            }
            return pairA == null ? new a(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, null, jOptLong, jOptLong2, null) : new a(strOptString, iOptInt, iOptInt2, strOptString2, iOptInt3, strOptString3, (com.bytedance.sdk.openadsdk.core.model.a) pairA.first, jOptLong, jOptLong2, (ArrayList) pairA.second);
        }
    }

    /* JADX INFO: compiled from: NetApiImpl.java */
    public static class b {
        public final int a;
        public final boolean b;
        public final com.bytedance.sdk.openadsdk.core.model.w c;

        private b(int i, boolean z, com.bytedance.sdk.openadsdk.core.model.w wVar) {
            this.a = i;
            this.b = z;
            this.c = wVar;
        }

        public static b a(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            int iOptInt = jSONObject.optInt("code");
            boolean zOptBoolean = jSONObject.optBoolean("verify");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            com.bytedance.sdk.openadsdk.core.model.w wVar = new com.bytedance.sdk.openadsdk.core.model.w();
            if (jSONObjectOptJSONObject != null) {
                try {
                    wVar.a(jSONObjectOptJSONObject.optInt("reason"));
                    wVar.b(jSONObjectOptJSONObject.optInt("corp_type"));
                    wVar.c(jSONObjectOptJSONObject.optInt(CampaignEx.JSON_KEY_REWARD_AMOUNT));
                    wVar.a(jSONObjectOptJSONObject.optString(CampaignEx.JSON_KEY_REWARD_NAME));
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.e("NetApiImpl", th.getMessage());
                }
            }
            return new b(iOptInt, zOptBoolean, wVar);
        }
    }

    q(Context context) {
        this.a = context;
    }

    private JSONArray a(List<FilterWord> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        Iterator<FilterWord> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().getId());
        }
        return jSONArray;
    }

    public static JSONObject a(AdSlot adSlot) {
        r rVar;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("personalized_ad", o.d().Q());
            jSONObject.put("lmt", DeviceUtils.b());
            jSONObject.put("coppa", h.b().i());
            jSONObject.put("gdpr", h.b().h());
            jSONObject.put("is_gdpr_user", o.d().N());
            jSONObject.put("ccpa", h.b().t());
            if (adSlot != null && r.a.containsKey(Integer.valueOf(adSlot.getCodeId())) && (rVar = r.a.get(Integer.valueOf(adSlot.getCodeId()))) != null) {
                jSONObject.put("lastadomain", rVar.b());
                jSONObject.put("lastbundle", rVar.c());
                jSONObject.put("lastclick", rVar.d());
                jSONObject.put("lastskip", rVar.e());
            }
            a(jSONObject, "keywords", h.b().k());
            a(jSONObject, "data", b(adSlot));
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private JSONObject a(AdSlot adSlot, int i, com.bytedance.sdk.openadsdk.core.model.s sVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", adSlot.getCodeId());
            jSONObject.put("adtype", i);
            if (!TextUtils.isEmpty(adSlot.getAdId()) || !TextUtils.isEmpty(adSlot.getCreativeId()) || !TextUtils.isEmpty(adSlot.getExt())) {
                JSONObject jSONObject2 = new JSONObject();
                if (!TextUtils.isEmpty(adSlot.getAdId())) {
                    jSONObject2.put("ad_id", adSlot.getAdId());
                }
                if (!TextUtils.isEmpty(adSlot.getCreativeId())) {
                    jSONObject2.put(CampaignEx.JSON_KEY_CREATIVE_ID, adSlot.getCreativeId());
                }
                if (adSlot.getExt() != null) {
                    jSONObject2.put(KidozParams.EXTENSION_TYPE, adSlot.getExt());
                }
                jSONObject.put("preview_ads", jSONObject2);
            }
            if (sVar != null) {
                jSONObject.put("render_method", sVar.f1595f);
                int i2 = sVar.f1595f;
                if (i2 == 1) {
                    a(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
                } else if (i2 == 2) {
                    a(jSONObject, "accepted_size", adSlot.getExpressViewAcceptedWidth(), adSlot.getExpressViewAcceptedHeight());
                }
            } else {
                jSONObject.put("render_method", 1);
                a(jSONObject, "accepted_size", adSlot.getImgAcceptedWidth(), adSlot.getImgAcceptedHeight());
            }
            jSONObject.put("ptpl_ids", b(adSlot.getCodeId()));
            jSONObject.put("pos", AdSlot.getPosition(i));
            jSONObject.put("is_support_dpl", adSlot.isSupportDeepLink());
            if (adSlot.getNativeAdType() > 0 || i == 5) {
                jSONObject.put("is_origin_ad", true);
            }
            int adCount = adSlot.getAdCount();
            if (adCount < 1) {
                adCount = 1;
            }
            if (adCount > 3) {
                adCount = 3;
            }
            if (i == 7 || i == 8) {
                adCount = 1;
            }
            if (sVar != null && sVar.f1594e != null) {
                adCount = adSlot.getAdCount();
            }
            jSONObject.put("ad_count", adCount);
            if (i == 1) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("is_rotate_banner", adSlot.getIsRotateBanner());
                jSONObject3.put("rotate_time", adSlot.getRotateTime());
                jSONObject3.put("rotate_order", adSlot.getRotateOrder());
                jSONObject.put("banner", jSONObject3);
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    @JProtect
    private JSONObject a(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.s sVar, int i) {
        int i2;
        int i3;
        int i4;
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            String strD = (sVar == null || TextUtils.isEmpty(sVar.a)) ? ac.d() : sVar.a;
            if (i == 7) {
                if (sVar != null && (i4 = sVar.b) > 0) {
                    jSONObject2.put("req_type", i4);
                }
            } else if (i == 8) {
                if (sVar != null && (i3 = sVar.c) > 0) {
                    jSONObject2.put("req_type", i3);
                }
            } else if (i == 3 && sVar != null && (i2 = sVar.f1593d) > 0) {
                jSONObject2.put("req_type", i2);
            }
            try {
                String strJ = o.d().j();
                String strT = o.d().t();
                if (strJ != null && strT != null) {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("version", strJ);
                    jSONObject3.put("param", strT);
                    jSONObject2.put("abtest", jSONObject3);
                }
            } catch (Throwable unused) {
            }
            if (adSlot != null && adSlot.getBiddingTokens() != null) {
                jSONObject2.put("bidding_param", adSlot.getBiddingTokens());
                com.bytedance.sdk.openadsdk.core.settings.a aVarZ = com.bytedance.sdk.openadsdk.core.settings.o.aj().z(adSlot.getCodeId());
                jSONObject2.put("waterfall_id", aVarZ.L);
                jSONObject2.put("waterfall_version", aVarZ.M);
                jSONObject2.put("link_id", adSlot.getLinkId());
            }
            jSONObject2.put(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, strD);
            jSONObject2.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject2.put("source_type", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
            jSONObject2.put(MBridgeConstans.DYNAMIC_VIEW_WX_APP, c());
            jSONObject2.put("device", DeviceUtils.a(this.a, true));
            jSONObject2.put("user", a(adSlot));
            jSONObject2.put(v4.R, ac.c());
            jSONObject2.put("channel", o2.h.Z);
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(a(adSlot, i, sVar));
            jSONObject2.put("adslots", jSONArray);
            a(jSONObject2, sVar);
            long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject2.put("ts", jCurrentTimeMillis);
            String strConcat = "";
            if (adSlot.getCodeId() != null && strD != null) {
                strConcat = String.valueOf(jCurrentTimeMillis).concat(adSlot.getCodeId()).concat(strD);
            }
            jSONObject2.put("req_sign", com.bytedance.sdk.component.utils.e.a(strConcat));
            jSONObject = com.bytedance.sdk.component.utils.a.a(jSONObject2);
            jSONObject.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject.put("oversea_version_type", 1);
            return jSONObject;
        } catch (Throwable unused2) {
            return jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, String str, int i, a aVar, int i2, String str2) {
    }

    private void a(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.s sVar, com.bytedance.sdk.component.f.b.d dVar, final Map<String, Object> map, final boolean z, final ab abVar, final p.a aVar) {
        dVar.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.q.3
            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
                if (z) {
                    map.put("pgad_end", abVar);
                }
                if (bVar == null || !bVar.f()) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(bVar.d());
                    if (o.d().U() && v.a().g() == 1) {
                        ac.a("Pangle_Debug_Mode", jSONObject.toString(), q.this.a);
                    }
                    JSONObject jSONObjectB = q.this.b(jSONObject);
                    if (jSONObjectB == null) {
                        aVar.a(-1, g.a(-1));
                        return;
                    }
                    a aVarA = a.a(jSONObjectB, adSlot, sVar);
                    if (aVarA.f1660d != 20000) {
                        if (o.d().F() || aVarA.f1660d != 40029) {
                            aVar.a(aVarA.f1660d, aVarA.f1661e);
                            return;
                        } else {
                            aVar.a(-100, g.a(-100));
                            return;
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.model.a aVar2 = aVarA.h;
                    if (aVar2 == null) {
                        aVar.a(-1, g.a(-1));
                        return;
                    }
                    aVar2.c(jSONObjectB.toString());
                    aVar.a(aVarA.h, new com.bytedance.sdk.openadsdk.core.model.b());
                    q.this.a(aVarA.h);
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.c("NetApiImpl", "get ad error: ", th);
                    aVar.a(-1, g.a(-1));
                }
            }

            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                ab abVarA = ab.a();
                if (z) {
                    map.put("pgad_end", Long.valueOf(abVarA.a));
                }
                if (o.d().U() && v.a().g() == 1) {
                    ac.a("Pangle_Debug_Mode", iOException != null ? iOException.getMessage() : null, q.this.a);
                }
                aVar.a(601, iOException != null ? iOException.getMessage() : "");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bytedance.sdk.openadsdk.core.model.a aVar) {
        List<com.bytedance.sdk.openadsdk.core.model.q> listC = aVar.c();
        if (listC == null || listC.size() == 0) {
            return;
        }
        for (int i = 0; i < listC.size(); i++) {
            com.bytedance.sdk.openadsdk.core.model.q qVar = listC.get(i);
            if (qVar != null && qVar.j() == null) {
                a("", 0, 0, qVar.N(), qVar);
                a("", 0, 0, qVar.O(), qVar);
                List<com.bytedance.sdk.openadsdk.core.model.n> listQ = qVar.Q();
                if (listQ != null && listQ.size() > 0) {
                    for (int i2 = 0; i2 < listQ.size(); i2++) {
                        a(qVar, listQ.get(i2));
                    }
                }
                if (qVar.K() != null) {
                    a(qVar.K().j(), qVar.K().c(), qVar.K().b(), (com.bytedance.sdk.openadsdk.core.model.n) null, qVar);
                }
            }
        }
    }

    private void a(com.bytedance.sdk.openadsdk.core.model.q qVar, com.bytedance.sdk.openadsdk.core.model.n nVar) {
        com.bytedance.sdk.component.utils.l.c("imgCache", "loadImgAndReport: ");
        if (nVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.f.d.a(nVar).a(com.bytedance.sdk.component.d.u.BITMAP).a(new com.bytedance.sdk.openadsdk.f.b(qVar, nVar.a(), new com.bytedance.sdk.component.d.o() { // from class: com.bytedance.sdk.openadsdk.core.q.4
            @Override // com.bytedance.sdk.component.d.o
            public void a(int i, String str, @Nullable Throwable th) {
                com.bytedance.sdk.component.utils.l.c("imgCache", "loadImgAndReport: fail");
            }

            @Override // com.bytedance.sdk.component.d.o
            public void a(com.bytedance.sdk.component.d.k kVar) {
                com.bytedance.sdk.component.utils.l.c("imgCache", "loadImgAndReport: success");
            }
        }), com.bytedance.sdk.component.d.t.IO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.bytedance.sdk.openadsdk.core.model.s sVar, ab abVar, ab abVar2, int i, ab abVar3, com.bytedance.sdk.openadsdk.core.model.q qVar, String str, boolean z) {
        if (o.d().W()) {
            JSONObject jSONObject = new JSONObject();
            long jA = 0;
            if (sVar != null) {
                try {
                    ab abVar4 = sVar.f1596g;
                    if (abVar4.a > 0) {
                        jSONObject.put("client_start_time", abVar.a(abVar4));
                        jA = abVar3.a(sVar.f1596g);
                    }
                } catch (Exception unused) {
                    return;
                }
            }
            jSONObject.put("network_time", abVar2.a(abVar));
            jSONObject.put("sever_time", i);
            jSONObject.put("client_end_time", abVar3.a(abVar2));
            int i2 = 1;
            if (z) {
                jSONObject.put("is_choose_ad", true);
            }
            if (str.equals("open_ad")) {
                if (!qVar.br()) {
                    i2 = 0;
                }
                jSONObject.put("is_icon_only", i2);
            }
            com.bytedance.sdk.openadsdk.b.c.a(qVar, str, "load_ad_time", jA, jSONObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(p.a aVar, com.bytedance.sdk.openadsdk.core.model.b bVar) {
        aVar.a(-1, g.a(-1));
        bVar.a(-1);
        com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(p.b bVar) {
        bVar.a(-1, g.a(-1));
    }

    private void a(String str, int i, int i2, com.bytedance.sdk.openadsdk.core.model.n nVar, com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (!TextUtils.isEmpty(str)) {
            com.bytedance.sdk.openadsdk.f.d.a(str).a(i).b(i2).d(ad.d(o.a())).c(ad.c(o.a())).a(com.bytedance.sdk.component.d.u.BITMAP).a(new com.bytedance.sdk.openadsdk.f.b(qVar, str, null), com.bytedance.sdk.component.d.t.IO);
        } else {
            if (nVar == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.f.d.a(nVar).a(com.bytedance.sdk.component.d.u.BITMAP).a(new com.bytedance.sdk.openadsdk.f.b(qVar, nVar.a(), null), com.bytedance.sdk.component.d.t.IO);
        }
    }

    private void a(Map<String, String> map, com.bytedance.sdk.component.f.b.d dVar) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                try {
                    dVar.b(entry.getKey(), entry.getValue());
                } catch (Exception e2) {
                    com.bytedance.sdk.component.utils.l.d("NetApiImpl", "ADD header exceptopn", e2.getMessage());
                }
            }
        }
        try {
            dVar.b(Command.HTTP_HEADER_USER_AGENT, ac.c());
        } catch (Exception e3) {
            com.bytedance.sdk.component.utils.l.d("NetApiImpl", "ADD header exceptopn", e3.getMessage());
        }
    }

    private void a(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.s sVar) {
        JSONArray jSONArray;
        if (sVar == null || (jSONArray = sVar.f1594e) == null) {
            return;
        }
        try {
            jSONObject.put("source_temai_product_ids", jSONArray);
        } catch (Exception unused) {
        }
    }

    private void a(JSONObject jSONObject, String str, float f2, float f3) {
        if (f2 < 0.0f || f3 < 0.0f) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", (int) f2);
            jSONObject2.put("height", (int) f3);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private void a(JSONObject jSONObject, String str, int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        JSONObject jSONObject2 = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
            jSONObject2.put("width", i);
            jSONObject2.put("height", i2);
            jSONArray.put(jSONObject2);
            jSONObject.put(str, jSONArray);
        } catch (Exception unused) {
        }
    }

    private static void a(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    @JProtect
    private void a(JSONObject jSONObject, boolean z) throws Throwable {
        if (h.b().q()) {
            try {
                jSONObject.getJSONObject("header").put("aid", "4562");
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.d("NetApiImpl", "reportETEvent error", e2.getMessage());
            }
            com.bytedance.sdk.component.f.b.d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
            dVarB.a(ac.m());
            if (z) {
                byte[] bArrD = d(jSONObject.toString());
                byte[] bArrEncrypt = PangleEncryptUtils.encrypt(bArrD, bArrD.length);
                if (bArrEncrypt == null) {
                    com.bytedance.sdk.component.utils.l.e("NetApiImpl", "V3 encrypt failed");
                    JSONObject jSONObjectA = com.bytedance.sdk.component.utils.a.a(jSONObject);
                    if (c(jSONObjectA)) {
                        jSONObject = jSONObjectA;
                    }
                    a(d(jSONObject), dVarB);
                    dVarB.a(jSONObject.toString(), o.d().q());
                } else {
                    a(b(), dVarB);
                    dVarB.a("application/octet-stream;tt-data=a", bArrEncrypt);
                }
            } else {
                JSONObject jSONObjectA2 = com.bytedance.sdk.component.utils.a.a(jSONObject);
                if (c(jSONObjectA2)) {
                    jSONObject = jSONObjectA2;
                }
                a(d(jSONObject), dVarB);
                dVarB.a(jSONObject.toString(), o.d().q());
            }
            dVarB.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.q.5
                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
                    if (bVar == null || !bVar.f()) {
                        com.bytedance.sdk.component.utils.l.c("NetApiImpl", "onResponse: NetResponse is null");
                    } else {
                        com.bytedance.sdk.component.utils.l.b("NetApiImpl", "onResponse: ", bVar.d());
                    }
                }

                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                    com.bytedance.sdk.component.utils.l.b("NetApiImpl", "onFailure: ", iOException.getMessage());
                }
            });
        }
    }

    private static String b(AdSlot adSlot) {
        String strL = h.b().l();
        if (adSlot == null) {
            return TextUtils.isEmpty(strL) ? "" : strL;
        }
        String userData = adSlot.getUserData();
        if (TextUtils.isEmpty(strL)) {
            return userData;
        }
        if (TextUtils.isEmpty(userData)) {
            return strL;
        }
        HashSet hashSet = new HashSet();
        try {
            JSONArray jSONArray = new JSONArray(userData);
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject != null) {
                    hashSet.add(jSONObject.optString("name", null));
                }
            }
            try {
                JSONArray jSONArray2 = new JSONArray(strL);
                int length2 = jSONArray2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    JSONObject jSONObject2 = jSONArray2.getJSONObject(i2);
                    if (jSONObject2 != null && !hashSet.contains(jSONObject2.optString("name", null))) {
                        jSONArray.put(jSONObject2);
                    }
                }
                return jSONArray.toString();
            } catch (Throwable unused) {
                return userData;
            }
        } catch (Throwable unused2) {
            return strL;
        }
    }

    @NonNull
    private Map<String, String> b() {
        HashMap map = new HashMap();
        map.put(b4.I, "application/octet-stream;tt-data=a");
        return map;
    }

    public static JSONArray b(String str) {
        try {
            Set<String> setB = com.bytedance.sdk.component.adexpress.a.b.a.b(str);
            if (setB != null && setB.size() != 0) {
                JSONArray jSONArray = new JSONArray();
                Iterator<String> it = setB.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.adexpress.a.c.b bVarA = com.bytedance.sdk.component.adexpress.a.b.a.a(it.next());
                    if (bVarA != null) {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", bVarA.b());
                        jSONObject.put("md5", bVarA.c());
                        jSONArray.put(jSONObject);
                    }
                }
                return jSONArray;
            }
            return null;
        } catch (Exception e2) {
            Log.e("NetApiImpl", "getParentTplIds: ", e2);
            return null;
        }
    }

    @JProtect
    private JSONObject b(@NonNull String str, List<FilterWord> list, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("action", "dislike");
            jSONObject2.put("timestamp", System.currentTimeMillis());
            jSONObject2.put("ad_sdk_version", BuildConfig.VERSION_NAME);
            jSONObject2.put("extra", str);
            jSONObject2.put("filter_words", a(list));
            if (com.bytedance.sdk.openadsdk.core.settings.o.aj().T() && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                jSONObject2.put("creative_info", com.bytedance.sdk.component.utils.a.a(new JSONObject(str2)).toString());
                jSONObject2.put("feedback_type", 1);
                jSONObject2.put("user_description", str3);
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObject2);
            jSONObject.put("actions", jSONArray);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JProtect
    public void b(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.s sVar, final int i, final p.a aVar) {
        l.f();
        final com.bytedance.sdk.openadsdk.core.model.b bVar = new com.bytedance.sdk.openadsdk.core.model.b();
        bVar.a(adSlot);
        if (!com.bytedance.sdk.openadsdk.core.settings.k.a()) {
            if (aVar != null) {
                aVar.a(1000, "Ad request is temporarily paused, Please contact your Pangle AM");
                bVar.a(1000);
                com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                return;
            }
            return;
        }
        if (!o.d().P()) {
            if (aVar != null) {
                aVar.a(-16, g.a(-16));
                bVar.a(1001);
                com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                return;
            }
            return;
        }
        if (aVar == null) {
            return;
        }
        if (c(adSlot.getCodeId())) {
            aVar.a(-8, g.a(-8));
            return;
        }
        if (TextUtils.isEmpty(adSlot.getBidAdm())) {
            JSONObject jSONObjectA = a(adSlot, sVar, i);
            if (jSONObjectA == null) {
                aVar.a(-9, g.a(-9));
                bVar.a(-9);
                com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                return;
            }
            if (o.d().U() && v.a().g() == 1) {
                ac.a("Pangle_Debug_Mode", jSONObjectA.toString(), this.a);
            }
            String strA = ac.a(adSlot.getBiddingTokens() != null ? "/api/ad/union/mediation/get_ads/" : "/api/ad/union/sdk/get_ads/", true);
            com.bytedance.sdk.component.f.b.d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
            final com.bytedance.sdk.openadsdk.j.a.c cVar = new com.bytedance.sdk.openadsdk.j.a.c();
            try {
                String strA2 = com.bytedance.sdk.openadsdk.e.d.a(dVarB, strA);
                dVarB.a(strA2);
                cVar.a(strA2);
            } catch (Exception unused) {
            }
            dVarB.a(jSONObjectA.toString(), o.d().q());
            cVar.a(dVarB.c()).a();
            Map<String, String> mapA = com.bytedance.sdk.openadsdk.core.e.c.a(strA, jSONObjectA.toString());
            if (mapA != null && mapA.size() > 0) {
                for (String str : mapA.keySet()) {
                    try {
                        dVarB.b(str, mapA.get(str));
                    } catch (Exception e2) {
                        com.bytedance.sdk.component.utils.l.e("NetApiImpl", e2.getMessage());
                    }
                }
            }
            try {
                dVarB.b(Command.HTTP_HEADER_USER_AGENT, ac.c());
            } catch (Exception unused2) {
            }
            final ab abVarA = ab.a();
            final Map<String, Object> requestExtraMap = adSlot.getRequestExtraMap();
            boolean z = h.b().q() && requestExtraMap != null;
            if (z) {
                requestExtraMap.put("pgad_start", abVarA);
            }
            if (adSlot.getBiddingTokens() != null) {
                a(adSlot, sVar, dVarB, requestExtraMap, z, abVarA, aVar);
                return;
            } else {
                final boolean z2 = z;
                dVarB.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.q.2
                    @Override // com.bytedance.sdk.component.f.a.a
                    public void a(com.bytedance.sdk.component.f.b.c cVar2, com.bytedance.sdk.component.f.b bVar2) {
                        com.bytedance.sdk.openadsdk.core.model.v vVar;
                        System.currentTimeMillis();
                        cVar.b();
                        if (z2) {
                            requestExtraMap.put("pgad_end", abVarA);
                        }
                        if (bVar2 != null) {
                            if (!bVar2.f()) {
                                int iA = bVar2.a();
                                String strB = bVar2.b();
                                aVar.a(iA, strB);
                                bVar.a(iA);
                                com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                                q.this.a(bVar2.g(), adSlot.getCodeId(), i, null, iA, strB);
                                com.bytedance.sdk.openadsdk.b.a.f.h.incrementAndGet();
                                com.bytedance.sdk.openadsdk.b.a.f.c.incrementAndGet();
                                com.bytedance.sdk.openadsdk.b.a.f.a.incrementAndGet();
                                com.bytedance.sdk.openadsdk.b.a.f.a(iA, strB);
                                com.bytedance.sdk.openadsdk.b.a.f.c();
                                cVar.a(false).a(iA).d(strB).c(bVar2.d()).c();
                                return;
                            }
                            com.bytedance.sdk.openadsdk.b.a.f.b.incrementAndGet();
                            com.bytedance.sdk.openadsdk.b.a.f.a.incrementAndGet();
                            try {
                                ab abVarA2 = ab.a();
                                String strD = bVar2.d();
                                JSONObject jSONObject = new JSONObject(strD);
                                if (o.d().U() && v.a().g() == 1) {
                                    ac.a("Pangle_Debug_Mode", jSONObject.toString(), q.this.a);
                                }
                                bVar.a(strD);
                                JSONObject jSONObjectB = q.this.b(jSONObject);
                                if (jSONObjectB == null) {
                                    q.this.a(aVar, bVar);
                                    q.this.a(bVar2.g(), adSlot.getCodeId(), i, null, -1, "mate parse_fail");
                                    com.bytedance.sdk.openadsdk.b.a.f.f1178f.incrementAndGet();
                                    com.bytedance.sdk.openadsdk.b.a.f.c();
                                    cVar.a(true).a(bVar2.a()).c(strD).c();
                                    return;
                                }
                                a aVarA = a.a(jSONObjectB, adSlot, sVar, bVar);
                                bVar.a(aVarA.j);
                                j.a(q.this.a, aVarA.i);
                                int i2 = aVarA.f1660d;
                                if (i2 != 20000) {
                                    bVar.a(i2);
                                    if (o.d().F() || aVarA.f1660d != 40029) {
                                        aVar.a(aVarA.f1660d, aVarA.f1661e);
                                    } else {
                                        aVar.a(-100, g.a(-100));
                                    }
                                    com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                                    q.this.a(bVar2.g(), adSlot.getCodeId(), i, aVarA, aVarA.f1660d, String.valueOf(aVarA.f1662f));
                                    com.bytedance.sdk.openadsdk.b.a.f.f1178f.incrementAndGet();
                                    com.bytedance.sdk.openadsdk.b.a.f.c();
                                    cVar.a(true).a(bVar2.a()).c(strD).c();
                                    return;
                                }
                                com.bytedance.sdk.openadsdk.core.model.a aVar2 = aVarA.h;
                                if (aVar2 == null) {
                                    q.this.a(aVar, bVar);
                                    q.this.a(bVar2.g(), adSlot.getCodeId(), i, aVarA, -1, "parse_fail");
                                    com.bytedance.sdk.openadsdk.b.a.f.f1177e.incrementAndGet();
                                    com.bytedance.sdk.openadsdk.b.a.f.c();
                                    cVar.a(true).a(bVar2.a()).c(strD).c();
                                    return;
                                }
                                aVar2.c(jSONObjectB.toString());
                                ab abVarA3 = ab.a();
                                com.bytedance.sdk.openadsdk.core.model.s sVar2 = sVar;
                                if (sVar2 != null && (vVar = sVar2.h) != null) {
                                    vVar.a(abVarA, abVarA2, aVarA.a, abVarA3);
                                }
                                aVar.a(aVarA.h, bVar);
                                q.this.a(aVarA.h);
                                Map<String, com.bytedance.sdk.openadsdk.core.model.q> mapA2 = com.bytedance.sdk.openadsdk.core.model.a.a(aVarA.h);
                                if (mapA2 != null) {
                                    com.bytedance.sdk.openadsdk.d.b.a().a(mapA2);
                                }
                                if (aVarA.h.c() != null && !aVarA.h.c().isEmpty()) {
                                    q.this.a(sVar, abVarA, abVarA2, aVarA.a, abVarA3, aVarA.h.c().get(0), ac.c(i), aVarA.h.g());
                                    com.bytedance.sdk.openadsdk.b.a.f.f1176d.incrementAndGet();
                                }
                                com.bytedance.sdk.openadsdk.b.a.f.c();
                                cVar.a(true).a(bVar2.a()).c(strD).c();
                            } catch (Throwable th) {
                                com.bytedance.sdk.component.utils.l.c("NetApiImpl", "get ad error: ", th);
                                q.this.a(aVar, bVar);
                                q.this.a(bVar2.g(), adSlot.getCodeId(), i, null, -1, "parse_fail");
                                com.bytedance.sdk.openadsdk.b.a.f.f1177e.incrementAndGet();
                                com.bytedance.sdk.openadsdk.b.a.f.c();
                                cVar.a(bVar2.f()).a(bVar2.a()).c(bVar2.d()).d(th.getMessage()).c();
                            }
                        }
                    }

                    @Override // com.bytedance.sdk.component.f.a.a
                    public void a(com.bytedance.sdk.component.f.b.c cVar2, IOException iOException) {
                        cVar.b();
                        String message = iOException != null ? iOException.getMessage() : "";
                        ab abVarA2 = ab.a();
                        if (z2) {
                            requestExtraMap.put("pgad_end", Long.valueOf(abVarA2.a));
                        }
                        if (o.d().U() && v.a().g() == 1) {
                            ac.a("Pangle_Debug_Mode", iOException != null ? iOException.getMessage() : null, q.this.a);
                        }
                        int i2 = (iOException == null || !(iOException instanceof SocketTimeoutException)) ? 601 : 602;
                        p.a aVar2 = aVar;
                        if (aVar2 != null) {
                            aVar2.a(i2, message);
                        }
                        com.bytedance.sdk.component.utils.l.b("NetApiImpl", "onFailure: ", Integer.valueOf(i2));
                        bVar.a(i2);
                        com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                        q.this.a(abVarA2.a(abVarA), adSlot.getCodeId(), i, null, i2, message);
                        com.bytedance.sdk.openadsdk.b.a.f.c.incrementAndGet();
                        com.bytedance.sdk.openadsdk.b.a.f.a.incrementAndGet();
                        com.bytedance.sdk.openadsdk.b.a.f.f1179g.incrementAndGet();
                        com.bytedance.sdk.openadsdk.b.a.f.a(i2, message);
                        com.bytedance.sdk.openadsdk.b.a.f.c();
                        cVar.d(message).a(false).c();
                    }
                });
                return;
            }
        }
        bVar.b(2);
        bVar.a(adSlot.getBidAdm());
        if (com.bytedance.sdk.component.utils.l.d()) {
            com.bytedance.sdk.component.utils.l.b("bidding", "getAd bidAdm is valid，it will directly parse the returned advertisement: BidAdm->MD5->" + com.bykv.vk.openvk.component.video.api.f.b.a(adSlot.getBidAdm()));
        }
        if (o.d().U() && v.a().g() == 1) {
            ac.a("Pangle_Debug_Mode", adSlot.getBidAdm(), this.a);
        }
        try {
            JSONObject jSONObjectB = b(new JSONObject(adSlot.getBidAdm()));
            if (jSONObjectB == null) {
                a(aVar, bVar);
                return;
            }
            a aVarA = a.a(jSONObjectB, adSlot, sVar, bVar);
            bVar.a(aVarA.j);
            j.a(this.a, aVarA.i);
            int i2 = aVarA.f1660d;
            if (i2 != 20000) {
                aVar.a(i2, aVarA.f1661e);
                bVar.a(aVarA.f1660d);
                com.bytedance.sdk.openadsdk.core.model.b.a(bVar);
                return;
            }
            com.bytedance.sdk.openadsdk.core.model.a aVar2 = aVarA.h;
            if (aVar2 == null) {
                a(aVar, bVar);
                return;
            }
            if (aVar2.c() != null && aVarA.h.c().size() > 0) {
                com.bytedance.sdk.openadsdk.b.c.c(aVarA.h.c().get(0), ac.c(i));
            }
            aVarA.h.c(jSONObjectB.toString());
            aVar.a(aVarA.h, bVar);
            Map<String, com.bytedance.sdk.openadsdk.core.model.q> mapA2 = com.bytedance.sdk.openadsdk.core.model.a.a(aVarA.h);
            if (mapA2 != null) {
                com.bytedance.sdk.openadsdk.d.b.a().a(mapA2);
            }
            a(aVarA.h);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("NetApiImpl", "get ad error: ", th);
            a(aVar, bVar);
        }
    }

    @JProtect
    private JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("appid", h.b().d());
            jSONObject.put("name", h.b().e());
            f(jSONObject);
            Context contextA = o.a();
            String packageResourcePath = "";
            if (contextA != null) {
                try {
                    packageResourcePath = contextA.getPackageResourcePath();
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.e("NetApiImpl", "failed to get the application installation package path. error: " + th.getMessage());
                }
            }
            jSONObject.put("package_install_path", packageResourcePath);
            jSONObject.put("is_paid_app", h.b().j());
            jSONObject.put("apk_sign", com.bytedance.sdk.openadsdk.common.a.g());
            jSONObject.put("app_running_time", (System.currentTimeMillis() - l.a()) / 1000);
            jSONObject.put("fmwname", DeviceUtils.h(this.a));
            int i = 0;
            jSONObject.put("is_init", l.e() ? 1 : 0);
            if (contextA != null) {
                int rotation = ((WindowManager) contextA.getSystemService("window")).getDefaultDisplay().getRotation();
                if (rotation == 0) {
                    i = 1;
                } else if (rotation == 1) {
                    i = 3;
                } else if (rotation == 2) {
                    i = 2;
                } else if (rotation == 3) {
                    i = 4;
                }
                jSONObject.put("orientation_support", new JSONArray().put(i));
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    private boolean c(String str) {
        if (com.bytedance.sdk.openadsdk.core.d.b.a()) {
            return true;
        }
        if (!com.bytedance.sdk.openadsdk.core.d.b.a(str)) {
            return false;
        }
        String strB = com.bytedance.sdk.openadsdk.core.d.b.b();
        if (!TextUtils.isEmpty(strB)) {
            com.bytedance.sdk.openadsdk.b.c.a(strB, System.currentTimeMillis());
        }
        return true;
    }

    private boolean c(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.length() > 0;
    }

    @NonNull
    private Map<String, String> d(JSONObject jSONObject) {
        HashMap map = new HashMap();
        map.put(b4.I, "application/json; charset=utf-8");
        if (c(jSONObject)) {
            map.put("Content-Encoding", "union_sdk_encode");
        }
        return map;
    }

    private byte[] d(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2 = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        byte[] byteArray = new byte[0];
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    try {
                        gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    } catch (IOException e2) {
                        e = e2;
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e3) {
                com.bytedance.sdk.component.utils.l.e("NetApiImpl", e3.toString());
            }
            try {
                gZIPOutputStream.write(str.getBytes(b4.L));
                try {
                    gZIPOutputStream.close();
                } catch (IOException e4) {
                    com.bytedance.sdk.component.utils.l.e("NetApiImpl", e4.toString());
                }
                byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (IOException e5) {
                e = e5;
                gZIPOutputStream2 = gZIPOutputStream;
                com.bytedance.sdk.component.utils.l.e("NetApiImpl", e.toString());
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e6) {
                        com.bytedance.sdk.component.utils.l.e("NetApiImpl", e6.toString());
                    }
                }
                if (byteArrayOutputStream != null) {
                    byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                gZIPOutputStream2 = gZIPOutputStream;
                if (gZIPOutputStream2 != null) {
                    try {
                        gZIPOutputStream2.close();
                    } catch (IOException e7) {
                        com.bytedance.sdk.component.utils.l.e("NetApiImpl", e7.toString());
                    }
                }
                if (byteArrayOutputStream == null) {
                    throw th;
                }
                byteArrayOutputStream.toByteArray();
                try {
                    byteArrayOutputStream.close();
                    throw th;
                } catch (IOException e8) {
                    com.bytedance.sdk.component.utils.l.e("NetApiImpl", e8.toString());
                    throw th;
                }
            }
        } catch (IOException e9) {
            e = e9;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
        return byteArray;
    }

    private boolean e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            return jSONObject.optString("message").equalsIgnoreCase("success");
        } catch (Throwable unused) {
            return false;
        }
    }

    @JProtect
    private void f(JSONObject jSONObject) {
        try {
            jSONObject.put("package_name", ac.e());
            jSONObject.put("version_code", ac.f());
            jSONObject.put("version", ac.g());
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p
    public com.bytedance.sdk.component.adexpress.a.c.a a() {
        com.bytedance.sdk.component.adexpress.a.c.a aVarD = null;
        if (!com.bytedance.sdk.openadsdk.core.settings.k.a()) {
            return null;
        }
        long jCurrentTimeMillis = (System.currentTimeMillis() / 1000) - com.bytedance.sdk.openadsdk.multipro.d.d.a("tpl_fetch_model", "date", 0L);
        if (jCurrentTimeMillis <= o.d().C() && jCurrentTimeMillis >= 0) {
            String strB = com.bytedance.sdk.openadsdk.multipro.d.d.b("tpl_fetch_model", "model", "");
            try {
                if (!TextUtils.isEmpty(strB)) {
                    return com.bytedance.sdk.component.adexpress.a.c.a.d(strB);
                }
            } catch (Exception unused) {
            }
        }
        com.bytedance.sdk.component.f.b.b bVarC = com.bytedance.sdk.openadsdk.k.c.a().b().c();
        try {
            bVarC.a(com.bytedance.sdk.openadsdk.e.d.a(bVarC, o.d().L()));
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("NetApiImpl", e2.getMessage());
        }
        com.bytedance.sdk.component.f.b bVarA = bVarC.a();
        if (bVarA == null) {
            return null;
        }
        try {
            if (!bVarA.f()) {
                return null;
            }
            String strD = bVarA.d();
            aVarD = com.bytedance.sdk.component.adexpress.a.c.a.d(strD);
            com.bytedance.sdk.openadsdk.multipro.d.d.a("tpl_fetch_model", "date", Long.valueOf(System.currentTimeMillis() / 1000));
            com.bytedance.sdk.openadsdk.multipro.d.d.a("tpl_fetch_model", "model", strD);
            return aVarD;
        } catch (Exception unused2) {
            return aVarD;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:15|(1:27)(12:19|20|(1:22)(1:23)|24|(0)|43|29|48|30|(1:32)|38|39)|28|43|29|48|30|(0)|38|39) */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009d, code lost:
    
        r10 = r4;
        r4 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a0, code lost:
    
        r4 = r3;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a5, code lost:
    
        r3 = r4;
        r4 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098 A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #3 {all -> 0x009d, blocks: (B:30:0x0092, B:32:0x0098), top: B:48:0x0092 }] */
    @Override // com.bytedance.sdk.openadsdk.core.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.bytedance.sdk.openadsdk.b.e a(org.json.JSONObject r10) {
        /*
            r9 = this;
            java.lang.String r0 = "error unknown"
            long r1 = java.lang.System.currentTimeMillis()
            boolean r3 = com.bytedance.sdk.openadsdk.core.settings.k.a()
            r4 = 0
            if (r3 != 0) goto Le
            return r4
        Le:
            if (r10 == 0) goto Lc7
            int r3 = r10.length()
            if (r3 > 0) goto L18
            goto Lc7
        L18:
            org.json.JSONObject r10 = com.bytedance.sdk.component.utils.a.a(r10)
            com.bytedance.sdk.openadsdk.k.c r3 = com.bytedance.sdk.openadsdk.k.c.a()
            com.bytedance.sdk.component.f.a r3 = r3.b()
            com.bytedance.sdk.component.f.b.d r3 = r3.b()
            r4 = 0
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> Lb7
            com.bytedance.sdk.openadsdk.core.settings.e r5 = com.bytedance.sdk.openadsdk.core.o.d()     // Catch: java.lang.Throwable -> Lb7
            boolean r5 = r5.q()     // Catch: java.lang.Throwable -> Lb7
            r3.a(r10, r5)     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r10 = "/api/ad/union/sdk/stats/batch/"
            java.lang.String r10 = com.bytedance.sdk.openadsdk.utils.ac.d(r10)     // Catch: java.lang.Throwable -> Lb7
            r3.a(r10)     // Catch: java.lang.Throwable -> Lb7
            java.lang.String r10 = "User-Agent"
            java.lang.String r5 = com.bytedance.sdk.openadsdk.utils.ac.c()     // Catch: java.lang.Throwable -> Lb7
            r3.b(r10, r5)     // Catch: java.lang.Throwable -> Lb7
            com.bytedance.sdk.component.f.b r10 = r3.a()
            if (r10 != 0) goto L56
            com.bytedance.sdk.openadsdk.b.e r10 = new com.bytedance.sdk.openadsdk.b.e     // Catch: java.lang.Throwable -> La3
            r10.<init>(r4, r4, r0, r4)     // Catch: java.lang.Throwable -> La3
            return r10
        L56:
            boolean r3 = r10.f()     // Catch: java.lang.Throwable -> La3
            r5 = 1
            if (r3 == 0) goto L8c
            java.lang.String r3 = r10.d()     // Catch: java.lang.Throwable -> La3
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> La3
            if (r3 != 0) goto L8c
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: java.lang.Throwable -> La3
            java.lang.String r6 = r10.d()     // Catch: java.lang.Throwable -> La3
            r3.<init>(r6)     // Catch: java.lang.Throwable -> La3
            java.lang.String r6 = "code"
            r7 = -1
            int r6 = r3.optInt(r6, r7)     // Catch: java.lang.Throwable -> La3
            java.lang.String r7 = "data"
            java.lang.String r8 = ""
            java.lang.String r0 = r3.optString(r7, r8)     // Catch: java.lang.Throwable -> La3
            r3 = 20000(0x4e20, float:2.8026E-41)
            if (r6 != r3) goto L85
            r3 = 1
            goto L86
        L85:
            r3 = 0
        L86:
            r7 = 60005(0xea65, float:8.4085E-41)
            if (r6 != r7) goto L8d
            goto L8e
        L8c:
            r3 = 0
        L8d:
            r5 = 0
        L8e:
            int r4 = r10.a()     // Catch: java.lang.Throwable -> La0
            boolean r6 = r10.f()     // Catch: java.lang.Throwable -> L9d
            if (r6 != 0) goto La7
            java.lang.String r0 = r10.b()     // Catch: java.lang.Throwable -> L9d
            goto La7
        L9d:
            r10 = r4
            r4 = r3
            goto La5
        La0:
            r4 = r3
            r10 = 0
            goto La5
        La3:
            r10 = 0
            r5 = 0
        La5:
            r3 = r4
            r4 = r10
        La7:
            com.bytedance.sdk.openadsdk.b.a.b r10 = com.bytedance.sdk.openadsdk.b.a.a.b
            long r6 = java.lang.System.currentTimeMillis()
            long r6 = r6 - r1
            com.bytedance.sdk.openadsdk.b.a.a.a(r10, r3, r4, r6)
            com.bytedance.sdk.openadsdk.b.e r10 = new com.bytedance.sdk.openadsdk.b.e
            r10.<init>(r3, r4, r0, r5)
            return r10
        Lb7:
            com.bytedance.sdk.openadsdk.b.a.b r10 = com.bytedance.sdk.openadsdk.b.a.a.b
            long r5 = java.lang.System.currentTimeMillis()
            long r5 = r5 - r1
            com.bytedance.sdk.openadsdk.b.a.a.a(r10, r4, r4, r5)
            com.bytedance.sdk.openadsdk.b.e r10 = new com.bytedance.sdk.openadsdk.b.e
            r10.<init>(r4, r4, r0, r4)
            return r10
        Lc7:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.q.a(org.json.JSONObject):com.bytedance.sdk.openadsdk.b.e");
    }

    @Override // com.bytedance.sdk.openadsdk.core.p
    @WorkerThread
    @JProtect
    public com.bytedance.sdk.openadsdk.b.e a(JSONObject jSONObject, String str, boolean z) {
        boolean z2;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strB = null;
            if (!com.bytedance.sdk.openadsdk.core.settings.k.a()) {
                return null;
            }
            com.bytedance.sdk.component.f.b.d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
            dVarB.a(str);
            if (z) {
                byte[] bArrD = d(jSONObject.toString());
                byte[] bArrEncrypt = PangleEncryptUtils.encrypt(bArrD, bArrD.length);
                if (bArrEncrypt == null) {
                    com.bytedance.sdk.component.utils.l.e("NetApiImpl", "V3 encrypt failed");
                    JSONObject jSONObjectA = com.bytedance.sdk.component.utils.a.a(jSONObject);
                    if (!c(jSONObjectA)) {
                        jSONObjectA = jSONObject;
                    }
                    a(d(jSONObjectA), dVarB);
                    dVarB.a(jSONObjectA.toString(), o.d().q());
                } else {
                    a(b(), dVarB);
                    dVarB.a("application/octet-stream;tt-data=a", bArrEncrypt);
                }
            } else {
                JSONObject jSONObjectA2 = com.bytedance.sdk.component.utils.a.a(jSONObject);
                if (!c(jSONObjectA2)) {
                    jSONObjectA2 = jSONObject;
                }
                a(d(jSONObjectA2), dVarB);
                dVarB.a(jSONObjectA2.toString(), o.d().q());
            }
            com.bytedance.sdk.openadsdk.j.a.c cVar = new com.bytedance.sdk.openadsdk.j.a.c();
            cVar.a(str).a(dVarB.c()).a();
            com.bytedance.sdk.component.f.b bVarA = dVarB.a();
            boolean zE = (bVarA == null || !bVarA.f() || TextUtils.isEmpty(bVarA.d())) ? false : e(new JSONObject(bVarA.d()));
            String strB2 = "error unknown";
            int iA = bVarA != null ? bVarA.a() : 0;
            boolean z3 = true;
            if (zE || iA != 200) {
                if (bVarA != null && bVarA.b() != null) {
                    strB2 = bVarA.b();
                }
                z2 = false;
            } else {
                strB2 = "server say not success";
                z2 = true;
            }
            boolean z4 = bVarA == null;
            if (z4 || !bVarA.f()) {
                z3 = false;
            }
            com.bytedance.sdk.openadsdk.j.a.c cVarA = cVar.a(z3).c(z4 ? null : bVarA.d()).a(z4 ? com.bytedance.sdk.openadsdk.j.a.c.b : iA);
            if (!z4) {
                strB = bVarA.b();
            }
            cVarA.d(strB).c();
            a(jSONObject, z);
            com.bytedance.sdk.openadsdk.b.a.a.a(com.bytedance.sdk.openadsdk.b.a.a.a, zE, iA, System.currentTimeMillis() - jCurrentTimeMillis);
            return new com.bytedance.sdk.openadsdk.b.e(zE, iA, strB2, z2);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.c("NetApiImpl", "uploadEvent error", th);
            return new com.bytedance.sdk.openadsdk.b.e(false, 509, "service_busy", false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p
    public void a(final AdSlot adSlot, final com.bytedance.sdk.openadsdk.core.model.s sVar, final int i, p.a aVar) {
        final com.bytedance.sdk.openadsdk.core.a.a aVar2 = new com.bytedance.sdk.openadsdk.core.a.a(aVar);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            l.b().post(new com.bytedance.sdk.component.g.h("getAd") { // from class: com.bytedance.sdk.openadsdk.core.q.1
                @Override // java.lang.Runnable
                public void run() {
                    q.this.b(adSlot, sVar, i, aVar2);
                }
            });
        } else {
            b(adSlot, sVar, i, aVar2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p
    public void a(String str) {
        com.bytedance.sdk.component.f.b.b bVarC = com.bytedance.sdk.openadsdk.k.c.a().b().c();
        bVarC.a(str);
        bVarC.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.q.8
            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
                com.bytedance.sdk.component.utils.l.b("client bidding success", bVar.d());
            }

            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                com.bytedance.sdk.component.utils.l.b("client bidding fail", iOException.toString());
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.p
    public void a(@NonNull String str, List<FilterWord> list, String str2, String str3) {
        JSONObject jSONObjectB;
        if (com.bytedance.sdk.openadsdk.core.settings.k.a() && (jSONObjectB = b(str, list, str2, str3)) != null) {
            com.bytedance.sdk.component.f.b.d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
            String strD = ac.d("/api/ad/union/dislike_event/");
            String string = com.bytedance.sdk.component.utils.a.a(jSONObjectB).toString();
            dVarB.a(strD);
            dVarB.c(string);
            final com.bytedance.sdk.openadsdk.j.a.c cVar = new com.bytedance.sdk.openadsdk.j.a.c();
            cVar.a(strD).b(string).a();
            dVarB.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.q.6
                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar2, com.bytedance.sdk.component.f.b bVar) {
                    if (bVar == null) {
                        cVar.a(false).a(com.bytedance.sdk.openadsdk.j.a.c.b).c();
                    } else {
                        cVar.a(bVar.f()).a(bVar.a()).d(bVar.b()).c(bVar.d()).c();
                    }
                }

                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar2, IOException iOException) {
                    cVar.a(false).d(iOException != null ? iOException.getMessage() : null).c();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p
    public void a(JSONObject jSONObject, final p.b bVar) {
        if (!com.bytedance.sdk.openadsdk.core.settings.k.a()) {
            if (bVar != null) {
                bVar.a(1000, "Ad request is temporarily paused, Please contact your Pangle AM");
            }
        } else {
            if (jSONObject == null || bVar == null) {
                return;
            }
            JSONObject jSONObjectA = com.bytedance.sdk.component.utils.a.a(jSONObject);
            final com.bytedance.sdk.openadsdk.j.a.c cVar = new com.bytedance.sdk.openadsdk.j.a.c();
            com.bytedance.sdk.component.f.b.d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
            try {
                String strA = com.bytedance.sdk.openadsdk.e.d.a(dVarB, ac.d("/api/ad/union/sdk/reward_video/reward/"));
                dVarB.a(strA);
                cVar.a(strA);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("NetApiImpl", e2.getMessage());
            }
            dVarB.c(jSONObjectA.toString());
            cVar.a(dVarB.c()).a();
            dVarB.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.q.7
                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar2, com.bytedance.sdk.component.f.b bVar2) {
                    if (bVar2 == null) {
                        cVar.a(false).a(com.bytedance.sdk.openadsdk.j.a.c.b).c();
                        q.this.a(bVar);
                        return;
                    }
                    if (!bVar2.f() || TextUtils.isEmpty(bVar2.d())) {
                        cVar.a(bVar2.f()).c(bVar2.d()).a(bVar2.a()).d(bVar2.b()).c();
                        String strA2 = g.a(-2);
                        int iA = bVar2.a();
                        if (!bVar2.f() && !TextUtils.isEmpty(bVar2.b())) {
                            strA2 = bVar2.b();
                        }
                        bVar.a(iA, strA2);
                        return;
                    }
                    cVar.a(true).a(bVar2.a()).c(bVar2.d()).c();
                    try {
                        JSONObject jSONObject2 = new JSONObject(bVar2.d());
                        String strC = jSONObject2.optInt("cypher", -1) == 3 ? com.bytedance.sdk.component.utils.a.c(jSONObject2.optString("message")) : null;
                        if (!TextUtils.isEmpty(strC)) {
                            try {
                                jSONObject2 = new JSONObject(strC);
                            } catch (Throwable unused) {
                            }
                        }
                        b bVarA = b.a(jSONObject2);
                        int i = bVarA.a;
                        if (i != 20000) {
                            bVar.a(i, g.a(i));
                        } else if (bVarA.c == null) {
                            q.this.a(bVar);
                        } else {
                            bVar.a(bVarA);
                        }
                    } catch (JSONException e3) {
                        com.bytedance.sdk.component.utils.l.e("NetApiImpl", e3.getMessage());
                        q.this.a(bVar);
                    }
                }

                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar2, IOException iOException) {
                    String message = iOException != null ? iOException.getMessage() : "";
                    cVar.a(false).d(message).c();
                    bVar.a(-2, message);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p
    public void a(JSONObject jSONObject, String str) {
        com.bytedance.sdk.component.f.b.d dVarB = com.bytedance.sdk.openadsdk.k.c.a().b().b();
        dVarB.a(str);
        dVarB.a(jSONObject);
        dVarB.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.q.9
            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
                com.bytedance.sdk.component.utils.l.b("execPVToApm success", bVar.d());
            }

            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                com.bytedance.sdk.component.utils.l.b("execPVToApm fail", iOException.toString());
            }
        });
    }

    public JSONObject b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return jSONObject;
        }
        try {
            int iOptInt = jSONObject.optInt("cypher", -1);
            String strOptString = jSONObject.optString("message");
            String strOptString2 = jSONObject.optString("auction_price", "");
            if (iOptInt == 3) {
                strOptString = com.bytedance.sdk.component.utils.a.c(strOptString);
            }
            if (TextUtils.isEmpty(strOptString)) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject(strOptString);
            try {
                jSONObject2.put("auction_price", strOptString2);
            } catch (Throwable unused) {
            }
            return jSONObject2;
        } catch (Throwable unused2) {
            return jSONObject;
        }
    }
}
