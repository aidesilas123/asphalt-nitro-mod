package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.InterfaceC1931w4;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.y4, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0016\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0011R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001a\u001a\u0004\b\u001d\u0010\u0011R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001e\u001a\u0004\b\u001f\u0010 R\"\u0010\b\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b\u0019\u0010%R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001d\u0010'\u001a\u0004\b*\u0010)R\"\u0010\f\u001a\u00020\u00058\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b(\u0010\u001e\u001a\u0004\b!\u0010 \"\u0004\b\u0019\u0010+R\u0019\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b*\u0010\u001a\u001a\u0004\b&\u0010\u0011R\u001a\u00100\u001a\u00020,8\u0016X\u0096D¢\u0006\f\n\u0004\b\u001f\u0010-\u001a\u0004\b.\u0010/R\u001a\u00104\u001a\u0002018\u0016X\u0096\u0004¢\u0006\f\n\u0004\b#\u00102\u001a\u0004\b\u0019\u00103R\u001a\u00106\u001a\u00020\u00058\u0016X\u0096D¢\u0006\f\n\u0004\b5\u0010\u001e\u001a\u0004\b\u001c\u0010 ¨\u00067"}, d2 = {"Lio/didomi/sdk/y4;", "Lio/didomi/sdk/G4;", "", "label", "accessibilityLabel", "", "shouldHideToggle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "accessibilityStateActionDescription", "accessibilityStateDescription", "accessibilityAnnounceState", "accessibilityAnnounceStateLabel", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, InneractiveMediationDefs.GENDER_FEMALE, "Z", "i", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "j", "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "e", "Ljava/util/List;", "g", "()Ljava/util/List;", "h", "(Z)V", "", "J", "getId", "()J", "id", "Lio/didomi/sdk/w4$a;", "Lio/didomi/sdk/w4$a;", "()Lio/didomi/sdk/w4$a;", "type", CampaignEx.JSON_KEY_AD_K, "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PurposeDisplayBulkAction implements G4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String label;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final String accessibilityLabel;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final boolean shouldHideToggle;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private DidomiToggle.b state;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final List<String> accessibilityStateActionDescription;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final List<String> accessibilityStateDescription;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private boolean accessibilityAnnounceState;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
    private final String accessibilityAnnounceStateLabel;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata */
    private final long id;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata */
    private final InterfaceC1931w4.a type;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PurposeDisplayBulkAction(String label, String str, boolean z, DidomiToggle.b state, List<String> accessibilityStateActionDescription, List<String> accessibilityStateDescription, boolean z2, String str2) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(accessibilityStateActionDescription, "accessibilityStateActionDescription");
        Intrinsics.checkNotNullParameter(accessibilityStateDescription, "accessibilityStateDescription");
        this.label = label;
        this.accessibilityLabel = str;
        this.shouldHideToggle = z;
        this.state = state;
        this.accessibilityStateActionDescription = accessibilityStateActionDescription;
        this.accessibilityStateDescription = accessibilityStateDescription;
        this.accessibilityAnnounceState = z2;
        this.accessibilityAnnounceStateLabel = str2;
        this.id = -3L;
        this.type = InterfaceC1931w4.a.BulkAction;
        this.preventListAccessibilityAnnouncement = true;
    }

    public /* synthetic */ PurposeDisplayBulkAction(String str, String str2, boolean z, DidomiToggle.b bVar, List list, List list2, boolean z2, String str3, int i, n nVar) {
        this(str, str2, (i & 4) != 0 ? false : z, bVar, list, list2, z2, str3);
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    /* JADX INFO: renamed from: a, reason: from getter */
    public InterfaceC1931w4.a getType() {
        return this.type;
    }

    public void a(DidomiToggle.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.state = bVar;
    }

    public void a(boolean z) {
        this.accessibilityAnnounceState = z;
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    /* JADX INFO: renamed from: b, reason: from getter */
    public boolean getPreventListAccessibilityAnnouncement() {
        return this.preventListAccessibilityAnnouncement;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public boolean getAccessibilityAnnounceState() {
        return this.accessibilityAnnounceState;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getAccessibilityAnnounceStateLabel() {
        return this.accessibilityAnnounceStateLabel;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurposeDisplayBulkAction)) {
            return false;
        }
        PurposeDisplayBulkAction purposeDisplayBulkAction = (PurposeDisplayBulkAction) other;
        return Intrinsics.areEqual(this.label, purposeDisplayBulkAction.label) && Intrinsics.areEqual(this.accessibilityLabel, purposeDisplayBulkAction.accessibilityLabel) && this.shouldHideToggle == purposeDisplayBulkAction.shouldHideToggle && this.state == purposeDisplayBulkAction.state && Intrinsics.areEqual(this.accessibilityStateActionDescription, purposeDisplayBulkAction.accessibilityStateActionDescription) && Intrinsics.areEqual(this.accessibilityStateDescription, purposeDisplayBulkAction.accessibilityStateDescription) && this.accessibilityAnnounceState == purposeDisplayBulkAction.accessibilityAnnounceState && Intrinsics.areEqual(this.accessibilityAnnounceStateLabel, purposeDisplayBulkAction.accessibilityAnnounceStateLabel);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getAccessibilityLabel() {
        return this.accessibilityLabel;
    }

    public List<String> g() {
        return this.accessibilityStateActionDescription;
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    public long getId() {
        return this.id;
    }

    public List<String> h() {
        return this.accessibilityStateDescription;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v4, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public int hashCode() {
        int iHashCode = this.label.hashCode() * 31;
        String str = this.accessibilityLabel;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z = this.shouldHideToggle;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int iHashCode3 = (((((((iHashCode2 + r1) * 31) + this.state.hashCode()) * 31) + this.accessibilityStateActionDescription.hashCode()) * 31) + this.accessibilityStateDescription.hashCode()) * 31;
        boolean z2 = this.accessibilityAnnounceState;
        int i = (iHashCode3 + (z2 ? 1 : z2)) * 31;
        String str2 = this.accessibilityAnnounceStateLabel;
        return i + (str2 != null ? str2.hashCode() : 0);
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final boolean getShouldHideToggle() {
        return this.shouldHideToggle;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public DidomiToggle.b getState() {
        return this.state;
    }

    public String toString() {
        return "PurposeDisplayBulkAction(label=" + this.label + ", accessibilityLabel=" + this.accessibilityLabel + ", shouldHideToggle=" + this.shouldHideToggle + ", state=" + this.state + ", accessibilityStateActionDescription=" + this.accessibilityStateActionDescription + ", accessibilityStateDescription=" + this.accessibilityStateDescription + ", accessibilityAnnounceState=" + this.accessibilityAnnounceState + ", accessibilityAnnounceStateLabel=" + this.accessibilityAnnounceStateLabel + ')';
    }
}
