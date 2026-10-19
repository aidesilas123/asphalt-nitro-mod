package com.mbridge.msdk.video.dynview.i;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.w;

/* JADX INFO: compiled from: UIControlUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static int a(CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
            int iB = campaignEx.getRewardTemplateMode().b();
            if (iB == 302 || iB == 802) {
                return -3;
            }
            if (iB == 904) {
                return !a(campaignEx.getRewardTemplateMode().e()) ? -1 : -3;
            }
        }
        return 100;
    }

    public static String a(Context context, int i) {
        String str = i == 1 ? "_por" : "_land";
        String strG = w.g(context);
        if (strG.startsWith("zh")) {
            return (strG.contains("TW") || strG.contains("HK")) ? "mbridge_reward_two_title_zh_trad" : "mbridge_reward_two_title_zh";
        }
        if (strG.startsWith("ja")) {
            return "mbridge_reward_two_title_japan" + str;
        }
        if (strG.startsWith(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR)) {
            return "mbridge_reward_two_title_germany" + str;
        }
        if (strG.startsWith("ko")) {
            return "mbridge_reward_two_title_korea" + str;
        }
        if (strG.startsWith("fr")) {
            return "mbridge_reward_two_title_france" + str;
        }
        if (strG.startsWith("ar")) {
            return "mbridge_reward_two_title_arabia" + str;
        }
        if (strG.startsWith("ru")) {
            return "mbridge_reward_two_title_russian" + str;
        }
        return "mbridge_reward_two_title_en" + str;
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                return false;
            }
            String queryParameter = uri.getQueryParameter("alecfc");
            if (TextUtils.isEmpty(queryParameter)) {
                return false;
            }
            return queryParameter.equals("1");
        } catch (Throwable unused) {
            return false;
        }
    }
}
