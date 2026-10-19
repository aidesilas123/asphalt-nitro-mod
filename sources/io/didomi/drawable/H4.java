package io.didomi.drawable;

import androidx.appcompat.widget.AppCompatButton;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/H4;", "Lio/didomi/sdk/U4;", "Lio/didomi/sdk/t1;", "binding", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/t1;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/A4;", "data", "", "a", "(Lio/didomi/sdk/A4;)V", "c", "Lio/didomi/sdk/t1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class H4 extends U4 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1898t1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H4(C1898t1 binding, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
    }

    public final void a(A4 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((InterfaceC1931w4) data);
        AppCompatButton bind$lambda$0 = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(bind$lambda$0, "bind$lambda$0");
        j9.a(bind$lambda$0, data.getLabel(), data.getLabel(), null, false, null, 0, null, null, 252, null);
        C1866q.b(bind$lambda$0, getThemeProvider().i().i());
        bind$lambda$0.setText(data.getLabel());
    }
}
