package io.didomi.drawable;

import android.text.Spanned;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.W3;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.Z3, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\tR\u001a\u0010\u001d\u001a\u00020\u00198\u0016X\u0096D¢\u0006\f\n\u0004\b\u0014\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010!\u001a\u00020\u001e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u001f\u001a\u0004\b\u0012\u0010 R\u001a\u0010%\u001a\u00020\u000f8\u0016X\u0096D¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b\u0016\u0010$¨\u0006&"}, d2 = {"Lio/didomi/sdk/Z3;", "Lio/didomi/sdk/W3;", "Landroid/text/Spanned;", "label", "", "sectionTitle", "<init>", "(Landroid/text/Spanned;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Landroid/text/Spanned;", "c", "()Landroid/text/Spanned;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "J", "getId", "()J", "id", "Lio/didomi/sdk/W3$a;", "Lio/didomi/sdk/W3$a;", "()Lio/didomi/sdk/W3$a;", "type", "e", "Z", "()Z", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PersonalDataDisplayHeader implements W3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final Spanned label;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final String sectionTitle;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final long id;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final W3.a type;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PersonalDataDisplayHeader(Spanned label, String str) {
        Intrinsics.checkNotNullParameter(label, "label");
        this.label = label;
        this.sectionTitle = str;
        this.id = -2L;
        this.type = W3.a.Header;
        this.preventListAccessibilityAnnouncement = true;
    }

    @Override // io.didomi.drawable.W3
    /* JADX INFO: renamed from: a, reason: from getter */
    public W3.a getType() {
        return this.type;
    }

    @Override // io.didomi.drawable.W3
    /* JADX INFO: renamed from: b, reason: from getter */
    public boolean getPreventListAccessibilityAnnouncement() {
        return this.preventListAccessibilityAnnouncement;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final Spanned getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final String getSectionTitle() {
        return this.sectionTitle;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PersonalDataDisplayHeader)) {
            return false;
        }
        PersonalDataDisplayHeader personalDataDisplayHeader = (PersonalDataDisplayHeader) other;
        return Intrinsics.areEqual(this.label, personalDataDisplayHeader.label) && Intrinsics.areEqual(this.sectionTitle, personalDataDisplayHeader.sectionTitle);
    }

    @Override // io.didomi.drawable.W3
    public long getId() {
        return this.id;
    }

    public int hashCode() {
        int iHashCode = this.label.hashCode() * 31;
        String str = this.sectionTitle;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "PersonalDataDisplayHeader(label=" + ((Object) this.label) + ", sectionTitle=" + this.sectionTitle + ')';
    }
}
