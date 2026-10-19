package io.didomi.drawable;

import com.google.gson.r.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.g5, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/g5;", "", "Lio/didomi/sdk/e5;", "consent", "legInt", "<init>", "(Lio/didomi/sdk/e5;Lio/didomi/sdk/e5;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/e5;", "getConsent", "()Lio/didomi/sdk/e5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getLegInt", "android_release"}, mv = {1, 8, 0})
public final /* data */ class QueryStringStatus {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    @c("consent")
    private final QueryStringItemsList consent;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    @c("legitimate_interest")
    private final QueryStringItemsList legInt;

    public QueryStringStatus(QueryStringItemsList consent, QueryStringItemsList legInt) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        Intrinsics.checkNotNullParameter(legInt, "legInt");
        this.consent = consent;
        this.legInt = legInt;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueryStringStatus)) {
            return false;
        }
        QueryStringStatus queryStringStatus = (QueryStringStatus) other;
        return Intrinsics.areEqual(this.consent, queryStringStatus.consent) && Intrinsics.areEqual(this.legInt, queryStringStatus.legInt);
    }

    public int hashCode() {
        return (this.consent.hashCode() * 31) + this.legInt.hashCode();
    }

    public String toString() {
        return "QueryStringStatus(consent=" + this.consent + ", legInt=" + this.legInt + ')';
    }
}
