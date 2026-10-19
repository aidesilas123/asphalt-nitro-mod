package io.didomi.drawable;

import androidx.privacysandbox.ads.adservices.adselection.b;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.W3;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.a4, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b \b\u0086\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u000e\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0016HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001a\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\u001c\u0010\"R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010\u0015R\u0017\u0010\n\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b*\u0010(\u001a\u0004\b+\u0010\u0015R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b,\u0010(\u001a\u0004\b#\u0010\u0015R\"\u0010\r\u001a\u00020\f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b%\u0010-\u001a\u0004\b.\u0010/\"\u0004\b\u001c\u00100R \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b)\u00101\u001a\u0004\b*\u00102R \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b+\u00101\u001a\u0004\b,\u00102R\"\u0010\u0011\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b.\u0010$\u001a\u0004\b'\u0010&\"\u0004\b\u001c\u00103R\u001a\u00105\u001a\u00020\u00068\u0016X\u0096D¢\u0006\f\n\u0004\b4\u0010$\u001a\u0004\b \u0010&¨\u00066"}, d2 = {"Lio/didomi/sdk/a4;", "", "", "id", "Lio/didomi/sdk/W3$a;", "type", "", "canShowDetails", "", "dataId", "label", "accessibilityActionDescription", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "accessibilityStateActionDescription", "accessibilityStateDescription", "accessibilityAnnounceState", "<init>", "(JLio/didomi/sdk/W3$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;Z)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "J", "getId", "()J", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/W3$a;", "()Lio/didomi/sdk/W3$a;", "c", "Z", "g", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "h", "e", "i", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "j", "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Ljava/util/List;", "()Ljava/util/List;", "(Z)V", CampaignEx.JSON_KEY_AD_K, "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PersonalDataDisplayItem implements W3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final long id;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final W3.a type;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final boolean canShowDetails;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final String dataId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    private final String label;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    private final String accessibilityActionDescription;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    private DidomiToggle.b state;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
    private final List<String> accessibilityStateActionDescription;

    /* JADX INFO: renamed from: i, reason: from kotlin metadata and from toString */
    private final List<String> accessibilityStateDescription;

    /* JADX INFO: renamed from: j, reason: from kotlin metadata and from toString */
    private boolean accessibilityAnnounceState;

    /* JADX INFO: renamed from: k, reason: from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PersonalDataDisplayItem(long j, W3.a type, boolean z, String dataId, String label, String str, DidomiToggle.b state, List<String> accessibilityStateActionDescription, List<String> accessibilityStateDescription, boolean z2) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(dataId, "dataId");
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(accessibilityStateActionDescription, "accessibilityStateActionDescription");
        Intrinsics.checkNotNullParameter(accessibilityStateDescription, "accessibilityStateDescription");
        this.id = j;
        this.type = type;
        this.canShowDetails = z;
        this.dataId = dataId;
        this.label = label;
        this.accessibilityActionDescription = str;
        this.state = state;
        this.accessibilityStateActionDescription = accessibilityStateActionDescription;
        this.accessibilityStateDescription = accessibilityStateDescription;
        this.accessibilityAnnounceState = z2;
    }

    @Override // io.didomi.drawable.W3
    /* JADX INFO: renamed from: a, reason: from getter */
    public W3.a getType() {
        return this.type;
    }

    public void a(DidomiToggle.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.state = bVar;
    }

    public void a(boolean z) {
        this.accessibilityAnnounceState = z;
    }

    @Override // io.didomi.drawable.W3
    /* JADX INFO: renamed from: b, reason: from getter */
    public boolean getPreventListAccessibilityAnnouncement() {
        return this.preventListAccessibilityAnnouncement;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getAccessibilityActionDescription() {
        return this.accessibilityActionDescription;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public boolean getAccessibilityAnnounceState() {
        return this.accessibilityAnnounceState;
    }

    public List<String> e() {
        return this.accessibilityStateActionDescription;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PersonalDataDisplayItem)) {
            return false;
        }
        PersonalDataDisplayItem personalDataDisplayItem = (PersonalDataDisplayItem) other;
        return this.id == personalDataDisplayItem.id && this.type == personalDataDisplayItem.type && this.canShowDetails == personalDataDisplayItem.canShowDetails && Intrinsics.areEqual(this.dataId, personalDataDisplayItem.dataId) && Intrinsics.areEqual(this.label, personalDataDisplayItem.label) && Intrinsics.areEqual(this.accessibilityActionDescription, personalDataDisplayItem.accessibilityActionDescription) && this.state == personalDataDisplayItem.state && Intrinsics.areEqual(this.accessibilityStateActionDescription, personalDataDisplayItem.accessibilityStateActionDescription) && Intrinsics.areEqual(this.accessibilityStateDescription, personalDataDisplayItem.accessibilityStateDescription) && this.accessibilityAnnounceState == personalDataDisplayItem.accessibilityAnnounceState;
    }

    public List<String> f() {
        return this.accessibilityStateDescription;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getCanShowDetails() {
        return this.canShowDetails;
    }

    @Override // io.didomi.drawable.W3
    public long getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final String getDataId() {
        return this.dataId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    public int hashCode() {
        int iA = ((b.a(this.id) * 31) + this.type.hashCode()) * 31;
        boolean z = this.canShowDetails;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int iHashCode = (((((iA + r1) * 31) + this.dataId.hashCode()) * 31) + this.label.hashCode()) * 31;
        String str = this.accessibilityActionDescription;
        int iHashCode2 = (((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.state.hashCode()) * 31) + this.accessibilityStateActionDescription.hashCode()) * 31) + this.accessibilityStateDescription.hashCode()) * 31;
        boolean z2 = this.accessibilityAnnounceState;
        return iHashCode2 + (z2 ? 1 : z2);
    }

    /* JADX INFO: renamed from: i, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public DidomiToggle.b getState() {
        return this.state;
    }

    public String toString() {
        return "PersonalDataDisplayItem(id=" + this.id + ", type=" + this.type + ", canShowDetails=" + this.canShowDetails + ", dataId=" + this.dataId + ", label=" + this.label + ", accessibilityActionDescription=" + this.accessibilityActionDescription + ", state=" + this.state + ", accessibilityStateActionDescription=" + this.accessibilityStateActionDescription + ", accessibilityStateDescription=" + this.accessibilityStateDescription + ", accessibilityAnnounceState=" + this.accessibilityAnnounceState + ')';
    }
}
