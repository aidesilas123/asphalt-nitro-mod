package io.didomi.drawable;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.functionalinterfaces.DidomiVendorStatusListener;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.X8, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000f\b\u0080\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u000bR$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0016\"\u0004\b\u0012\u0010\u0017R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0018\u0010\u001a¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/X8;", "", "", "id", "", b4.r, "Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/Boolean;", "()Ljava/lang/Boolean;", "(Ljava/lang/Boolean;)V", "c", "Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;", "()Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;", "android_release"}, mv = {1, 8, 0})
public final /* data */ class VendorStatusListener {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final String id;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private Boolean enabled;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final DidomiVendorStatusListener listener;

    public VendorStatusListener(String id, Boolean bool, DidomiVendorStatusListener listener) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.id = id;
        this.enabled = bool;
        this.listener = listener;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final Boolean getEnabled() {
        return this.enabled;
    }

    public final void a(Boolean bool) {
        this.enabled = bool;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final DidomiVendorStatusListener getListener() {
        return this.listener;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VendorStatusListener)) {
            return false;
        }
        VendorStatusListener vendorStatusListener = (VendorStatusListener) other;
        return Intrinsics.areEqual(this.id, vendorStatusListener.id) && Intrinsics.areEqual(this.enabled, vendorStatusListener.enabled) && Intrinsics.areEqual(this.listener, vendorStatusListener.listener);
    }

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        Boolean bool = this.enabled;
        return ((iHashCode + (bool == null ? 0 : bool.hashCode())) * 31) + this.listener.hashCode();
    }

    public String toString() {
        return "VendorStatusListener(id=" + this.id + ", enabled=" + this.enabled + ", listener=" + this.listener + ')';
    }
}
