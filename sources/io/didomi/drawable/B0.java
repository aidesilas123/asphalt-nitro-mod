package io.didomi.drawable;

import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/B0;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lio/didomi/sdk/p1;", "binding", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/p1;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/y0;", "item", "", "a", "(Lio/didomi/sdk/y0;)V", "Lio/didomi/sdk/p1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/z8;", "android_release"}, mv = {1, 8, 0})
public final class B0 extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1858p1 binding;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final C1965z8 themeProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B0(C1858p1 binding, C1965z8 themeProvider) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
        this.themeProvider = themeProvider;
    }

    public final void a(DeviceStorageDisclosureItem item) {
        Intrinsics.checkNotNullParameter(item, "item");
        TextView bind$lambda$0 = this.binding.f8731d;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$0, "bind$lambda$0");
        C1955y8.a(bind$lambda$0, this.themeProvider.i().c());
        bind$lambda$0.setText(item.getTitle());
        TextView bind$lambda$1 = this.binding.b;
        if (StringsKt__StringsJVMKt.isBlank(item.getDescription())) {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$1, "bind$lambda$1");
            bind$lambda$1.setVisibility(8);
        } else {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$1, "bind$lambda$1");
            C1955y8.a(bind$lambda$1, this.themeProvider.i().d());
            bind$lambda$1.setText(item.getDescription());
            bind$lambda$1.setVisibility(0);
        }
        AppCompatImageView appCompatImageView = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(appCompatImageView, "binding.disclosureItemDetailIndicator");
        C1820l3.a(appCompatImageView, this.themeProvider.j());
    }
}
