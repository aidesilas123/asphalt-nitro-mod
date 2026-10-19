package io.didomi.drawable;

import android.text.Spanned;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.InterfaceC1931w4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.D4, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u001b\u001a\u0004\b\u001d\u0010\u000bR\u001a\u0010\"\u001a\u00020\u001e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u001c\u0010\u001f\u001a\u0004\b \u0010!R\u001a\u0010&\u001a\u00020#8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010$\u001a\u0004\b\u0014\u0010%R\u001a\u0010)\u001a\u00020\u00118\u0016X\u0096D¢\u0006\f\n\u0004\b\u001d\u0010'\u001a\u0004\b\u0018\u0010(¨\u0006*"}, d2 = {"Lio/didomi/sdk/D4;", "Lio/didomi/sdk/w4;", "Landroid/text/Spanned;", "label", "privacyPolicyLabel", "", "privacyPolicyAccessibilityAction", "privacyPolicyURL", "<init>", "(Landroid/text/Spanned;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Landroid/text/Spanned;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Landroid/text/Spanned;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, InneractiveMediationDefs.GENDER_FEMALE, "c", "Ljava/lang/String;", "e", "g", "", "J", "getId", "()J", "id", "Lio/didomi/sdk/w4$a;", "Lio/didomi/sdk/w4$a;", "()Lio/didomi/sdk/w4$a;", "type", "Z", "()Z", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PurposeDisplayHeader implements InterfaceC1931w4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final Spanned label;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final Spanned privacyPolicyLabel;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final String privacyPolicyAccessibilityAction;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final String privacyPolicyURL;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final long id;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final InterfaceC1931w4.a type;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PurposeDisplayHeader(Spanned label, Spanned spanned, String str, String privacyPolicyURL) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(privacyPolicyURL, "privacyPolicyURL");
        this.label = label;
        this.privacyPolicyLabel = spanned;
        this.privacyPolicyAccessibilityAction = str;
        this.privacyPolicyURL = privacyPolicyURL;
        this.id = -2L;
        this.type = InterfaceC1931w4.a.Header;
        this.preventListAccessibilityAnnouncement = true;
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    /* JADX INFO: renamed from: a, reason: from getter */
    public InterfaceC1931w4.a getType() {
        return this.type;
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    /* JADX INFO: renamed from: b, reason: from getter */
    public boolean getPreventListAccessibilityAnnouncement() {
        return this.preventListAccessibilityAnnouncement;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final Spanned getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getPrivacyPolicyAccessibilityAction() {
        return this.privacyPolicyAccessibilityAction;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurposeDisplayHeader)) {
            return false;
        }
        PurposeDisplayHeader purposeDisplayHeader = (PurposeDisplayHeader) other;
        return Intrinsics.areEqual(this.label, purposeDisplayHeader.label) && Intrinsics.areEqual(this.privacyPolicyLabel, purposeDisplayHeader.privacyPolicyLabel) && Intrinsics.areEqual(this.privacyPolicyAccessibilityAction, purposeDisplayHeader.privacyPolicyAccessibilityAction) && Intrinsics.areEqual(this.privacyPolicyURL, purposeDisplayHeader.privacyPolicyURL);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final Spanned getPrivacyPolicyLabel() {
        return this.privacyPolicyLabel;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final String getPrivacyPolicyURL() {
        return this.privacyPolicyURL;
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    public long getId() {
        return this.id;
    }

    public int hashCode() {
        int iHashCode = this.label.hashCode() * 31;
        Spanned spanned = this.privacyPolicyLabel;
        int iHashCode2 = (iHashCode + (spanned == null ? 0 : spanned.hashCode())) * 31;
        String str = this.privacyPolicyAccessibilityAction;
        return ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + this.privacyPolicyURL.hashCode();
    }

    public String toString() {
        return "PurposeDisplayHeader(label=" + ((Object) this.label) + ", privacyPolicyLabel=" + ((Object) this.privacyPolicyLabel) + ", privacyPolicyAccessibilityAction=" + this.privacyPolicyAccessibilityAction + ", privacyPolicyURL=" + this.privacyPolicyURL + ')';
    }
}
