package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.user.sync.model.ResponseConsents;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.O8, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\b\u0018\u0000 (2\u00020\u0001:\u0001\u0019B\u00ad\u0001\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001f\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001f\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u0019\u0010\u001cR\u001f\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001a\u001a\u0004\b\u001f\u0010\u001cR\u001f\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b \u0010\u001a\u001a\u0004\b\u001e\u0010\u001cR\u001f\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001a\u001a\u0004\b!\u0010\u001cR\u001f\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b!\u0010\u001a\u001a\u0004\b\u001d\u0010\u001cR\u001f\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b\"\u0010\u001cR\u001f\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\"\u0010\u001a\u001a\u0004\b \u0010\u001cR\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006¢\u0006\f\n\u0004\b%\u0010'\u001a\u0004\b#\u0010\u0012¨\u0006)"}, d2 = {"Lio/didomi/sdk/O8;", "", "", "", "enabledConsentPurposeIds", "disabledConsentPurposeIds", "enabledLIPurposeIds", "disabledLIPurposeIds", "enabledConsentVendorIds", "disabledConsentVendorIds", "enabledLIVendorIds", "disabledLIVendorIds", "", "sendAPIEvent", "eventAction", "<init>", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Set;", "e", "()Ljava/util/Set;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "g", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, "h", "i", "Z", "j", "()Z", "Ljava/lang/String;", CampaignEx.JSON_KEY_AD_K, "android_release"}, mv = {1, 8, 0})
public final /* data */ class UserStatusParameters {

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final Set<String> enabledConsentPurposeIds;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final Set<String> disabledConsentPurposeIds;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final Set<String> enabledLIPurposeIds;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final Set<String> disabledLIPurposeIds;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final Set<String> enabledConsentVendorIds;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final Set<String> disabledConsentVendorIds;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private final Set<String> enabledLIVendorIds;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
    private final Set<String> disabledLIVendorIds;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata and from toString */
    private final boolean sendAPIEvent;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata and from toString */
    private final String eventAction;

    /* JADX INFO: renamed from: io.didomi.sdk.O8$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/O8$a;", "", "<init>", "()V", "Lio/didomi/sdk/user/sync/model/ResponseConsents;", "syncConsents", "Lio/didomi/sdk/O8;", "a", "(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Lio/didomi/sdk/O8;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final UserStatusParameters a(ResponseConsents syncConsents) {
            if (syncConsents == null) {
                return new UserStatusParameters(null, null, null, null, null, null, null, null, false, null, 1023, null);
            }
            Set<String> setE = C1902t5.e(syncConsents);
            if (setE == null) {
                setE = SetsKt__SetsKt.emptySet();
            }
            Set<String> set = setE;
            Set<String> setA = C1902t5.a(syncConsents);
            if (setA == null) {
                setA = SetsKt__SetsKt.emptySet();
            }
            Set<String> set2 = setA;
            Set<String> setG = C1902t5.g(syncConsents);
            if (setG == null) {
                setG = SetsKt__SetsKt.emptySet();
            }
            Set<String> set3 = setG;
            Set<String> setC = C1902t5.c(syncConsents);
            if (setC == null) {
                setC = SetsKt__SetsKt.emptySet();
            }
            Set<String> set4 = setC;
            Set<String> setF = C1902t5.f(syncConsents);
            if (setF == null) {
                setF = SetsKt__SetsKt.emptySet();
            }
            Set<String> set5 = setF;
            Set<String> setB = C1902t5.b(syncConsents);
            if (setB == null) {
                setB = SetsKt__SetsKt.emptySet();
            }
            Set<String> set6 = setB;
            Set<String> setH = C1902t5.h(syncConsents);
            if (setH == null) {
                setH = SetsKt__SetsKt.emptySet();
            }
            Set<String> set7 = setH;
            Set<String> setD = C1902t5.d(syncConsents);
            if (setD == null) {
                setD = SetsKt__SetsKt.emptySet();
            }
            return new UserStatusParameters(set, set2, set3, set4, set5, set6, set7, setD, false, null, 768, null);
        }
    }

    public UserStatusParameters() {
        this(null, null, null, null, null, null, null, null, false, null, 1023, null);
    }

    public UserStatusParameters(Set<String> set, Set<String> set2, Set<String> set3, Set<String> set4, Set<String> set5, Set<String> set6, Set<String> set7, Set<String> set8, boolean z, String str) {
        this.enabledConsentPurposeIds = set;
        this.disabledConsentPurposeIds = set2;
        this.enabledLIPurposeIds = set3;
        this.disabledLIPurposeIds = set4;
        this.enabledConsentVendorIds = set5;
        this.disabledConsentVendorIds = set6;
        this.enabledLIVendorIds = set7;
        this.disabledLIVendorIds = set8;
        this.sendAPIEvent = z;
        this.eventAction = str;
    }

    public /* synthetic */ UserStatusParameters(Set set, Set set2, Set set3, Set set4, Set set5, Set set6, Set set7, Set set8, boolean z, String str, int i, n nVar) {
        this((i & 1) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 2) != 0 ? SetsKt__SetsKt.emptySet() : set2, (i & 4) != 0 ? SetsKt__SetsKt.emptySet() : set3, (i & 8) != 0 ? SetsKt__SetsKt.emptySet() : set4, (i & 16) != 0 ? SetsKt__SetsKt.emptySet() : set5, (i & 32) != 0 ? SetsKt__SetsKt.emptySet() : set6, (i & 64) != 0 ? SetsKt__SetsKt.emptySet() : set7, (i & 128) != 0 ? SetsKt__SetsKt.emptySet() : set8, (i & 256) != 0 ? false : z, (i & 512) != 0 ? null : str);
    }

    public final Set<String> a() {
        return this.disabledConsentPurposeIds;
    }

    public final Set<String> b() {
        return this.disabledConsentVendorIds;
    }

    public final Set<String> c() {
        return this.disabledLIPurposeIds;
    }

    public final Set<String> d() {
        return this.disabledLIVendorIds;
    }

    public final Set<String> e() {
        return this.enabledConsentPurposeIds;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UserStatusParameters)) {
            return false;
        }
        UserStatusParameters userStatusParameters = (UserStatusParameters) other;
        return Intrinsics.areEqual(this.enabledConsentPurposeIds, userStatusParameters.enabledConsentPurposeIds) && Intrinsics.areEqual(this.disabledConsentPurposeIds, userStatusParameters.disabledConsentPurposeIds) && Intrinsics.areEqual(this.enabledLIPurposeIds, userStatusParameters.enabledLIPurposeIds) && Intrinsics.areEqual(this.disabledLIPurposeIds, userStatusParameters.disabledLIPurposeIds) && Intrinsics.areEqual(this.enabledConsentVendorIds, userStatusParameters.enabledConsentVendorIds) && Intrinsics.areEqual(this.disabledConsentVendorIds, userStatusParameters.disabledConsentVendorIds) && Intrinsics.areEqual(this.enabledLIVendorIds, userStatusParameters.enabledLIVendorIds) && Intrinsics.areEqual(this.disabledLIVendorIds, userStatusParameters.disabledLIVendorIds) && this.sendAPIEvent == userStatusParameters.sendAPIEvent && Intrinsics.areEqual(this.eventAction, userStatusParameters.eventAction);
    }

    public final Set<String> f() {
        return this.enabledConsentVendorIds;
    }

    public final Set<String> g() {
        return this.enabledLIPurposeIds;
    }

    public final Set<String> h() {
        return this.enabledLIVendorIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v22, types: [int] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v32 */
    public int hashCode() {
        Set<String> set = this.enabledConsentPurposeIds;
        int iHashCode = (set == null ? 0 : set.hashCode()) * 31;
        Set<String> set2 = this.disabledConsentPurposeIds;
        int iHashCode2 = (iHashCode + (set2 == null ? 0 : set2.hashCode())) * 31;
        Set<String> set3 = this.enabledLIPurposeIds;
        int iHashCode3 = (iHashCode2 + (set3 == null ? 0 : set3.hashCode())) * 31;
        Set<String> set4 = this.disabledLIPurposeIds;
        int iHashCode4 = (iHashCode3 + (set4 == null ? 0 : set4.hashCode())) * 31;
        Set<String> set5 = this.enabledConsentVendorIds;
        int iHashCode5 = (iHashCode4 + (set5 == null ? 0 : set5.hashCode())) * 31;
        Set<String> set6 = this.disabledConsentVendorIds;
        int iHashCode6 = (iHashCode5 + (set6 == null ? 0 : set6.hashCode())) * 31;
        Set<String> set7 = this.enabledLIVendorIds;
        int iHashCode7 = (iHashCode6 + (set7 == null ? 0 : set7.hashCode())) * 31;
        Set<String> set8 = this.disabledLIVendorIds;
        int iHashCode8 = (iHashCode7 + (set8 == null ? 0 : set8.hashCode())) * 31;
        boolean z = this.sendAPIEvent;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iHashCode8 + r2) * 31;
        String str = this.eventAction;
        return i + (str != null ? str.hashCode() : 0);
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getEventAction() {
        return this.eventAction;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getSendAPIEvent() {
        return this.sendAPIEvent;
    }

    public String toString() {
        return "UserStatusParameters(enabledConsentPurposeIds=" + this.enabledConsentPurposeIds + ", disabledConsentPurposeIds=" + this.disabledConsentPurposeIds + ", enabledLIPurposeIds=" + this.enabledLIPurposeIds + ", disabledLIPurposeIds=" + this.disabledLIPurposeIds + ", enabledConsentVendorIds=" + this.enabledConsentVendorIds + ", disabledConsentVendorIds=" + this.disabledConsentVendorIds + ", enabledLIVendorIds=" + this.enabledLIVendorIds + ", disabledLIVendorIds=" + this.disabledLIVendorIds + ", sendAPIEvent=" + this.sendAPIEvent + ", eventAction=" + this.eventAction + ')';
    }
}
