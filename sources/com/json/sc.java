package com.json;

import android.content.Context;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0007J\u000e\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/ironsource/sc;", "", "Lorg/json/JSONObject;", "tokenData", "a", "Landroid/content/Context;", "context", "", "", "[Ljava/lang/String;", "mTokenKeyList", "Lcom/ironsource/x4;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/x4;", "mGlobalDataReader", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class sc {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final String[] mTokenKeyList = rc.INSTANCE.a();

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final x4 mGlobalDataReader = new x4();

    private final JSONObject b(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectB = y4.b(jSONObject.optJSONObject(v4.r));
        if (jSONObjectB != null) {
            jSONObject.put(v4.r, jSONObjectB);
        }
        return jSONObject;
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObjectA = this.mGlobalDataReader.a(this.mTokenKeyList);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "mGlobalDataReader.getDataByKeys(mTokenKeyList)");
        return b(jSONObjectA);
    }

    public final JSONObject a(Context context) throws JSONException {
        Intrinsics.checkNotNullParameter(context, "context");
        JSONObject jSONObjectA = this.mGlobalDataReader.a(context, this.mTokenKeyList);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "mGlobalDataReader.getDat…s(context, mTokenKeyList)");
        return b(jSONObjectA);
    }
}
