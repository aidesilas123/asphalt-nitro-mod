package io.didomi.drawable;

import android.view.View;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/J5;", "Lio/didomi/sdk/P5;", "Lio/didomi/sdk/y1;", "binding", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/y1;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/X3;", "data", "", "a", "(Lio/didomi/sdk/X3;)V", "c", "Lio/didomi/sdk/y1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class J5 extends P5 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1948y1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J5(C1948y1 binding, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
    }

    public final void a(PersonalDataDisplayCategoryHeader data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((W3) data);
        C1948y1 c1948y1 = this.binding;
        TextView textHolderSpiCategoryName = c1948y1.c;
        Intrinsics.checkNotNullExpressionValue(textHolderSpiCategoryName, "textHolderSpiCategoryName");
        int i = 8;
        textHolderSpiCategoryName.setVisibility(8);
        TextView bind$lambda$1$lambda$0 = c1948y1.b;
        if (!StringsKt__StringsJVMKt.isBlank(data.getDescriptionLabel())) {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$1$lambda$0, "bind$lambda$1$lambda$0");
            C1955y8.a(bind$lambda$1$lambda$0, L0.PREFERENCES_DESCRIPTION, getThemeProvider());
            bind$lambda$1$lambda$0.setText(data.getDescriptionLabel());
            i = 0;
        }
        bind$lambda$1$lambda$0.setVisibility(i);
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView);
    }
}
