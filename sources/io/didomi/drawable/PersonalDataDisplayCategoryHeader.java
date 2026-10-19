package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.W3;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.X3, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0007R\u001a\u0010\u0018\u001a\u00020\u00138\u0016X\u0096D¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001c\u001a\u00020\u00198\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u001a\u001a\u0004\b\u0010\u0010\u001bR\u001a\u0010 \u001a\u00020\r8\u0016X\u0096D¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u0014\u0010\u001f¨\u0006!"}, d2 = {"Lio/didomi/sdk/X3;", "Lio/didomi/sdk/W3;", "", "descriptionLabel", "<init>", "(Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "J", "getId", "()J", "id", "Lio/didomi/sdk/W3$a;", "Lio/didomi/sdk/W3$a;", "()Lio/didomi/sdk/W3$a;", "type", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "()Z", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public final /* data */ class PersonalDataDisplayCategoryHeader implements W3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String descriptionLabel;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final long id;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final W3.a type;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final boolean preventListAccessibilityAnnouncement;

    public PersonalDataDisplayCategoryHeader(String descriptionLabel) {
        Intrinsics.checkNotNullParameter(descriptionLabel, "descriptionLabel");
        this.descriptionLabel = descriptionLabel;
        this.id = -1L;
        this.type = W3.a.CategoryHeader;
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
    public final String getDescriptionLabel() {
        return this.descriptionLabel;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PersonalDataDisplayCategoryHeader) && Intrinsics.areEqual(this.descriptionLabel, ((PersonalDataDisplayCategoryHeader) other).descriptionLabel);
    }

    @Override // io.didomi.drawable.W3
    public long getId() {
        return this.id;
    }

    public int hashCode() {
        return this.descriptionLabel.hashCode();
    }

    public String toString() {
        return "PersonalDataDisplayCategoryHeader(descriptionLabel=" + this.descriptionLabel + ')';
    }
}
