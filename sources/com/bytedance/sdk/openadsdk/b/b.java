package com.bytedance.sdk.openadsdk.b;

import com.json.d1;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: AdEventConstants.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static final Set<String> a = new HashSet(Arrays.asList(CampaignEx.JSON_NATIVE_VIDEO_CLICK, d1.u, "insight_log"));

    /* JADX INFO: compiled from: AdEventConstants.java */
    public static class a {
        public static int a = 1;
        public static int b = 2;
        public static int c = 100;
    }

    public static boolean a(String str) {
        return "embeded_ad".equals(str) || "banner_ad".equals(str) || "interaction".equals(str) || "slide_banner_ad".equals(str);
    }
}
