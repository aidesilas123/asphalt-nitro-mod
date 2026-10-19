package io.didomi.drawable;

import com.google.gson.r.c;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.f5, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0011\u001a\u0004\b\u0014\u0010\b¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/f5;", "", "", "type", o2.i.C, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "getType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getDomain", "android_release"}, mv = {1, 8, 0})
public final /* data */ class QueryStringSource {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    @c("type")
    private final String type;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    @c(o2.i.C)
    private final String domain;

    public QueryStringSource(String type, String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.domain = str;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueryStringSource)) {
            return false;
        }
        QueryStringSource queryStringSource = (QueryStringSource) other;
        return Intrinsics.areEqual(this.type, queryStringSource.type) && Intrinsics.areEqual(this.domain, queryStringSource.domain);
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        String str = this.domain;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "QueryStringSource(type=" + this.type + ", domain=" + this.domain + ')';
    }
}
