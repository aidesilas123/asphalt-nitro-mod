package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.s4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/s4;", "Lio/didomi/sdk/U4;", "Lio/didomi/sdk/s1;", "binding", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/s1;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/z4;", "data", "", "a", "(Lio/didomi/sdk/z4;)V", "c", "Lio/didomi/sdk/s1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class C1891s4 extends U4 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1888s1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1891s4(C1888s1 binding, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
    }

    public final void a(PurposeDisplayCategoryHeader data) {
        int i;
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((InterfaceC1931w4) data);
        C1888s1 c1888s1 = this.binding;
        TextView bind$lambda$2$lambda$0 = c1888s1.c;
        int i2 = 8;
        if (StringsKt__StringsJVMKt.isBlank(data.getTitleLabel())) {
            i = 8;
        } else {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$2$lambda$0, "bind$lambda$2$lambda$0");
            C1955y8.a(bind$lambda$2$lambda$0, L0.PREFERENCES_TITLE, getThemeProvider());
            bind$lambda$2$lambda$0.setText(data.getTitleLabel());
            i = 0;
        }
        bind$lambda$2$lambda$0.setVisibility(i);
        TextView bind$lambda$2$lambda$1 = c1888s1.b;
        if (!StringsKt__StringsJVMKt.isBlank(data.getDescriptionLabel())) {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$2$lambda$1, "bind$lambda$2$lambda$1");
            C1955y8.a(bind$lambda$2$lambda$1, L0.PREFERENCES_DESCRIPTION, getThemeProvider());
            bind$lambda$2$lambda$1.setText(data.getDescriptionLabel());
            i2 = 0;
        }
        bind$lambda$2$lambda$1.setVisibility(i2);
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView);
    }
}
