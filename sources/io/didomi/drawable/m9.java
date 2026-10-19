package io.didomi.drawable;

import com.google.gson.Gson;
import com.google.gson.d;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.consent.model.ConsentToken;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\fJ\u001d\u0010\n\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\rH\u0000¢\u0006\u0004\b\n\u0010\u0010J+\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\u0011\u0010\f¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/m9;", "", "<init>", "()V", "Lio/didomi/sdk/consent/model/ConsentToken;", "consentToken", "", "appId", "userId", "extra", "a", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "strings", "Lcom/google/gson/JsonArray;", "(Ljava/util/Set;)Lcom/google/gson/JsonArray;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
public final class m9 {
    public static final m9 a = new m9();

    private m9() {
    }

    public final d a(Set<String> strings) {
        Intrinsics.checkNotNullParameter(strings, "strings");
        d dVar = new d();
        for (String str : strings) {
            if (new Regex("^[0-9]{1,5}$").e(str)) {
                try {
                    dVar.o(Integer.valueOf(Integer.parseInt(str)));
                } catch (NumberFormatException e2) {
                    Log.e("Invalid vendor id", e2);
                    dVar.r(str);
                }
            }
            dVar.r(str);
        }
        return dVar;
    }

    public final String a(ConsentToken consentToken, String appId, String userId) {
        Intrinsics.checkNotNullParameter(consentToken, "consentToken");
        String strB = b(consentToken, appId, userId);
        try {
            return "didomiConfig.user.externalConsent.value=" + URLEncoder.encode(strB, b4.L);
        } catch (UnsupportedEncodingException e2) {
            Log.e("Unable to URL-encode consent", e2);
            return "didomiConfig.user.externalConsent.value=" + strB;
        }
    }

    public final String a(ConsentToken consentToken, String appId, String userId, String extra) {
        Intrinsics.checkNotNullParameter(consentToken, "consentToken");
        StringBuilder sb = new StringBuilder();
        sb.append("window.didomiOnReady = window.didomiOnReady || [];");
        sb.append("window.didomiOnReady.push(function (Didomi) {");
        sb.append("Didomi.notice.hide();");
        sb.append("Didomi.setUserStatus(");
        sb.append(a.b(consentToken, appId, userId));
        sb.append(");");
        if (extra != null && (!StringsKt__StringsJVMKt.isBlank(extra))) {
            sb.append(extra);
        }
        sb.append("});");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "StringBuilder()\n        …);\")\n        }.toString()");
        return string;
    }

    public final String b(ConsentToken consentToken, String appId, String userId) {
        Intrinsics.checkNotNullParameter(consentToken, "consentToken");
        SimpleDateFormat simpleDateFormatC = C1917v0.a.c();
        d dVarA = a(Y.h(consentToken));
        d dVarA2 = a(Y.d(consentToken));
        d dVarA3 = a(Y.f(consentToken));
        d dVarA4 = a(Y.b(consentToken));
        d dVarA5 = a(Y.i(consentToken));
        d dVarA6 = a(Y.e(consentToken));
        d dVarA7 = a(Y.g(consentToken));
        d dVarA8 = a(Y.c(consentToken));
        String str = simpleDateFormatC.format(consentToken.getCreated());
        Intrinsics.checkNotNullExpressionValue(str, "df.format(consentToken.created)");
        String str2 = simpleDateFormatC.format(consentToken.getUpdated());
        Intrinsics.checkNotNullExpressionValue(str2, "df.format(consentToken.updated)");
        try {
            String json = new Gson().toJson(new QueryStringForWebView(dVarA, dVarA2, dVarA3, dVarA4, dVarA5, dVarA6, dVarA7, dVarA8, userId, str, str2, appId));
            Intrinsics.checkNotNullExpressionValue(json, "{\n            Gson().toJson(queryString)\n        }");
            return json;
        } catch (Exception unused) {
            return "";
        }
    }
}
