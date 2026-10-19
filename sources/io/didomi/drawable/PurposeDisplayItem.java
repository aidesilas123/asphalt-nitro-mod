package io.didomi.drawable;

import androidx.privacysandbox.ads.adservices.adselection.b;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.InterfaceC1931w4;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.E4, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b#\b\u0086\b\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013\u0012\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0013\u0012\u0006\u0010\u0016\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u001a\u0010\u001f\u001a\u00020\f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dHÖ\u0003¢\u0006\u0004\b\u001f\u0010 R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b!\u0010'R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010\u001aR\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010\u001cR\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b.\u0010)\u001a\u0004\b(\u0010\u001aR\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b/\u0010)\u001a\u0004\b0\u0010\u001aR\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0017\u0010\u000e\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b5\u00102\u001a\u0004\b6\u00104R\u0017\u0010\u000f\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b*\u0010)\u001a\u0004\b/\u0010\u001aR\u0017\u0010\u0010\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b6\u0010)\u001a\u0004\b+\u0010\u001aR\"\u0010\u0012\u001a\u00020\u00118\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b-\u00107\u001a\u0004\b8\u00109\"\u0004\b!\u0010:R \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u00138\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u0010;\u001a\u0004\b1\u0010<R \u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u00138\u0016X\u0096\u0004¢\u0006\f\n\u0004\b8\u0010;\u001a\u0004\b5\u0010<R\"\u0010\u0016\u001a\u00020\f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b3\u00102\u001a\u0004\b.\u00104\"\u0004\b!\u0010=R\u001a\u0010?\u001a\u00020\f8\u0016X\u0096D¢\u0006\f\n\u0004\b>\u00102\u001a\u0004\b%\u00104¨\u0006@"}, d2 = {"Lio/didomi/sdk/E4;", "Lio/didomi/sdk/G4;", "", "id", "Lio/didomi/sdk/w4$a;", "type", "", "dataId", "", "iconId", "label", "labelEssential", "", "isEssential", "hasTwoStates", "accessibilityLabel", "accessibilityActionDescription", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "accessibilityStateActionDescription", "accessibilityStateDescription", "accessibilityAnnounceState", "<init>", "(JLio/didomi/sdk/w4$a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;Z)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "J", "getId", "()J", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/w4$a;", "()Lio/didomi/sdk/w4$a;", "c", "Ljava/lang/String;", "i", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", CampaignEx.JSON_KEY_AD_K, "e", InneractiveMediationDefs.GENDER_FEMALE, "l", "g", "Z", b4.p, "()Z", "h", "j", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", InneractiveMediationDefs.GENDER_MALE, "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Ljava/util/List;", "()Ljava/util/List;", "(Z)V", "o", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PurposeDisplayItem implements G4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final long id;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final InterfaceC1931w4.a type;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final String dataId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final int iconId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final String label;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final String labelEssential;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private final boolean isEssential;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
    private final boolean hasTwoStates;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata and from toString */
    private final String accessibilityLabel;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata and from toString */
    private final String accessibilityActionDescription;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata and from toString */
    private DidomiToggle.b state;

    /* JADX INFO: renamed from: l, reason: from kotlin metadata and from toString */
    private final List<String> accessibilityStateActionDescription;

    /* JADX INFO: renamed from: m, reason: from kotlin metadata and from toString */
    private final List<String> accessibilityStateDescription;

    /* JADX INFO: renamed from: n, reason: from kotlin metadata and from toString */
    private boolean accessibilityAnnounceState;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PurposeDisplayItem(long j, InterfaceC1931w4.a type, String dataId, int i, String label, String labelEssential, boolean z, boolean z2, String accessibilityLabel, String accessibilityActionDescription, DidomiToggle.b state, List<String> accessibilityStateActionDescription, List<String> accessibilityStateDescription, boolean z3) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(labelEssential, "labelEssential");
        Intrinsics.checkNotNullParameter(accessibilityLabel, "accessibilityLabel");
        Intrinsics.checkNotNullParameter(accessibilityActionDescription, "accessibilityActionDescription");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(accessibilityStateActionDescription, "accessibilityStateActionDescription");
        Intrinsics.checkNotNullParameter(accessibilityStateDescription, "accessibilityStateDescription");
        this.id = j;
        this.type = type;
        this.dataId = dataId;
        this.iconId = i;
        this.label = label;
        this.labelEssential = labelEssential;
        this.isEssential = z;
        this.hasTwoStates = z2;
        this.accessibilityLabel = accessibilityLabel;
        this.accessibilityActionDescription = accessibilityActionDescription;
        this.state = state;
        this.accessibilityStateActionDescription = accessibilityStateActionDescription;
        this.accessibilityStateDescription = accessibilityStateDescription;
        this.accessibilityAnnounceState = z3;
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
    public final String getAccessibilityActionDescription() {
        return this.accessibilityActionDescription;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public boolean getAccessibilityAnnounceState() {
        return this.accessibilityAnnounceState;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurposeDisplayItem)) {
            return false;
        }
        PurposeDisplayItem purposeDisplayItem = (PurposeDisplayItem) other;
        return this.id == purposeDisplayItem.id && this.type == purposeDisplayItem.type && Intrinsics.areEqual(this.dataId, purposeDisplayItem.dataId) && this.iconId == purposeDisplayItem.iconId && Intrinsics.areEqual(this.label, purposeDisplayItem.label) && Intrinsics.areEqual(this.labelEssential, purposeDisplayItem.labelEssential) && this.isEssential == purposeDisplayItem.isEssential && this.hasTwoStates == purposeDisplayItem.hasTwoStates && Intrinsics.areEqual(this.accessibilityLabel, purposeDisplayItem.accessibilityLabel) && Intrinsics.areEqual(this.accessibilityActionDescription, purposeDisplayItem.accessibilityActionDescription) && this.state == purposeDisplayItem.state && Intrinsics.areEqual(this.accessibilityStateActionDescription, purposeDisplayItem.accessibilityStateActionDescription) && Intrinsics.areEqual(this.accessibilityStateDescription, purposeDisplayItem.accessibilityStateDescription) && this.accessibilityAnnounceState == purposeDisplayItem.accessibilityAnnounceState;
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
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iA = ((((((((((b.a(this.id) * 31) + this.type.hashCode()) * 31) + this.dataId.hashCode()) * 31) + this.iconId) * 31) + this.label.hashCode()) * 31) + this.labelEssential.hashCode()) * 31;
        boolean z = this.isEssential;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iA + r1) * 31;
        boolean z2 = this.hasTwoStates;
        ?? r12 = z2;
        if (z2) {
            r12 = 1;
        }
        int iHashCode = (((((((((((i + r12) * 31) + this.accessibilityLabel.hashCode()) * 31) + this.accessibilityActionDescription.hashCode()) * 31) + this.state.hashCode()) * 31) + this.accessibilityStateActionDescription.hashCode()) * 31) + this.accessibilityStateDescription.hashCode()) * 31;
        boolean z3 = this.accessibilityAnnounceState;
        return iHashCode + (z3 ? 1 : z3);
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getDataId() {
        return this.dataId;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final boolean getHasTwoStates() {
        return this.hasTwoStates;
    }

    /* JADX INFO: renamed from: k, reason: from getter */
    public final int getIconId() {
        return this.iconId;
    }

    /* JADX INFO: renamed from: l, reason: from getter */
    public final String getLabelEssential() {
        return this.labelEssential;
    }

    /* JADX INFO: renamed from: m, reason: from getter */
    public DidomiToggle.b getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final boolean getIsEssential() {
        return this.isEssential;
    }

    public String toString() {
        return "PurposeDisplayItem(id=" + this.id + ", type=" + this.type + ", dataId=" + this.dataId + ", iconId=" + this.iconId + ", label=" + this.label + ", labelEssential=" + this.labelEssential + ", isEssential=" + this.isEssential + ", hasTwoStates=" + this.hasTwoStates + ", accessibilityLabel=" + this.accessibilityLabel + ", accessibilityActionDescription=" + this.accessibilityActionDescription + ", state=" + this.state + ", accessibilityStateActionDescription=" + this.accessibilityStateActionDescription + ", accessibilityStateDescription=" + this.accessibilityStateDescription + ", accessibilityAnnounceState=" + this.accessibilityAnnounceState + ')';
    }
}
