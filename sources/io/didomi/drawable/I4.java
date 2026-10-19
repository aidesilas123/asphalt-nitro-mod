package io.didomi.drawable;

import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.text.Spannable;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lio/didomi/sdk/I4;", "Lio/didomi/sdk/U4;", "Lio/didomi/sdk/u1;", "binding", "Lio/didomi/sdk/z8;", "themeProvider", "<init>", "(Lio/didomi/sdk/u1;Lio/didomi/sdk/z8;)V", "Lio/didomi/sdk/D4;", "data", "", "a", "(Lio/didomi/sdk/D4;)V", "c", "Lio/didomi/sdk/u1;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class I4 extends U4 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1908u1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I4(C1908u1 binding, C1965z8 themeProvider) {
        super(binding, themeProvider);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        this.binding = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(PurposeDisplayHeader data, I4 this$0, View view) {
        Intrinsics.checkNotNullParameter(data, "$data");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.itemView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(data.getPrivacyPolicyURL())));
    }

    public final void a(final PurposeDisplayHeader data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.a((InterfaceC1931w4) data);
        TextView bind$lambda$0 = this.binding.b;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$0, "bind$lambda$0");
        C1955y8.a(bind$lambda$0, L0.PREFERENCES_DESCRIPTION, getThemeProvider());
        bind$lambda$0.setMovementMethod(LinkMovementMethod.getInstance());
        Spannable spannableA = T5.a(data.getLabel(), getThemeProvider().i().f());
        ColorStateList linkTextColors = bind$lambda$0.getLinkTextColors();
        Intrinsics.checkNotNullExpressionValue(linkTextColors, "linkTextColors");
        bind$lambda$0.setText(T5.a(spannableA, bind$lambda$0, linkTextColors));
        ViewCompat.enableAccessibleClickableSpanSupport(bind$lambda$0);
        AppCompatButton bind$lambda$2 = this.binding.c;
        Spanned privacyPolicyLabel = data.getPrivacyPolicyLabel();
        if (privacyPolicyLabel == null || privacyPolicyLabel.length() == 0) {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$2, "bind$lambda$2");
            bind$lambda$2.setVisibility(8);
        } else {
            Intrinsics.checkNotNullExpressionValue(bind$lambda$2, "bind$lambda$2");
            C1955y8.a(bind$lambda$2, getThemeProvider().i().h());
            Spanned privacyPolicyLabel2 = data.getPrivacyPolicyLabel();
            ColorStateList textColors = bind$lambda$2.getTextColors();
            Intrinsics.checkNotNullExpressionValue(textColors, "textColors");
            bind$lambda$2.setText(T5.a(privacyPolicyLabel2, bind$lambda$2, textColors));
            j9.a(bind$lambda$2, null, data.getPrivacyPolicyAccessibilityAction(), null, false, null, 0, null, null, 253, null);
            bind$lambda$2.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.pa
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    I4.a(data, this, view);
                }
            });
            bind$lambda$2.setVisibility(0);
        }
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView);
    }
}
