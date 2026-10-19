package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.InterfaceC1931w4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.z4, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\bR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0012\u001a\u0004\b\u0015\u0010\bR\u001a\u0010\u001b\u001a\u00020\u00168\u0016X\u0096D¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001f\u001a\u00020\u001c8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u001d\u001a\u0004\b\u0011\u0010\u001eR\u001a\u0010\"\u001a\u00020\u000e8\u0016X\u0096D¢\u0006\f\n\u0004\b\u0013\u0010 \u001a\u0004\b\u0014\u0010!¨\u0006#"}, d2 = {"Lio/didomi/sdk/z4;", "Lio/didomi/sdk/w4;", "", "titleLabel", "descriptionLabel", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "c", "J", "getId", "()J", "id", "Lio/didomi/sdk/w4$a;", "Lio/didomi/sdk/w4$a;", "()Lio/didomi/sdk/w4$a;", "type", "Z", "()Z", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PurposeDisplayCategoryHeader implements InterfaceC1931w4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String titleLabel;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final String descriptionLabel;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final long id;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final InterfaceC1931w4.a type;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PurposeDisplayCategoryHeader(String titleLabel, String descriptionLabel) {
        Intrinsics.checkNotNullParameter(titleLabel, "titleLabel");
        Intrinsics.checkNotNullParameter(descriptionLabel, "descriptionLabel");
        this.titleLabel = titleLabel;
        this.descriptionLabel = descriptionLabel;
        this.id = -1L;
        this.type = InterfaceC1931w4.a.CategoryHeader;
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
    public final String getDescriptionLabel() {
        return this.descriptionLabel;
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getTitleLabel() {
        return this.titleLabel;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PurposeDisplayCategoryHeader)) {
            return false;
        }
        PurposeDisplayCategoryHeader purposeDisplayCategoryHeader = (PurposeDisplayCategoryHeader) other;
        return Intrinsics.areEqual(this.titleLabel, purposeDisplayCategoryHeader.titleLabel) && Intrinsics.areEqual(this.descriptionLabel, purposeDisplayCategoryHeader.descriptionLabel);
    }

    @Override // io.didomi.drawable.InterfaceC1931w4
    public long getId() {
        return this.id;
    }

    public int hashCode() {
        return (this.titleLabel.hashCode() * 31) + this.descriptionLabel.hashCode();
    }

    public String toString() {
        return "PurposeDisplayCategoryHeader(titleLabel=" + this.titleLabel + ", descriptionLabel=" + this.descriptionLabel + ')';
    }
}
