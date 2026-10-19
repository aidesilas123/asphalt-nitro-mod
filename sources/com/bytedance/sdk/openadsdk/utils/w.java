package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.json.d1;
import java.util.Map;

/* JADX INFO: compiled from: TTClientBiddingUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class w {
    public static void a(com.bytedance.sdk.openadsdk.core.model.q qVar, Double d2) {
        if (qVar == null || qVar.ai() == null) {
            return;
        }
        Map<String, Object> mapAi = qVar.ai();
        try {
            Object obj = qVar.ai().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String strReplace = (String) mapAi.get(d1.z);
                if (TextUtils.isEmpty(strReplace)) {
                    return;
                }
                if (d2 != null) {
                    strReplace = strReplace.replace("${AUCTION_BID_TO_WIN}", String.valueOf(d2));
                }
                com.bytedance.sdk.openadsdk.core.o.c().a(strReplace);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.utils.l.d("report Win error");
        }
    }

    public static void a(com.bytedance.sdk.openadsdk.core.model.q qVar, Double d2, String str, String str2) {
        if (qVar == null || qVar.ai() == null) {
            return;
        }
        Map<String, Object> mapAi = qVar.ai();
        try {
            Object obj = qVar.ai().get("sdk_bidding_type");
            if (obj != null && Integer.parseInt(obj.toString()) == 2) {
                String strReplace = (String) mapAi.get(d1.y);
                if (TextUtils.isEmpty(strReplace)) {
                    return;
                }
                if (d2 != null) {
                    strReplace = strReplace.replace(com.json.mediationsdk.d.n, String.valueOf(d2));
                }
                if (str != null) {
                    strReplace = strReplace.replace(com.json.mediationsdk.d.l, str);
                }
                if (str2 != null) {
                    strReplace = strReplace.replace("${AUCTION_WINNER}", str2);
                }
                com.bytedance.sdk.openadsdk.core.o.c().a(strReplace);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.utils.l.d("report Loss error");
        }
    }
}
