package com.json;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\f\u0010\rJ\u0006\u0010\u0003\u001a\u00020\u0002R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, d2 = {"Lcom/ironsource/n;", "", "Lorg/json/JSONObject;", "a", "", "", "Ljava/util/List;", "keys", "Lcom/ironsource/x4;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/ironsource/x4;", "mGlobalDataReader", "<init>", "()V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class n {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final List<String> keys = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{v4.r0, "auid"});

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final x4 mGlobalDataReader = new x4();

    public final JSONObject a() throws JSONException {
        JSONObject jSONObjectA = this.mGlobalDataReader.a(this.keys);
        Intrinsics.checkNotNullExpressionValue(jSONObjectA, "mGlobalDataReader.getDataByKeys(keys)");
        return jSONObjectA;
    }
}
