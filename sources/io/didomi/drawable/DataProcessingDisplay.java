package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.r0, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\tR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0012\u0010\u0014¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/r0;", "", "", "label", "", "retentionTime", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Integer;", "()Ljava/lang/Integer;", "android_release"}, mv = {1, 8, 0})
public final /* data */ class DataProcessingDisplay {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String label;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final Integer retentionTime;

    public DataProcessingDisplay(String label, Integer num) {
        Intrinsics.checkNotNullParameter(label, "label");
        this.label = label;
        this.retentionTime = num;
    }

    public /* synthetic */ DataProcessingDisplay(String str, Integer num, int i, n nVar) {
        this(str, (i & 2) != 0 ? null : num);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Integer getRetentionTime() {
        return this.retentionTime;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DataProcessingDisplay)) {
            return false;
        }
        DataProcessingDisplay dataProcessingDisplay = (DataProcessingDisplay) other;
        return Intrinsics.areEqual(this.label, dataProcessingDisplay.label) && Intrinsics.areEqual(this.retentionTime, dataProcessingDisplay.retentionTime);
    }

    public int hashCode() {
        int iHashCode = this.label.hashCode() * 31;
        Integer num = this.retentionTime;
        return iHashCode + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "DataProcessingDisplay(label=" + this.label + ", retentionTime=" + this.retentionTime + ')';
    }
}
