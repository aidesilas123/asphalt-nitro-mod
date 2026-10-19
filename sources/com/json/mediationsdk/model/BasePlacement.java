package com.json.mediationsdk.model;

import com.json.na;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016R\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0011\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/ironsource/mediationsdk/model/BasePlacement;", "", "", "id", "", "isPlacementId", "", "toString", "a", "I", "getPlacementId", "()I", o2.i, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "getPlacementName", "()Ljava/lang/String;", "placementName", "c", "Z", "isDefault", "()Z", "Lcom/ironsource/na;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/ironsource/na;", "getPlacementAvailabilitySettings", "()Lcom/ironsource/na;", "placementAvailabilitySettings", "<init>", "(ILjava/lang/String;ZLcom/ironsource/na;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public abstract class BasePlacement {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int placementId;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String placementName;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final boolean isDefault;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final na placementAvailabilitySettings;

    public BasePlacement(int i, String placementName, boolean z, na naVar) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        this.placementId = i;
        this.placementName = placementName;
        this.isDefault = z;
        this.placementAvailabilitySettings = naVar;
    }

    public /* synthetic */ BasePlacement(int i, String str, boolean z, na naVar, int i2, n nVar) {
        this((i2 & 1) != 0 ? 0 : i, str, (i2 & 4) != 0 ? false : z, (i2 & 8) != 0 ? null : naVar);
    }

    public final na getPlacementAvailabilitySettings() {
        return this.placementAvailabilitySettings;
    }

    public final int getPlacementId() {
        return this.placementId;
    }

    public final String getPlacementName() {
        return this.placementName;
    }

    /* JADX INFO: renamed from: isDefault, reason: from getter */
    public final boolean getIsDefault() {
        return this.isDefault;
    }

    public final boolean isPlacementId(int id) {
        return this.placementId == id;
    }

    public String toString() {
        return "placement name: " + this.placementName;
    }
}
