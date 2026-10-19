package io.didomi.drawable.functionalinterfaces;

import androidx.annotation.Keep;
import io.didomi.drawable.models.CurrentUserStatus;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bç\u0080\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;", "", "onVendorStatusChanged", "", "vendorStatus", "Lio/didomi/sdk/models/CurrentUserStatus$VendorStatus;", "android_release"}, mv = {1, 8, 0}, xi = 48)
public interface DidomiVendorStatusListener {
    void onVendorStatusChanged(CurrentUserStatus.VendorStatus vendorStatus);
}
