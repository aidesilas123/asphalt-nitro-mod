package io.didomi.drawable;

import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u000b\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\"\u0010\u0015\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0011\u001a\u0004\b\u000b\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/g9;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lio/didomi/sdk/z8;", "themeProvider", "Landroidx/viewbinding/ViewBinding;", "binding", "<init>", "(Lio/didomi/sdk/z8;Landroidx/viewbinding/ViewBinding;)V", "Lio/didomi/sdk/U8;", "data", "", "a", "(Lio/didomi/sdk/U8;)V", "Lio/didomi/sdk/z8;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lio/didomi/sdk/z8;", "", "Z", "()Z", "setPreventListAccessibilityAnnouncement", "(Z)V", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
public abstract class g9 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1965z8 themeProvider;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private boolean preventListAccessibilityAnnouncement;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g9(C1965z8 themeProvider, ViewBinding binding) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.themeProvider = themeProvider;
    }

    @CallSuper
    public final void a(U8 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.preventListAccessibilityAnnouncement = data.getPreventListAccessibilityAnnouncement();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getPreventListAccessibilityAnnouncement() {
        return this.preventListAccessibilityAnnouncement;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    protected final C1965z8 getThemeProvider() {
        return this.themeProvider;
    }
}
