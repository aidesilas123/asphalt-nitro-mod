package io.didomi.drawable;

import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/N5;", "Lio/didomi/sdk/P5;", "Lio/didomi/sdk/A1;", "binding", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/A1;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/Z3;", "data", "", "a", "(Lio/didomi/sdk/Z3;)V", "c", "Lio/didomi/sdk/A1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class N5 extends P5 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final A1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N5(A1 binding, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
    }

    public final void a(PersonalDataDisplayHeader data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((W3) data);
        TextView bind$lambda$0 = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$0, "bind$lambda$0");
        L0 l0 = L0.PREFERENCES_DESCRIPTION;
        C1955y8.a(bind$lambda$0, l0, getThemeProvider());
        bind$lambda$0.setMovementMethod(LinkMovementMethod.getInstance());
        bind$lambda$0.setText(T5.a(data.getLabel(), getThemeProvider().i().f()));
        TextView bind$lambda$2 = this.binding.b;
        String sectionTitle = data.getSectionTitle();
        if (sectionTitle == null || StringsKt__StringsJVMKt.isBlank(sectionTitle)) {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$2, "bind$lambda$2");
            bind$lambda$2.setVisibility(8);
        } else {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$2, "bind$lambda$2");
            C1955y8.a(bind$lambda$2, l0, getThemeProvider());
            SpannableString spannableString = new SpannableString(data.getSectionTitle());
            spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            bind$lambda$2.setText(spannableString);
            bind$lambda$2.setVisibility(0);
        }
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView);
    }
}
