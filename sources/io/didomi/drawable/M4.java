package io.didomi.drawable;

import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1831m4;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 \u00132\u00020\u0001:\u0001\rB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/M4;", "Lio/didomi/sdk/U4;", "Lio/didomi/sdk/w1;", "binding", "Lio/didomi/sdk/m4$a;", "callback", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/w1;Lio/didomi/sdk/m4$a;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/F4;", "data", "", "a", "(Lio/didomi/sdk/F4;)V", "c", "Lio/didomi/sdk/w1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/m4$a;", "e", "android_release"}, mv = {1, 8, 0})
public final class M4 extends U4 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1928w1 binding;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final C1831m4.a callback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M4(C1928w1 binding, C1831m4.a callback, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(callback, "callback");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
        this.callback = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(M4 this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.callback.a();
    }

    public final void a(PurposeDisplaySdkStorageDisclosure data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((InterfaceC1931w4) data);
        AppCompatButton bind$lambda$1 = this.binding.getRoot();
        Intrinsics.checkNotNullExpressionValue(bind$lambda$1, "bind$lambda$1");
        j9.a(bind$lambda$1, data.getLabel(), data.getAccessibilityLabel(), null, false, null, 0, null, null, 252, null);
        C1866q.a(bind$lambda$1, getThemeProvider().i().i());
        bind$lambda$1.setText(data.getLabel());
        bind$lambda$1.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.xb
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                M4.a(this.a, view);
            }
        });
    }
}
