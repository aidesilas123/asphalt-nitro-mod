package com.hyprmx.android.sdk.api.data;

import com.hyprmx.android.sdk.footer.a;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class r {
    public final l a;
    public final s b;

    public static final class a {
        public static r a(String str) {
            s sVar;
            l lVar;
            if (str == null) {
                return new r(new l("This ad is not available based on your response. Tap close or the back key to continue.", "#282828", 18), new s("", "FFFFFF", 16, com.hyprmx.android.sdk.footer.a.f4531g));
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("user_info_form")) {
                    JSONObject json = jSONObject.getJSONObject("user_info_form");
                    Intrinsics.checkNotNullExpressionValue(json, "json.getJSONObject(FIELD_USER_INFO_FORM)");
                    Intrinsics.checkNotNullParameter(json, "json");
                    try {
                        String title = json.optString("title", "");
                        String titleColor = json.optString("title_color", "FFFFFF");
                        int iOptInt = json.optInt("title_size", 16);
                        com.hyprmx.android.sdk.footer.a aVar = com.hyprmx.android.sdk.footer.a.f4531g;
                        com.hyprmx.android.sdk.footer.a aVarA = a.C0285a.a(json.optJSONObject("footer"));
                        Intrinsics.checkNotNullExpressionValue(title, "title");
                        Intrinsics.checkNotNullExpressionValue(titleColor, "titleColor");
                        sVar = new s(title, titleColor, iOptInt, aVarA);
                    } catch (Exception unused) {
                        sVar = new s("", "FFFFFF", 16, com.hyprmx.android.sdk.footer.a.f4531g);
                    }
                } else {
                    sVar = new s("", "FFFFFF", 16, com.hyprmx.android.sdk.footer.a.f4531g);
                }
                if (jSONObject.has("no_ad")) {
                    JSONObject json2 = jSONObject.getJSONObject("no_ad");
                    Intrinsics.checkNotNullExpressionValue(json2, "json.getJSONObject(FIELD_NO_AD)");
                    Intrinsics.checkNotNullParameter(json2, "json");
                    try {
                        String title2 = json2.optString("title", "This ad is not available based on your response. Tap close or the back key to continue.");
                        String titleColor2 = json2.optString("title_color", "#282828");
                        int iOptInt2 = json2.optInt("title_size", 18);
                        Intrinsics.checkNotNullExpressionValue(title2, "title");
                        Intrinsics.checkNotNullExpressionValue(titleColor2, "titleColor");
                        lVar = new l(title2, titleColor2, iOptInt2);
                    } catch (JSONException unused2) {
                        lVar = new l("This ad is not available based on your response. Tap close or the back key to continue.", "#282828", 18);
                    }
                } else {
                    lVar = new l("This ad is not available based on your response. Tap close or the back key to continue.", "#282828", 18);
                }
                return new r(lVar, sVar);
            } catch (JSONException unused3) {
                HyprMXLog.e("Exception parsing UI Components");
                return new r(new l("This ad is not available based on your response. Tap close or the back key to continue.", "#282828", 18), new s("", "FFFFFF", 16, com.hyprmx.android.sdk.footer.a.f4531g));
            }
        }
    }

    public r(l noAd, s userInfoForm) {
        Intrinsics.checkNotNullParameter(noAd, "noAd");
        Intrinsics.checkNotNullParameter(userInfoForm, "userInfoForm");
        this.a = noAd;
        this.b = userInfoForm;
    }
}
