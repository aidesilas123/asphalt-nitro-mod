package io.didomi.drawable.models;

import androidx.annotation.Keep;
import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.r.c;
import com.json.b4;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.Regulation;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001:\u0002./Bw\u0012\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004¢\u0006\u0002\u0010\u000fJ\u0015\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003HÆ\u0003J\u0015\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0004HÆ\u0003J\t\u0010!\u001a\u00020\u0004HÆ\u0003J\t\u0010\"\u001a\u00020\u0004HÆ\u0003J\t\u0010#\u001a\u00020\u0004HÆ\u0003J\t\u0010$\u001a\u00020\u0004HÆ\u0003J\t\u0010%\u001a\u00020\u0004HÆ\u0003J\t\u0010&\u001a\u00020\u0004HÂ\u0003J{\u0010'\u001a\u00020\u00002\u0014\b\u0002\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00032\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u0004HÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020,HÖ\u0001J\t\u0010-\u001a\u00020\u0004HÖ\u0001R\u0016\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0016\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011R\u0016\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\"\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0010\u0010\u000e\u001a\u00020\u00048\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0016\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0011R\"\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0016¨\u00060"}, d2 = {"Lio/didomi/sdk/models/CurrentUserStatus;", "", Didomi.VIEW_PURPOSES, "", "", "Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;", Didomi.VIEW_VENDORS, "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;", "userId", "created", "updated", "consentString", "additionalConsent", "didomiDcs", "regulationString", "(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAdditionalConsent", "()Ljava/lang/String;", "getConsentString", "getCreated", "getDidomiDcs", "getPurposes", "()Ljava/util/Map;", "regulation", "Lio/didomi/sdk/Regulation;", "getRegulation", "()Lio/didomi/sdk/Regulation;", "getUpdated", "getUserId", "getVendors", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "PurposeStatus", "VendorStatus", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final /* data */ class CurrentUserStatus {

    @c("addtl_consent")
    private final String additionalConsent;

    @c("consent_string")
    private final String consentString;

    @c("created")
    private final String created;

    @c("didomi_dcs")
    private final String didomiDcs;

    @c(Didomi.VIEW_PURPOSES)
    private final Map<String, PurposeStatus> purposes;
    private final transient Regulation regulation;

    @c("regulation")
    private final String regulationString;

    @c("updated")
    private final String updated;

    @c("user_id")
    private final String userId;

    @c(Didomi.VIEW_VENDORS)
    private final Map<String, VendorStatus> vendors;

    @Keep
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/models/CurrentUserStatus$PurposeStatus;", "", "id", "", b4.r, "", "(Ljava/lang/String;Z)V", "getEnabled", "()Z", "setEnabled", "(Z)V", "getId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "android_release"}, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class PurposeStatus {

        @c(b4.r)
        private boolean enabled;

        @c("id")
        private final String id;

        public PurposeStatus(String id, boolean z) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.id = id;
            this.enabled = z;
        }

        public /* synthetic */ PurposeStatus(String str, boolean z, int i, n nVar) {
            this(str, (i & 2) != 0 ? false : z);
        }

        public static /* synthetic */ PurposeStatus copy$default(PurposeStatus purposeStatus, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = purposeStatus.id;
            }
            if ((i & 2) != 0) {
                z = purposeStatus.enabled;
            }
            return purposeStatus.copy(str, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        public final PurposeStatus copy(String id, boolean enabled) {
            Intrinsics.checkNotNullParameter(id, "id");
            return new PurposeStatus(id, enabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof PurposeStatus)) {
                return false;
            }
            PurposeStatus purposeStatus = (PurposeStatus) other;
            return Intrinsics.areEqual(this.id, purposeStatus.id) && this.enabled == purposeStatus.enabled;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final String getId() {
            return this.id;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3 */
        public int hashCode() {
            int iHashCode = this.id.hashCode() * 31;
            boolean z = this.enabled;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return iHashCode + r1;
        }

        public final void setEnabled(boolean z) {
            this.enabled = z;
        }

        public String toString() {
            return "PurposeStatus(id=" + this.id + ", enabled=" + this.enabled + ')';
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;", "", "id", "", b4.r, "", "(Ljava/lang/String;Z)V", "getEnabled", "()Z", "setEnabled", "(Z)V", "getId", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "android_release"}, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class VendorStatus {

        @c(b4.r)
        private boolean enabled;

        @c("id")
        private final String id;

        public VendorStatus(String id, boolean z) {
            Intrinsics.checkNotNullParameter(id, "id");
            this.id = id;
            this.enabled = z;
        }

        public /* synthetic */ VendorStatus(String str, boolean z, int i, n nVar) {
            this(str, (i & 2) != 0 ? false : z);
        }

        public static /* synthetic */ VendorStatus copy$default(VendorStatus vendorStatus, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = vendorStatus.id;
            }
            if ((i & 2) != 0) {
                z = vendorStatus.enabled;
            }
            return vendorStatus.copy(str, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        public final VendorStatus copy(String id, boolean enabled) {
            Intrinsics.checkNotNullParameter(id, "id");
            return new VendorStatus(id, enabled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof VendorStatus)) {
                return false;
            }
            VendorStatus vendorStatus = (VendorStatus) other;
            return Intrinsics.areEqual(this.id, vendorStatus.id) && this.enabled == vendorStatus.enabled;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final String getId() {
            return this.id;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3 */
        public int hashCode() {
            int iHashCode = this.id.hashCode() * 31;
            boolean z = this.enabled;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return iHashCode + r1;
        }

        public final void setEnabled(boolean z) {
            this.enabled = z;
        }

        public String toString() {
            return "VendorStatus(id=" + this.id + ", enabled=" + this.enabled + ')';
        }
    }

    public CurrentUserStatus() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public CurrentUserStatus(Map<String, PurposeStatus> purposes, Map<String, VendorStatus> vendors, String userId, String created, String updated, String consentString, String additionalConsent, String didomiDcs, String regulationString) {
        Intrinsics.checkNotNullParameter(purposes, "purposes");
        Intrinsics.checkNotNullParameter(vendors, "vendors");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
        Intrinsics.checkNotNullParameter(consentString, "consentString");
        Intrinsics.checkNotNullParameter(additionalConsent, "additionalConsent");
        Intrinsics.checkNotNullParameter(didomiDcs, "didomiDcs");
        Intrinsics.checkNotNullParameter(regulationString, "regulationString");
        this.purposes = purposes;
        this.vendors = vendors;
        this.userId = userId;
        this.created = created;
        this.updated = updated;
        this.consentString = consentString;
        this.additionalConsent = additionalConsent;
        this.didomiDcs = didomiDcs;
        this.regulationString = regulationString;
        this.regulation = Regulation.INSTANCE.a(regulationString);
    }

    public /* synthetic */ CurrentUserStatus(Map map, Map map2, String str, String str2, String str3, String str4, String str5, String str6, String str7, int i, n nVar) {
        this((i & 1) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 2) != 0 ? MapsKt__MapsKt.emptyMap() : map2, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? "" : str2, (i & 16) != 0 ? "" : str3, (i & 32) != 0 ? "" : str4, (i & 64) != 0 ? "" : str5, (i & 128) == 0 ? str6 : "", (i & 256) != 0 ? Regulation.GDPR.getValue() : str7);
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    private final String getRegulationString() {
        return this.regulationString;
    }

    public final Map<String, PurposeStatus> component1() {
        return this.purposes;
    }

    public final Map<String, VendorStatus> component2() {
        return this.vendors;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getUserId() {
        return this.userId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCreated() {
        return this.created;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUpdated() {
        return this.updated;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getConsentString() {
        return this.consentString;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAdditionalConsent() {
        return this.additionalConsent;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getDidomiDcs() {
        return this.didomiDcs;
    }

    public final CurrentUserStatus copy(Map<String, PurposeStatus> purposes, Map<String, VendorStatus> vendors, String userId, String created, String updated, String consentString, String additionalConsent, String didomiDcs, String regulationString) {
        Intrinsics.checkNotNullParameter(purposes, "purposes");
        Intrinsics.checkNotNullParameter(vendors, "vendors");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
        Intrinsics.checkNotNullParameter(consentString, "consentString");
        Intrinsics.checkNotNullParameter(additionalConsent, "additionalConsent");
        Intrinsics.checkNotNullParameter(didomiDcs, "didomiDcs");
        Intrinsics.checkNotNullParameter(regulationString, "regulationString");
        return new CurrentUserStatus(purposes, vendors, userId, created, updated, consentString, additionalConsent, didomiDcs, regulationString);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CurrentUserStatus)) {
            return false;
        }
        CurrentUserStatus currentUserStatus = (CurrentUserStatus) other;
        return Intrinsics.areEqual(this.purposes, currentUserStatus.purposes) && Intrinsics.areEqual(this.vendors, currentUserStatus.vendors) && Intrinsics.areEqual(this.userId, currentUserStatus.userId) && Intrinsics.areEqual(this.created, currentUserStatus.created) && Intrinsics.areEqual(this.updated, currentUserStatus.updated) && Intrinsics.areEqual(this.consentString, currentUserStatus.consentString) && Intrinsics.areEqual(this.additionalConsent, currentUserStatus.additionalConsent) && Intrinsics.areEqual(this.didomiDcs, currentUserStatus.didomiDcs) && Intrinsics.areEqual(this.regulationString, currentUserStatus.regulationString);
    }

    public final String getAdditionalConsent() {
        return this.additionalConsent;
    }

    public final String getConsentString() {
        return this.consentString;
    }

    public final String getCreated() {
        return this.created;
    }

    public final String getDidomiDcs() {
        return this.didomiDcs;
    }

    public final Map<String, PurposeStatus> getPurposes() {
        return this.purposes;
    }

    public final Regulation getRegulation() {
        return this.regulation;
    }

    public final String getUpdated() {
        return this.updated;
    }

    public final String getUserId() {
        return this.userId;
    }

    public final Map<String, VendorStatus> getVendors() {
        return this.vendors;
    }

    public int hashCode() {
        return (((((((((((((((this.purposes.hashCode() * 31) + this.vendors.hashCode()) * 31) + this.userId.hashCode()) * 31) + this.created.hashCode()) * 31) + this.updated.hashCode()) * 31) + this.consentString.hashCode()) * 31) + this.additionalConsent.hashCode()) * 31) + this.didomiDcs.hashCode()) * 31) + this.regulationString.hashCode();
    }

    public String toString() {
        return "CurrentUserStatus(purposes=" + this.purposes + ", vendors=" + this.vendors + ", userId=" + this.userId + ", created=" + this.created + ", updated=" + this.updated + ", consentString=" + this.consentString + ", additionalConsent=" + this.additionalConsent + ", didomiDcs=" + this.didomiDcs + ", regulationString=" + this.regulationString + ')';
    }
}
