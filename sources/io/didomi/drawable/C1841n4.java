package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1831m4;
import io.didomi.drawable.PurposeDisplayAdditionalDataProcessing;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.n4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 \u00132\u00020\u0001:\u0001\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/n4;", "Lio/didomi/sdk/U4;", "Lio/didomi/sdk/q1;", "binding", "Lio/didomi/sdk/m4$a;", "callback", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/q1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/x4;", "data", "", "a", "(Lio/didomi/sdk/x4;)V", "c", "Lio/didomi/sdk/q1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/m4$a;", "e", "android_release"}, mv = {1, 8, 0})
public final class C1841n4 extends U4 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1868q1 binding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final C1831m4.a callback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1841n4(C1868q1 binding, C1831m4.a callback, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
        this.callback = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(AppCompatButton this_apply, C1841n4 this$0, PurposeDisplayAdditionalDataProcessing.DataProcessingItem item, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this_apply.setImportantForAccessibility(1);
        this$0.callback.a(item.getDataProcessing());
    }

    public final void a(PurposeDisplayAdditionalDataProcessing data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((InterfaceC1931w4) data);
        TextView bind$lambda$0 = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$0, "bind$lambda$0");
        C1955y8.a(bind$lambda$0, getThemeProvider().i().c());
        bind$lambda$0.setText(data.getSectionDescription());
        if (this.binding.getRoot().getChildCount() > 1) {
            return;
        }
        for (final PurposeDisplayAdditionalDataProcessing.DataProcessingItem dataProcessingItem : data.e()) {
            C1869q2 c1869q2A = C1869q2.a(LayoutInflater.from(this.itemView.getContext()), this.binding.getRoot(), true);
            Intrinsics.checkNotNullExpressionValue(c1869q2A, "inflate(\n               …   true\n                )");
            final AppCompatButton bind$lambda$3$lambda$2 = c1869q2A.getRoot();
            Intrinsics.checkNotNullExpressionValue(bind$lambda$3$lambda$2, "bind$lambda$3$lambda$2");
            C1955y8.a(bind$lambda$3$lambda$2, getThemeProvider().i().i());
            bind$lambda$3$lambda$2.setText(dataProcessingItem.getName());
            bind$lambda$3$lambda$2.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.df
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C1841n4.a(bind$lambda$3$lambda$2, this, dataProcessingItem, view);
                }
            });
            j9.a(bind$lambda$3$lambda$2, null, data.getDataProcessingAccessibilityAction(), null, false, null, 0, null, null, 253, null);
        }
    }
}
