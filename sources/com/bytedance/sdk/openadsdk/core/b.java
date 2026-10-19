package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.g.a.b;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.NativeProtocol;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdInfoFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static int a(com.bykv.vk.openvk.component.video.api.c.b bVar, boolean z) {
        if (bVar == null) {
            return TTAdConstant.VIDEO_INFO_CODE;
        }
        if (TextUtils.isEmpty(bVar.k())) {
            return TTAdConstant.VIDEO_URL_CODE;
        }
        if (z || !TextUtils.isEmpty(bVar.j())) {
            return 200;
        }
        return TTAdConstant.VIDEO_COVER_URL_CODE;
    }

    private static int a(com.bytedance.sdk.openadsdk.core.model.c cVar) {
        if (cVar == null) {
            return TTAdConstant.DOWNLOAD_APP_INFO_CODE;
        }
        if (TextUtils.isEmpty(cVar.a())) {
            return TTAdConstant.DOWNLOAD_URL_CODE;
        }
        return 200;
    }

    private static int a(com.bytedance.sdk.openadsdk.core.model.j jVar) {
        if (jVar == null) {
            return 200;
        }
        if (TextUtils.isEmpty(jVar.a())) {
            return 403;
        }
        if (TextUtils.isEmpty(jVar.b())) {
            return TTAdConstant.DEEPLINK_FALLBACK_CODE;
        }
        if (jVar.c() == 1 || jVar.c() == 2) {
            return 200;
        }
        return TTAdConstant.DEEPLINK_FALLBACK_TYPE_CODE;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int a(com.bytedance.sdk.openadsdk.core.model.q r6) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.b.a(com.bytedance.sdk.openadsdk.core.model.q):int");
    }

    private static int a(List<com.bytedance.sdk.openadsdk.core.model.n> list) {
        if (list == null) {
            return TTAdConstant.IMAGE_LIST_CODE;
        }
        if (list.size() <= 0) {
            return TTAdConstant.IMAGE_LIST_SIZE_CODE;
        }
        for (com.bytedance.sdk.openadsdk.core.model.n nVar : list) {
            if (nVar == null) {
                return TTAdConstant.IMAGE_CODE;
            }
            if (TextUtils.isEmpty(nVar.a())) {
                return 412;
            }
        }
        return 200;
    }

    private static Pair<com.bytedance.sdk.openadsdk.core.g.a, b.a> a(String str, int i, int i2) {
        int iD;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int iC = 0;
        if (i2 == 1 || i2 == 5) {
            iD = 0;
        } else {
            iC = ad.c(o.a());
            iD = ad.d(o.a());
            if (i == 2) {
                iC = iD;
                iD = iC;
            }
        }
        com.bytedance.sdk.openadsdk.core.g.a.a.e eVar = new com.bytedance.sdk.openadsdk.core.g.a.a.e(o.a(), iC, iD);
        return new Pair<>(eVar.a(str, new ArrayList()), eVar.f1511f);
    }

    @Nullable
    public static Pair<com.bytedance.sdk.openadsdk.core.model.a, ArrayList<Integer>> a(JSONObject jSONObject, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.s sVar, com.bytedance.sdk.openadsdk.core.model.b bVar) {
        if (jSONObject == null) {
            return null;
        }
        try {
            com.bytedance.sdk.openadsdk.core.model.a aVar = new com.bytedance.sdk.openadsdk.core.model.a();
            aVar.a(jSONObject.optString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID));
            aVar.a(jSONObject.optInt("ret"));
            aVar.b(jSONObject.optString("message"));
            String strOptString = jSONObject.optString("gdid_encrypted");
            if (jSONObject.has("choose_ui_data")) {
                aVar.a(jSONObject.optJSONObject("choose_ui_data"));
                aVar.a(true);
            }
            String strOptString2 = jSONObject.optString("auction_price");
            if (aVar.b() != 0) {
                return null;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creatives");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                while (i < jSONArrayOptJSONArray.length()) {
                    com.bytedance.sdk.openadsdk.core.model.q qVarA = a(jSONArrayOptJSONArray.optJSONObject(i), adSlot, sVar);
                    int iA = a(qVarA);
                    if (iA != 200) {
                        arrayList.add(Integer.valueOf(iA));
                    } else {
                        qVarA.i(strOptString2);
                        if (!TextUtils.isEmpty(strOptString)) {
                            qVarA.y(strOptString);
                        }
                        aVar.a(qVarA);
                    }
                    i++;
                }
                i = length;
            }
            a(i, aVar, (ArrayList<Integer>) arrayList, bVar);
            return new Pair<>(aVar, arrayList);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.l.e("AdInfoFactory", th.getMessage());
            return null;
        }
    }

    @Nullable
    private static com.bykv.vk.openvk.component.video.api.c.b a(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (jSONObject == null) {
            return null;
        }
        com.bykv.vk.openvk.component.video.api.c.b bVar = new com.bykv.vk.openvk.component.video.api.c.b();
        bVar.b(jSONObject.optInt("cover_height"));
        bVar.c(jSONObject.optInt("cover_width"));
        bVar.a(jSONObject.optString("resolution"));
        bVar.a(jSONObject.optLong("size"));
        double dOptDouble = jSONObject.optDouble("video_duration", 0.0d);
        bVar.a(dOptDouble);
        int iOptInt = jSONObject.optInt("replay_time", 1);
        if (dOptDouble > 15.0d || qVar.u() == 1 || !com.bytedance.sdk.openadsdk.core.model.q.c(qVar)) {
            iOptInt = 1;
        }
        bVar.j(iOptInt);
        bVar.b(jSONObject.optString("cover_url"));
        bVar.c(jSONObject.optString("video_url"));
        bVar.d(jSONObject.optString(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD));
        bVar.e(jSONObject.optString("playable_download_url"));
        bVar.f(jSONObject.optString("file_hash"));
        bVar.h(jSONObject.optInt("if_playable_loading_show", 0));
        bVar.i(jSONObject.optInt("remove_loading_page_type", 0));
        bVar.a(jSONObject.optInt("fallback_endcard_judge", 0));
        bVar.e(jSONObject.optInt("video_preload_size", 307200));
        bVar.f(jSONObject.optInt("reward_video_cached_type", 0));
        bVar.g(jSONObject.optInt("execute_cached_type", 0));
        bVar.d(jSONObject.optDouble("endcard_render", 0.0d) != 1.0d ? 0 : 1);
        return bVar;
    }

    @Nullable
    public static com.bytedance.sdk.openadsdk.core.model.q a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        return a(jSONObject, (AdSlot) null, (com.bytedance.sdk.openadsdk.core.model.s) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x0564 A[PHI: r14
      0x0564: PHI (r14v78 int) = (r14v77 int), (r14v106 int) binds: [B:137:0x0550, B:142:0x0561] A[DONT_GENERATE, DONT_INLINE]] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.bytedance.sdk.openadsdk.core.model.q a(org.json.JSONObject r13, com.bytedance.sdk.openadsdk.AdSlot r14, com.bytedance.sdk.openadsdk.core.model.s r15) {
        /*
            Method dump skipped, instruction units count: 1588
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.b.a(org.json.JSONObject, com.bytedance.sdk.openadsdk.AdSlot, com.bytedance.sdk.openadsdk.core.model.s):com.bytedance.sdk.openadsdk.core.model.q");
    }

    private static void a(int i, final com.bytedance.sdk.openadsdk.core.model.a aVar, final ArrayList<Integer> arrayList, final com.bytedance.sdk.openadsdk.core.model.b bVar) {
        if (aVar == null || i < 2) {
            return;
        }
        final int size = i - (aVar.c() != null ? aVar.c().size() : 0);
        final boolean z = aVar.g() && aVar.h() == null;
        if (size > 0 || z) {
            com.bytedance.sdk.openadsdk.j.b.a();
            com.bytedance.sdk.openadsdk.j.b.a("choose_ad_parsing_error", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.core.b.1
                @Override // com.bytedance.sdk.openadsdk.j.a
                public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("req_id", aVar.a());
                    jSONObject.put("material_error", size);
                    jSONObject.put("choose_ui_error", z ? 1 : 0);
                    ArrayList arrayList2 = arrayList;
                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                        jSONObject.put("mate_unavailable_code_list", new JSONArray((Collection) arrayList).toString());
                    }
                    com.bytedance.sdk.openadsdk.core.model.b bVar2 = bVar;
                    if (bVar2 != null) {
                        jSONObject.put("server_res_str", bVar2.a());
                    }
                    return com.bytedance.sdk.openadsdk.j.a.b.b().a("choose_ad_parsing_error").b(jSONObject.toString());
                }
            });
        }
    }

    private static void a(com.bytedance.sdk.openadsdk.core.g.a aVar, com.bytedance.sdk.openadsdk.core.model.q qVar) {
        aVar.a(qVar);
        int iM = qVar.M();
        if (iM != 2 && iM != 3) {
            qVar.r(2);
        }
        qVar.d(1);
        qVar.a(aVar);
        if (!TextUtils.isEmpty(aVar.d())) {
            qVar.n(aVar.d());
        }
        if (!TextUtils.isEmpty(aVar.e())) {
            qVar.o(aVar.e());
        }
        qVar.l(aVar.f());
        qVar.a((com.bytedance.sdk.openadsdk.core.model.c) null);
        com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
        if (bVarK == null) {
            bVarK = new com.bykv.vk.openvk.component.video.api.c.b();
        }
        bVarK.c(aVar.g());
        bVarK.a(aVar.h());
        bVarK.f((String) null);
        bVarK.b((String) null);
        bVarK.d((String) null);
        qVar.a(bVarK);
        if (aVar.b() != null && !TextUtils.isEmpty(aVar.b().e())) {
            com.bytedance.sdk.openadsdk.core.model.n nVar = new com.bytedance.sdk.openadsdk.core.model.n();
            nVar.a(aVar.b().e());
            nVar.a(aVar.b().b());
            nVar.b(aVar.b().c());
            qVar.a(nVar);
            return;
        }
        if (qVar.N() == null) {
            com.bytedance.sdk.openadsdk.core.model.n nVar2 = new com.bytedance.sdk.openadsdk.core.model.n();
            nVar2.a("https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/ad-pattern-sg/static/images/2023620white.jpeg");
            nVar2.a(98);
            nVar2.b(98);
            qVar.a(nVar2);
        }
    }

    private static void a(com.bytedance.sdk.openadsdk.core.model.q qVar, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("reason_code", -1);
            jSONObject.put("error_code", -1);
            com.bytedance.sdk.openadsdk.b.c.b(qVar, str, "load_vast_fail", jSONObject);
        } catch (Exception unused) {
        }
    }

    private static void a(final com.bytedance.sdk.openadsdk.core.model.q qVar, final String str, final com.bytedance.sdk.openadsdk.core.g.a aVar, final long j, final b.a aVar2) {
        com.bytedance.sdk.openadsdk.b.c.a(new com.bytedance.sdk.component.g.h("vast_parser") { // from class: com.bytedance.sdk.openadsdk.core.b.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    JSONObject jSONObject = new JSONObject();
                    com.bytedance.sdk.openadsdk.core.g.a aVar3 = aVar;
                    String str2 = "load_vast_fail";
                    if (aVar3 == null) {
                        jSONObject.put("reason_code", -2);
                        b.a aVar4 = aVar2;
                        if (aVar4 != null) {
                            jSONObject.put("error_code", aVar4.a);
                        }
                    } else if (TextUtils.isEmpty(aVar3.i()) || TextUtils.isEmpty(aVar.f()) || aVar.h() <= 0.0d) {
                        jSONObject.put("reason_code", -3);
                        jSONObject.put("error_code", -3);
                    } else {
                        jSONObject.put("duration", System.currentTimeMillis() - j);
                        b.a aVar5 = aVar2;
                        if (aVar5 != null) {
                            jSONObject.put("wrapper_count", aVar5.b);
                            jSONObject.put("impression_links_null", aVar2.c);
                        }
                        str2 = "load_vast_success";
                    }
                    com.bytedance.sdk.openadsdk.b.c.b(qVar, str, str2, jSONObject);
                    com.bytedance.sdk.openadsdk.core.g.a aVar6 = aVar;
                    if (aVar6 == null || aVar6.b() == null || !TextUtils.isEmpty(aVar.b().f())) {
                        return;
                    }
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("error_code", 1000);
                        jSONObject2.put("description", "1000:Image url is null");
                    } catch (Throwable unused) {
                    }
                    com.bytedance.sdk.openadsdk.b.c.b(qVar, str, "load_vast_icon_fail", jSONObject2);
                    aVar.a((com.bytedance.sdk.openadsdk.core.g.b) null);
                } catch (Exception unused2) {
                }
            }
        });
    }

    private static com.bytedance.sdk.openadsdk.core.model.d b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int iOptInt = jSONObject.optInt("splash_clickarea", 2);
        int iOptInt2 = jSONObject.optInt("splash_layout_id", 1);
        long jOptLong = jSONObject.optLong("load_wait_time", 0L);
        long j = jOptLong >= 0 ? jOptLong : 0L;
        com.bytedance.sdk.openadsdk.core.model.d dVar = new com.bytedance.sdk.openadsdk.core.model.d();
        dVar.a(iOptInt);
        dVar.b(iOptInt2);
        dVar.a(j);
        return dVar;
    }

    private static boolean b(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        return (qVar.at() || qVar.av()) ? false : true;
    }

    private static AdSlot c(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("mCodeId", "");
        int iOptInt = jSONObject.optInt("mImgAcceptedWidth", 0);
        int iOptInt2 = jSONObject.optInt("mImgAcceptedHeight", 0);
        float fOptDouble = (float) jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
        float fOptDouble2 = (float) jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
        int iOptInt3 = jSONObject.optInt("mAdCount", 6);
        boolean zOptBoolean = jSONObject.optBoolean("mSupportDeepLink", true);
        String strOptString2 = jSONObject.optString("mRewardName", "");
        int iOptInt4 = jSONObject.optInt("mRewardAmount", 0);
        String strOptString3 = jSONObject.optString("mMediaExtra", "");
        String strOptString4 = jSONObject.optString("mUserID", "");
        jSONObject.optInt("mOrientation", 2);
        int iOptInt5 = jSONObject.optInt("mNativeAdType", 0);
        boolean zOptBoolean2 = jSONObject.optBoolean("mIsAutoPlay", false);
        boolean zOptBoolean3 = jSONObject.optBoolean("mIsExpressAd", false);
        String strOptString5 = jSONObject.optString("mBidAdm", "");
        return new AdSlot.Builder().setCodeId(strOptString).setImageAcceptedSize(iOptInt, iOptInt2).setExpressViewAcceptedSize(fOptDouble, fOptDouble2).setAdCount(iOptInt3).setSupportDeepLink(zOptBoolean).setRewardName(strOptString2).setRewardAmount(iOptInt4).setMediaExtra(strOptString3).setUserID(strOptString4).setNativeAdType(iOptInt5).setIsAutoPlay(zOptBoolean2).isExpressAd(zOptBoolean3).withBid(strOptString5).setDurationSlotType(jSONObject.optInt("mDurationSlotType", 0)).build();
    }

    private static FilterWord d(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            FilterWord filterWord = new FilterWord();
            filterWord.setId(jSONObject.optString("id"));
            filterWord.setName(jSONObject.optString("name"));
            filterWord.setIsSelected(jSONObject.optBoolean("is_selected"));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(SDKConstants.PARAM_GAME_REQUESTS_OPTIONS);
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    FilterWord filterWordD = d(jSONArrayOptJSONArray.optJSONObject(i));
                    if (filterWordD != null && filterWordD.isValid()) {
                        filterWord.addOption(filterWordD);
                    }
                }
            }
            return filterWord;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.c e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.c cVar = new com.bytedance.sdk.openadsdk.core.model.c();
        cVar.b(jSONObject.optString(NativeProtocol.BRIDGE_ARG_APP_NAME_STRING));
        cVar.c(jSONObject.optString("package_name"));
        cVar.a(jSONObject.optString(DownloadModel.DOWNLOAD_URL));
        cVar.a(jSONObject.optDouble("score", -1.0d));
        cVar.a(jSONObject.optInt("comment_num", -1));
        cVar.b(jSONObject.optInt(CampaignEx.JSON_KEY_APP_SIZE, 0));
        return cVar;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.p f(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.p pVar = new com.bytedance.sdk.openadsdk.core.model.p();
        if (jSONObject == null) {
            pVar.a(10L);
            pVar.b(20L);
            pVar.a("");
            return pVar;
        }
        pVar.a(jSONObject.optLong("onlylp_loading_maxtime", 10L));
        pVar.b(jSONObject.optLong("straight_lp_showtime", 20L));
        pVar.a(jSONObject.optString("loading_text", ""));
        return pVar;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.k g(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.k kVar = new com.bytedance.sdk.openadsdk.core.model.k();
        kVar.a(jSONObject.optInt("if_send_click", 0));
        return kVar;
    }

    @Nullable
    private static com.bytedance.sdk.openadsdk.core.model.j h(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.model.j jVar = new com.bytedance.sdk.openadsdk.core.model.j();
        jVar.a(jSONObject.optString("deeplink_url"));
        jVar.b(jSONObject.optString("fallback_url"));
        jVar.a(jSONObject.optInt("fallback_type"));
        return jVar;
    }

    private static Map<String, Object> i(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!TextUtils.isEmpty(next)) {
                map.put(next, jSONObject.opt(next));
            }
        }
        return map;
    }
}
