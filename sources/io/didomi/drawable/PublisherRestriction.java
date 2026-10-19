package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.iabtcf.decoder.v2.RestrictionType;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.k4, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n\u0012\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0016\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001e\u001a\u0004\b\u001a\u0010\u001fR*\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b\u0018\u0010$R*\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010!\u001a\u0004\b \u0010#\"\u0004\b\u0016\u0010$¨\u0006%"}, d2 = {"Lio/didomi/sdk/k4;", "", "", "purposeId", "", "purposeIabId", "", "specialFeature", "Lio/didomi/iabtcf/decoder/v2/RestrictionType;", "restrictionType", "", "vendorIds", "tcStringVendorIds", "<init>", "(Ljava/lang/String;IZLio/didomi/iabtcf/decoder/v2/RestrictionType;Ljava/util/Set;Ljava/util/Set;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "c", "Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Z", "Lio/didomi/iabtcf/decoder/v2/RestrictionType;", "()Lio/didomi/iabtcf/decoder/v2/RestrictionType;", "e", "Ljava/util/Set;", InneractiveMediationDefs.GENDER_FEMALE, "()Ljava/util/Set;", "(Ljava/util/Set;)V", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PublisherRestriction {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String purposeId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final int purposeIabId;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final boolean specialFeature;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final RestrictionType restrictionType;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private Set<String> vendorIds;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private Set<Integer> tcStringVendorIds;

    public PublisherRestriction(String purposeId, int i, boolean z, RestrictionType restrictionType, Set<String> set, Set<Integer> set2) {
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        Intrinsics.checkNotNullParameter(restrictionType, "restrictionType");
        this.purposeId = purposeId;
        this.purposeIabId = i;
        this.specialFeature = z;
        this.restrictionType = restrictionType;
        this.vendorIds = set;
        this.tcStringVendorIds = set2;
    }

    public /* synthetic */ PublisherRestriction(String str, int i, boolean z, RestrictionType restrictionType, Set set, Set set2, int i2, n nVar) {
        this(str, i, z, restrictionType, (i2 & 16) != 0 ? null : set, (i2 & 32) != 0 ? null : set2);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getPurposeIabId() {
        return this.purposeIabId;
    }

    public final void a(Set<Integer> set) {
        this.tcStringVendorIds = set;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getPurposeId() {
        return this.purposeId;
    }

    public final void b(Set<String> set) {
        this.vendorIds = set;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final RestrictionType getRestrictionType() {
        return this.restrictionType;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getSpecialFeature() {
        return this.specialFeature;
    }

    public final Set<Integer> e() {
        return this.tcStringVendorIds;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PublisherRestriction)) {
            return false;
        }
        PublisherRestriction publisherRestriction = (PublisherRestriction) other;
        return Intrinsics.areEqual(this.purposeId, publisherRestriction.purposeId) && this.purposeIabId == publisherRestriction.purposeIabId && this.specialFeature == publisherRestriction.specialFeature && this.restrictionType == publisherRestriction.restrictionType && Intrinsics.areEqual(this.vendorIds, publisherRestriction.vendorIds) && Intrinsics.areEqual(this.tcStringVendorIds, publisherRestriction.tcStringVendorIds);
    }

    public final Set<String> f() {
        return this.vendorIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    public int hashCode() {
        int iHashCode = ((this.purposeId.hashCode() * 31) + this.purposeIabId) * 31;
        boolean z = this.specialFeature;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int iHashCode2 = (((iHashCode + r1) * 31) + this.restrictionType.hashCode()) * 31;
        Set<String> set = this.vendorIds;
        int iHashCode3 = (iHashCode2 + (set == null ? 0 : set.hashCode())) * 31;
        Set<Integer> set2 = this.tcStringVendorIds;
        return iHashCode3 + (set2 != null ? set2.hashCode() : 0);
    }

    public String toString() {
        return "PublisherRestriction(purposeId=" + this.purposeId + ", purposeIabId=" + this.purposeIabId + ", specialFeature=" + this.specialFeature + ", restrictionType=" + this.restrictionType + ", vendorIds=" + this.vendorIds + ", tcStringVendorIds=" + this.tcStringVendorIds + ')';
    }
}
