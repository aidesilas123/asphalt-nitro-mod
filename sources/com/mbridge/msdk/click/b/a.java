package com.mbridge.msdk.click.b;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.json.o2;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;

/* JADX INFO: compiled from: DspFilterUtils.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static int a = 1;
    public static int b = 2;
    public static int c = 1500;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f6797d = "2000109";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f6798e = "DspFilterUtils";

    public static boolean a(CampaignEx campaignEx, String str, int i) {
        if (campaignEx != null && campaignEx.getTpOffer() == 1) {
            z = campaignEx.getFac() != 0;
            try {
                Context contextG = b.d().g();
                if (contextG != null) {
                    if (URLUtil.isFileUrl(str)) {
                        File file = new File(str.replace("file:////", "").replace("file:///", "").replace(AdPayload.FILE_SCHEME, ""));
                        if (file.exists()) {
                            str = y.a(file);
                        }
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("key=" + f6797d + o2.i.c);
                    stringBuffer.append("type=" + i + o2.i.c);
                    stringBuffer.append("html=" + str + o2.i.c);
                    stringBuffer.append("network_type=" + w.r(contextG) + o2.i.c);
                    stringBuffer.append("unit_id=" + campaignEx.getCampaignUnitId() + o2.i.c);
                    String requestId = campaignEx.getRequestId();
                    if (!TextUtils.isEmpty(requestId)) {
                        stringBuffer.append("rid=");
                        stringBuffer.append(requestId);
                        stringBuffer.append(o2.i.c);
                    }
                    if (campaignEx.isBidCampaign()) {
                        stringBuffer.append("hb=");
                        stringBuffer.append("1");
                        stringBuffer.append(o2.i.c);
                    }
                    String requestIdNotice = campaignEx.getRequestIdNotice();
                    if (!TextUtils.isEmpty(requestIdNotice)) {
                        stringBuffer.append("rid_n=");
                        stringBuffer.append(requestIdNotice);
                        stringBuffer.append(o2.i.c);
                    }
                    stringBuffer.append("cid=" + campaignEx.getId());
                    if (k.a().c()) {
                        k.a().a(stringBuffer.toString());
                    } else {
                        q.b(contextG, stringBuffer.toString());
                    }
                }
            } catch (Throwable th) {
                aa.d(f6798e, th.getMessage());
            }
        }
        return z;
    }
}
