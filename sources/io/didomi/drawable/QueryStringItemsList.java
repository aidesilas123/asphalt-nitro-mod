package io.didomi.drawable;

import com.google.gson.d;
import com.google.gson.r.c;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.e5, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/e5;", "", "Lcom/google/gson/JsonArray;", "enabledList", "disabledList", "<init>", "(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lcom/google/gson/JsonArray;", "getEnabledList", "()Lcom/google/gson/JsonArray;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getDisabledList", "android_release"}, mv = {1, 8, 0})
public final /* data */ class QueryStringItemsList {

    /* JADX INFO: renamed from: a, reason: from toString */
    @c(b4.r)
    private final d enabledList;

    /* JADX INFO: renamed from: b, reason: from toString */
    @c("disabled")
    private final d disabledList;

    public QueryStringItemsList(d enabledList, d disabledList) {
        Intrinsics.checkNotNullParameter(enabledList, "enabledList");
        Intrinsics.checkNotNullParameter(disabledList, "disabledList");
        this.enabledList = enabledList;
        this.disabledList = disabledList;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueryStringItemsList)) {
            return false;
        }
        QueryStringItemsList queryStringItemsList = (QueryStringItemsList) other;
        return Intrinsics.areEqual(this.enabledList, queryStringItemsList.enabledList) && Intrinsics.areEqual(this.disabledList, queryStringItemsList.disabledList);
    }

    public int hashCode() {
        return (this.enabledList.hashCode() * 31) + this.disabledList.hashCode();
    }

    public String toString() {
        return "QueryStringItemsList(enabledList=" + this.enabledList + ", disabledList=" + this.disabledList + ')';
    }
}
