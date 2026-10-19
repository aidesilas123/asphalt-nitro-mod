package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.InterfaceC1931w4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.F4, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\bR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0012\u001a\u0004\b\u0015\u0010\bR\u001a\u0010\u001a\u001a\u00020\u00168\u0016X\u0096D¢\u0006\f\n\u0004\b\u0013\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001e\u001a\u00020\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u001c\u001a\u0004\b\u0011\u0010\u001dR\u001a\u0010\"\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u0014\u0010!¨\u0006#"}, d2 = {"Lio/didomi/sdk/F4;", "Lio/didomi/sdk/w4;", "", "label", "accessibilityLabel", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "J", "getId", "()J", "id", "Lio/didomi/sdk/w4$a;", "Lio/didomi/sdk/w4$a;", "()Lio/didomi/sdk/w4$a;", "type", "e", "Z", "()Z", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PurposeDisplaySdkStorageDisclosure implements InterfaceC1931w4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String label;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final String accessibilityLabel;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final long id;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final InterfaceC1931w4.a type;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PurposeDisplaySdkStorageDisclosure(String label, String str) {
        Intrinsics.checkNotNullParameter(label, "label");
        this.label = label;
        this.accessibilityLabel = str;
        this.id = -7L;
        this.type = InterfaceC1931w4.a.SdkStorageDisclosure;
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

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getAccessibilityLabel() {
        return this.accessibilityLabel;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurposeDisplaySdkStorageDisclosure)) {
            return false;
        }
        PurposeDisplaySdkStorageDisclosure purposeDisplaySdkStorageDisclosure = (PurposeDisplaySdkStorageDisclosure) other;
        return Intrinsics.areEqual(this.label, purposeDisplaySdkStorageDisclosure.label) && Intrinsics.areEqual(this.accessibilityLabel, purposeDisplaySdkStorageDisclosure.accessibilityLabel);
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    public long getId() {
        return this.id;
    }

    public int hashCode() {
        int iHashCode = this.label.hashCode() * 31;
        String str = this.accessibilityLabel;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "PurposeDisplaySdkStorageDisclosure(label=" + this.label + ", accessibilityLabel=" + this.accessibilityLabel + ')';
    }
}
