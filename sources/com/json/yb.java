package com.json;

import com.json.mediationsdk.metadata.a;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ/\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\n\u0010\b\u001a\u0004\u0018\u00010\nH\u0002J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\u0010"}, d2 = {"Lcom/ironsource/yb;", "", "", "eventId", IronSourceConstants.EVENTS_ERROR_CODE, "", "errorReason", "", "a", "(ILjava/lang/Integer;Ljava/lang/String;)V", "Lorg/json/JSONArray;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class yb {
    public static final yb a = new yb();

    private yb() {
    }

    private final JSONArray a() {
        ConcurrentHashMap<String, List<String>> concurrentHashMapD = fc.a.d();
        if (concurrentHashMapD.containsKey(a.f6348f)) {
            return new JSONArray((Collection) concurrentHashMapD.get(a.f6348f));
        }
        return null;
    }

    private final void b(int i, Integer num, String str) throws JSONException {
        fc fcVar = fc.a;
        JSONObject jSONObjectA = fcVar.a(false);
        if (num != null) {
            jSONObjectA.put(IronSourceConstants.EVENTS_ERROR_CODE, num.intValue());
            JSONArray jSONArrayA = a();
            if (jSONArrayA != null) {
                jSONObjectA.put(a.f6348f, jSONArrayA);
            }
        }
        if (str != null) {
            jSONObjectA.put("reason", str);
        }
        fcVar.a(i, jSONObjectA);
    }

    static /* synthetic */ void c(yb ybVar, int i, Integer num, String str, int i2, Object obj) throws JSONException {
        if ((i2 & 2) != 0) {
            num = null;
        }
        if ((i2 & 4) != 0) {
            str = null;
        }
        ybVar.b(i, num, str);
    }

    public final void a(int errorCode) throws JSONException {
        b(72, Integer.valueOf(errorCode), null);
    }

    public final void a(String errorReason) throws JSONException {
        Intrinsics.checkNotNullParameter(errorReason, "errorReason");
        b(74, Integer.valueOf(IronSourceConstants.errorCode_TEST_SUITE_WEB_CONTROLLER_NOT_LOADED), errorReason);
    }

    public final void b() throws JSONException {
        c(this, 70, null, null, 6, null);
    }

    public final void c() throws JSONException {
        c(this, 71, null, null, 6, null);
    }

    public final void d() throws JSONException {
        c(this, 73, null, null, 6, null);
    }
}
