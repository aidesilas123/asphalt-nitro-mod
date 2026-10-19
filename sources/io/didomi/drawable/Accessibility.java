package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.a, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u001b\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJT\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\u00062\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\r\u0010\u0016\u001a\u0004\b\u0017\u0010\u0010R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0016\u001a\u0004\b\r\u0010\u0010R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0010R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0019\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010 \u001a\u0004\b\u0018\u0010\u0012R\u0019\u0010\n\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u001a\u0010!\u001a\u0004\b\u001b\u0010\"¨\u0006#"}, d2 = {"Lio/didomi/sdk/a;", "", "", "label", "actionDescription", "stateDescription", "", "announceState", "", "actionId", "collectionItemPosition", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;)V", "a", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;)Lio/didomi/sdk/a;", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "()Z", "setAnnounceState", "(Z)V", "I", "Ljava/lang/Integer;", "()Ljava/lang/Integer;", "android_release"}, mv = {1, 8, 0})
public final /* data */ class Accessibility {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String label;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final String actionDescription;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final String stateDescription;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private boolean announceState;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final int actionId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final Integer collectionItemPosition;

    public Accessibility() {
        this(null, null, null, false, 0, null, 63, null);
    }

    public Accessibility(String str, String str2, String str3, boolean z, int i, Integer num) {
        this.label = str;
        this.actionDescription = str2;
        this.stateDescription = str3;
        this.announceState = z;
        this.actionId = i;
        this.collectionItemPosition = num;
    }

    public /* synthetic */ Accessibility(String str, String str2, String str3, boolean z, int i, Integer num, int i2, n nVar) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? 16 : i, (i2 & 32) != 0 ? null : num);
    }

    public static /* synthetic */ Accessibility a(Accessibility accessibility, String str, String str2, String str3, boolean z, int i, Integer num, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = accessibility.label;
        }
        if ((i2 & 2) != 0) {
            str2 = accessibility.actionDescription;
        }
        String str4 = str2;
        if ((i2 & 4) != 0) {
            str3 = accessibility.stateDescription;
        }
        String str5 = str3;
        if ((i2 & 8) != 0) {
            z = accessibility.announceState;
        }
        boolean z2 = z;
        if ((i2 & 16) != 0) {
            i = accessibility.actionId;
        }
        int i3 = i;
        if ((i2 & 32) != 0) {
            num = accessibility.collectionItemPosition;
        }
        return accessibility.a(str, str4, str5, z2, i3, num);
    }

    public final Accessibility a(String label, String actionDescription, String stateDescription, boolean announceState, int actionId, Integer collectionItemPosition) {
        return new Accessibility(label, actionDescription, stateDescription, announceState, actionId, collectionItemPosition);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getActionDescription() {
        return this.actionDescription;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getActionId() {
        return this.actionId;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final boolean getAnnounceState() {
        return this.announceState;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final Integer getCollectionItemPosition() {
        return this.collectionItemPosition;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Accessibility)) {
            return false;
        }
        Accessibility accessibility = (Accessibility) other;
        return Intrinsics.areEqual(this.label, accessibility.label) && Intrinsics.areEqual(this.actionDescription, accessibility.actionDescription) && Intrinsics.areEqual(this.stateDescription, accessibility.stateDescription) && this.announceState == accessibility.announceState && this.actionId == accessibility.actionId && Intrinsics.areEqual(this.collectionItemPosition, accessibility.collectionItemPosition);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getStateDescription() {
        return this.stateDescription;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v7, types: [int] */
    public int hashCode() {
        String str = this.label;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.actionDescription;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.stateDescription;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        boolean z = this.announceState;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (((iHashCode3 + r2) * 31) + this.actionId) * 31;
        Integer num = this.collectionItemPosition;
        return i + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "Accessibility(label=" + this.label + ", actionDescription=" + this.actionDescription + ", stateDescription=" + this.stateDescription + ", announceState=" + this.announceState + ", actionId=" + this.actionId + ", collectionItemPosition=" + this.collectionItemPosition + ')';
    }
}
