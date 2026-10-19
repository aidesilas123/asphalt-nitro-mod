package com.bytedance.sdk.component.adexpress.dynamic.c;

import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.adexpress.dynamic.c.a;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.facebook.share.internal.ShareConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: LayoutUnitSizeUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class j {
    private static final Set<String> a = Collections.unmodifiableSet(new HashSet(Arrays.asList("dislike", "close", "close-fill", "webview-close")));
    private static String b;

    private static a.c a(a.c cVar, String str, String str2, String str3) {
        if (str.contains("union")) {
            cVar.a = 0.0f;
            cVar.b = 0.0f;
        } else {
            if (TextUtils.isEmpty(str3)) {
                str3 = a(str);
            }
            if (!TextUtils.isEmpty(str3)) {
                return a(str3, str2);
            }
            cVar.a = 0.0f;
            cVar.b = 0.0f;
        }
        return cVar;
    }

    public static a.c a(String str, String str2) {
        return a(str, str2, false);
    }

    public static a.c a(String str, String str2, String str3, boolean z, boolean z2, int i, com.bytedance.sdk.component.adexpress.dynamic.b.h hVar, double d2, int i2, double d3, String str4, m mVar) {
        int i3;
        int i4;
        float fOptDouble;
        float fOptDouble2;
        float fOptDouble3;
        float f2;
        float f3;
        String str5 = str;
        String strD = mVar.d();
        int iG = mVar.g();
        if (com.bytedance.sdk.component.adexpress.d.b() && i2 != 4 && (TextUtils.equals(str2, "text_star") || TextUtils.equals(str2, "score-count") || TextUtils.equals(str2, "score-count-type-1") || TextUtils.equals(str2, "score-count-type-2"))) {
            return new a.c(0.0f, 0.0f);
        }
        a.c cVar = new a.c();
        if (str5.startsWith("<svg") || a.contains(str2)) {
            try {
                if ("close".equals(str2)) {
                    float fOptDouble4 = (float) new JSONObject(str3).optDouble(TtmlNode.ATTR_TTS_FONT_SIZE);
                    cVar.a = fOptDouble4;
                    cVar.b = fOptDouble4;
                    return cVar;
                }
            } catch (Exception unused) {
            }
            cVar.a = 10.0f;
            cVar.b = 10.0f;
            return cVar;
        }
        if ("logo".equals(str2)) {
            if (!com.bytedance.sdk.component.adexpress.d.b() && ((!TextUtils.isEmpty(str) && str5.contains("adx:")) || b())) {
                return b() ? a(cVar, str5, str3, b) : a(cVar, str5, str3, "");
            }
            cVar.a = "union".equals(str5) ? 10.0f : 20.0f;
            cVar.b = 10.0f;
            if (com.bytedance.sdk.component.adexpress.d.b()) {
                String str6 = str2 + str5;
                float fB = (float) b(str3);
                if (str6.contains("logoad")) {
                    return a(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_logo_en"), str3);
                }
                cVar.b = fB;
            }
            return cVar;
        }
        if ("development-name".equals(str2)) {
            str5 = s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_text_privacy_development") + str5;
        }
        if ("app-version".equals(str2)) {
            str5 = s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_text_privacy_app_version") + str5;
        }
        if ("score-count".equals(str2)) {
            try {
                i3 = Integer.parseInt(str5);
            } catch (NumberFormatException unused2) {
                i3 = 0;
            }
            if (com.bytedance.sdk.component.adexpress.d.b() && i3 < 0) {
                return new a.c(0.0f, 0.0f);
            }
            return a("(" + String.format(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_comment_num"), Integer.valueOf(i3)) + ")", str3);
        }
        if ("score-count-type-2".equals(str2)) {
            try {
                i4 = Integer.parseInt(str5);
            } catch (NumberFormatException unused3) {
                i4 = 0;
            }
            if (com.bytedance.sdk.component.adexpress.d.b() && i4 < 0) {
                return new a.c(0.0f, 0.0f);
            }
            return a("(" + String.format(new DecimalFormat("###,###,###").format(i4), Integer.valueOf(i4)) + ")", str3);
        }
        if ("feedback-dislike".equals(str2)) {
            if (!com.bytedance.sdk.component.adexpress.d.b()) {
                return a(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_feedback"), str3);
            }
            a.c cVar2 = new a.c();
            float fB2 = (float) b(str3);
            cVar2.a = fB2;
            cVar2.b = fB2;
            return cVar2;
        }
        if ("skip-with-time-countdown".equals(str2) || TextUtils.equals("skip-with-countdowns-video-countdown", str2)) {
            return (mVar.a() && com.bytedance.sdk.component.adexpress.c.d.b(strD)) ? ((int) (d2 + 0.5d)) - iG < 10 ? a(String.format(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_full_skip"), "0"), str3) : a(String.format(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_full_skip"), "00"), str3) : d2 < 10.0d ? a("0S", str3) : a("00S", str3);
        }
        if (TextUtils.equals("skip-with-countdowns-skip-btn", str2)) {
            return a("| " + s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_screen_skip_tx"), str3);
        }
        if (TextUtils.equals("skip-with-countdowns-skip-countdown", str2)) {
            return a("| " + String.format(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_full_skip_count_down"), "00"), str3);
        }
        if ("skip-with-time-skip-btn".equals(str2)) {
            a.c cVarA = a("| " + s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_screen_skip_tx"), str3);
            if (com.bytedance.sdk.component.adexpress.d.b()) {
                try {
                    cVarA.b = (float) ((((double) cVarA.b) * new JSONObject(str3).optDouble("lineHeight")) / 1.2d);
                } catch (Throwable unused4) {
                }
                cVarA.a = cVarA.b;
            }
            return cVarA;
        }
        if ("skip".equals(str2)) {
            return a(s.a(com.bytedance.sdk.component.adexpress.d.a(), "tt_reward_screen_skip_tx"), str3);
        }
        if ("timedown".equals(str2)) {
            return a("0.0", str3);
        }
        if ("text_star".equals(str2)) {
            return (!com.bytedance.sdk.component.adexpress.d.b() || (d3 >= 0.0d && d3 <= 5.0d)) ? a("0.0", str3) : new a.c(0.0f, 0.0f);
        }
        if (TextUtils.equals("privacy-detail", str2)) {
            return a("Permission list | Privacy policy", str3);
        }
        if ("arrowButton".equals(str2)) {
            return a("Download", str3);
        }
        if ("title".equals(str2)) {
            try {
                return a(str5.replace('\n', ' '), str3, true);
            } catch (Exception unused5) {
            }
        }
        if ("fillButton".equals(str2) || "text".equals(str2) || "button".equals(str2) || "downloadWithIcon".equals(str2) || "downloadButton".equals(str2) || "laceButton".equals(str2) || "cardButton".equals(str2) || "colourMixtureButton".equals(str2) || "arrowButton".equals(str2) || ShareConstants.FEED_SOURCE_PARAM.equals(str2) || TextUtils.equals("app-version", str2) || TextUtils.equals("development-name", str2)) {
            return a(str5, str3);
        }
        try {
            JSONObject jSONObject = new JSONObject(str3);
            int length = str5.length();
            fOptDouble = (float) jSONObject.optDouble(TtmlNode.ATTR_TTS_FONT_SIZE);
            float fOptDouble5 = (float) jSONObject.optDouble("letterSpacing");
            fOptDouble2 = (float) jSONObject.optDouble("lineHeight");
            fOptDouble3 = (float) jSONObject.optDouble("maxWidth");
            f2 = (length * (fOptDouble + fOptDouble5)) - fOptDouble5;
            l.e("DynamicBaseWidget", "getDomSizeFromNative letterSpacing==" + fOptDouble5 + ",lineHeight==" + fOptDouble2 + ",maxWidth ==" + fOptDouble3 + ",totalStrLength" + f2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if ("muted".equals(str2)) {
            cVar.a = fOptDouble;
            cVar.b = fOptDouble;
            return cVar;
        }
        if ("star".equals(str2)) {
            if (com.bytedance.sdk.component.adexpress.d.b() && (d3 < 0.0d || d3 > 5.0d || i2 != 4)) {
                return new a.c(0.0f, 0.0f);
            }
            a.c cVarA2 = a("str", str3);
            cVarA2.a = fOptDouble * 5.0f;
            return cVarA2;
        }
        if ("icon".equals(str2)) {
            cVar.a = fOptDouble;
            cVar.b = fOptDouble;
            return cVar;
        }
        if (z) {
            int i5 = ((int) (f2 / fOptDouble3)) + 1;
            if (z2 && i5 >= i) {
                i5 = i;
            }
            f3 = (float) (((double) (fOptDouble2 * fOptDouble * i5)) * 1.2d);
        } else {
            float f4 = (float) (((double) (fOptDouble2 * fOptDouble)) * 1.2d);
            if (f2 <= fOptDouble3) {
                fOptDouble3 = f2;
            }
            f3 = f4;
        }
        cVar.a = fOptDouble3;
        cVar.b = f3;
        return cVar;
    }

    public static a.c a(String str, String str2, boolean z) {
        a.c cVar = new a.c();
        try {
            JSONObject jSONObject = new JSONObject(str2);
            int[] iArrA = a(str, (float) b(str2), z);
            cVar.a = iArrA[0];
            cVar.b = iArrA[1];
            if (jSONObject.optDouble("lineHeight", 1.0d) == 0.0d) {
                cVar.b = 0.0f;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return cVar;
    }

    public static String a() {
        return b;
    }

    public static String a(String str) {
        String[] strArrSplit;
        return (TextUtils.isEmpty(str) || (strArrSplit = str.split("adx:")) == null || strArrSplit.length < 2) ? "" : strArrSplit[1];
    }

    public static int[] a(String str, float f2, boolean z) {
        int[] iArrB = b(str, f2, z);
        return new int[]{com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), iArrB[0]), com.bytedance.sdk.component.adexpress.c.e.b(com.bytedance.sdk.component.adexpress.d.a(), iArrB[1])};
    }

    public static double b(String str) {
        try {
            return Double.parseDouble(new JSONObject(str).optString(TtmlNode.ATTR_TTS_FONT_SIZE));
        } catch (Throwable unused) {
            return 0.0d;
        }
    }

    public static boolean b() {
        return !TextUtils.isEmpty(b);
    }

    public static int[] b(String str, float f2, boolean z) {
        try {
            TextView textView = new TextView(com.bytedance.sdk.component.adexpress.d.a());
            textView.setTextSize(f2);
            textView.setText(str);
            textView.setIncludeFontPadding(false);
            if (z) {
                textView.setSingleLine();
            }
            textView.measure(-2, -2);
            return new int[]{textView.getMeasuredWidth() + 2, textView.getMeasuredHeight() + 2};
        } catch (Exception unused) {
            return new int[]{0, 0};
        }
    }
}
