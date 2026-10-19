package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.r5, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0013\u0010\u0015R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u001a\u0004\b\u0017\u0010\u0015R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0014\u001a\u0004\b\u0016\u0010\u0015R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0014\u001a\u0004\b\u0018\u0010\u0015¨\u0006\u0019"}, d2 = {"Lio/didomi/sdk/r5;", "", "", "", "consentPurposes", "legIntPurposes", "consentVendors", "legIntVendors", "<init>", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Set;", "()Ljava/util/Set;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final /* data */ class RequiredIds {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final Set<String> consentPurposes;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final Set<String> legIntPurposes;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final Set<String> consentVendors;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final Set<String> legIntVendors;

    public RequiredIds() {
        this(null, null, null, null, 15, null);
    }

    public RequiredIds(Set<String> consentPurposes, Set<String> legIntPurposes, Set<String> consentVendors, Set<String> legIntVendors) {
        Intrinsics.checkNotNullParameter(consentPurposes, "consentPurposes");
        Intrinsics.checkNotNullParameter(legIntPurposes, "legIntPurposes");
        Intrinsics.checkNotNullParameter(consentVendors, "consentVendors");
        Intrinsics.checkNotNullParameter(legIntVendors, "legIntVendors");
        this.consentPurposes = consentPurposes;
        this.legIntPurposes = legIntPurposes;
        this.consentVendors = consentVendors;
        this.legIntVendors = legIntVendors;
    }

    public /* synthetic */ RequiredIds(Set set, Set set2, Set set3, Set set4, int i, n nVar) {
        this((i & 1) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 2) != 0 ? SetsKt__SetsKt.emptySet() : set2, (i & 4) != 0 ? SetsKt__SetsKt.emptySet() : set3, (i & 8) != 0 ? SetsKt__SetsKt.emptySet() : set4);
    }

    public final Set<String> a() {
        return this.consentPurposes;
    }

    public final Set<String> b() {
        return this.consentVendors;
    }

    public final Set<String> c() {
        return this.legIntPurposes;
    }

    public final Set<String> d() {
        return this.legIntVendors;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RequiredIds)) {
            return false;
        }
        RequiredIds requiredIds = (RequiredIds) other;
        return Intrinsics.areEqual(this.consentPurposes, requiredIds.consentPurposes) && Intrinsics.areEqual(this.legIntPurposes, requiredIds.legIntPurposes) && Intrinsics.areEqual(this.consentVendors, requiredIds.consentVendors) && Intrinsics.areEqual(this.legIntVendors, requiredIds.legIntVendors);
    }

    public int hashCode() {
        return (((((this.consentPurposes.hashCode() * 31) + this.legIntPurposes.hashCode()) * 31) + this.consentVendors.hashCode()) * 31) + this.legIntVendors.hashCode();
    }

    public String toString() {
        return "RequiredIds(consentPurposes=" + this.consentPurposes + ", legIntPurposes=" + this.legIntPurposes + ", consentVendors=" + this.consentVendors + ", legIntVendors=" + this.legIntVendors + ')';
    }
}
