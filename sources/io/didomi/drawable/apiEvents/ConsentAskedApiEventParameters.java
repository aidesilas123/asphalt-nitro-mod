package io.didomi.drawable.apiEvents;

import androidx.annotation.Keep;
import com.google.gson.r.c;
import com.json.o2;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.InterfaceC1786i;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001BQ\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nJ\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\fJ\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\fJ\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\fJ\u0010\u0010\u0010\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0011JZ\u0010\u0012\u001a\u00020\u00002\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0011J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u001d\u001a\u0004\b\u001e\u0010\fR \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u001d\u001a\u0004\b\u001f\u0010\fR \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u001d\u001a\u0004\b \u0010\fR \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001d\u001a\u0004\b!\u0010\fR\u001a\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\"\u001a\u0004\b#\u0010\u0011¨\u0006$"}, d2 = {"Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;", "Lio/didomi/sdk/i;", "", "", "purposeIds", "legIntPurposeIds", "vendorIds", "vendorLegIntIds", o2.h.L, "<init>", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V", "component1", "()Ljava/util/Set;", "component2", "component3", "component4", "component5", "()Ljava/lang/String;", "copy", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Set;", "getPurposeIds", "getLegIntPurposeIds", "getVendorIds", "getVendorLegIntIds", "Ljava/lang/String;", "getPosition", "android_release"}, mv = {1, 8, 0})
public final /* data */ class ConsentAskedApiEventParameters implements InterfaceC1786i {

    @c("purposes_li")
    private final Set<String> legIntPurposeIds;

    @c(o2.h.L)
    private final String position;

    @c(Didomi.VIEW_PURPOSES)
    private final Set<String> purposeIds;

    @c(Didomi.VIEW_VENDORS)
    private final Set<String> vendorIds;

    @c("vendors_li")
    private final Set<String> vendorLegIntIds;

    public ConsentAskedApiEventParameters() {
        this(null, null, null, null, null, 31, null);
    }

    public ConsentAskedApiEventParameters(Set<String> purposeIds, Set<String> legIntPurposeIds, Set<String> vendorIds, Set<String> vendorLegIntIds, String position) {
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(vendorIds, "vendorIds");
        Intrinsics.checkNotNullParameter(vendorLegIntIds, "vendorLegIntIds");
        Intrinsics.checkNotNullParameter(position, "position");
        this.purposeIds = purposeIds;
        this.legIntPurposeIds = legIntPurposeIds;
        this.vendorIds = vendorIds;
        this.vendorLegIntIds = vendorLegIntIds;
        this.position = position;
    }

    public /* synthetic */ ConsentAskedApiEventParameters(Set set, Set set2, Set set3, Set set4, String str, int i, n nVar) {
        this((i & 1) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 2) != 0 ? SetsKt__SetsKt.emptySet() : set2, (i & 4) != 0 ? SetsKt__SetsKt.emptySet() : set3, (i & 8) != 0 ? SetsKt__SetsKt.emptySet() : set4, (i & 16) != 0 ? "" : str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConsentAskedApiEventParameters copy$default(ConsentAskedApiEventParameters consentAskedApiEventParameters, Set set, Set set2, Set set3, Set set4, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            set = consentAskedApiEventParameters.purposeIds;
        }
        if ((i & 2) != 0) {
            set2 = consentAskedApiEventParameters.legIntPurposeIds;
        }
        Set set5 = set2;
        if ((i & 4) != 0) {
            set3 = consentAskedApiEventParameters.vendorIds;
        }
        Set set6 = set3;
        if ((i & 8) != 0) {
            set4 = consentAskedApiEventParameters.vendorLegIntIds;
        }
        Set set7 = set4;
        if ((i & 16) != 0) {
            str = consentAskedApiEventParameters.position;
        }
        return consentAskedApiEventParameters.copy(set, set5, set6, set7, str);
    }

    public final Set<String> component1() {
        return this.purposeIds;
    }

    public final Set<String> component2() {
        return this.legIntPurposeIds;
    }

    public final Set<String> component3() {
        return this.vendorIds;
    }

    public final Set<String> component4() {
        return this.vendorLegIntIds;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getPosition() {
        return this.position;
    }

    public final ConsentAskedApiEventParameters copy(Set<String> purposeIds, Set<String> legIntPurposeIds, Set<String> vendorIds, Set<String> vendorLegIntIds, String position) {
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(vendorIds, "vendorIds");
        Intrinsics.checkNotNullParameter(vendorLegIntIds, "vendorLegIntIds");
        Intrinsics.checkNotNullParameter(position, "position");
        return new ConsentAskedApiEventParameters(purposeIds, legIntPurposeIds, vendorIds, vendorLegIntIds, position);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConsentAskedApiEventParameters)) {
            return false;
        }
        ConsentAskedApiEventParameters consentAskedApiEventParameters = (ConsentAskedApiEventParameters) other;
        return Intrinsics.areEqual(this.purposeIds, consentAskedApiEventParameters.purposeIds) && Intrinsics.areEqual(this.legIntPurposeIds, consentAskedApiEventParameters.legIntPurposeIds) && Intrinsics.areEqual(this.vendorIds, consentAskedApiEventParameters.vendorIds) && Intrinsics.areEqual(this.vendorLegIntIds, consentAskedApiEventParameters.vendorLegIntIds) && Intrinsics.areEqual(this.position, consentAskedApiEventParameters.position);
    }

    public final Set<String> getLegIntPurposeIds() {
        return this.legIntPurposeIds;
    }

    public final String getPosition() {
        return this.position;
    }

    public final Set<String> getPurposeIds() {
        return this.purposeIds;
    }

    public final Set<String> getVendorIds() {
        return this.vendorIds;
    }

    public final Set<String> getVendorLegIntIds() {
        return this.vendorLegIntIds;
    }

    public int hashCode() {
        return (((((((this.purposeIds.hashCode() * 31) + this.legIntPurposeIds.hashCode()) * 31) + this.vendorIds.hashCode()) * 31) + this.vendorLegIntIds.hashCode()) * 31) + this.position.hashCode();
    }

    public String toString() {
        return "ConsentAskedApiEventParameters(purposeIds=" + this.purposeIds + ", legIntPurposeIds=" + this.legIntPurposeIds + ", vendorIds=" + this.vendorIds + ", vendorLegIntIds=" + this.vendorLegIntIds + ", position=" + this.position + ')';
    }
}
