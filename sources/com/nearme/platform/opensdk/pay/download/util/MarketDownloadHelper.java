package com.nearme.platform.opensdk.pay.download.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MarketDownloadHelper {
    public static void jumpMarketItemDetail(Context context, String str, boolean z) {
        try {
            Uri uri = Uri.parse("oppomarket://details?packagename=" + str);
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(uri);
            intent.putExtra("out_intent_from", 1606);
            intent.addFlags(276824064);
            intent.putExtra("extra.key.productdetail_start_with_download", z);
            intent.putExtra("go_back_to_launcher_app", true);
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 32);
            if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0) {
                return;
            }
            context.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
