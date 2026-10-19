package io.didomi.drawable;

import android.text.Spanned;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatButton;
import io.didomi.drawable.U8;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J#\u0010\r\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lio/didomi/sdk/c9;", "Lio/didomi/sdk/g9;", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/m2;", "binding", "<init>", "(Lio/didomi/sdk/z8;Lio/didomi/sdk/m2;)V", "Lio/didomi/sdk/U8$b;", "header", "Lkotlin/Function0;", "", "userInfoCallback", "a", "(Lio/didomi/sdk/U8$b;Lkotlin/jvm/functions/Function0;)V", "c", "Lio/didomi/sdk/m2;", "android_release"}, mv = {1, 8, 0})
public final class c9 extends g9 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C1829m2 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c9(C1965z8 themeProvider, C1829m2 binding) {
        super(themeProvider, binding);
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function0 userInfoCallback, View view) {
        Intrinsics.checkNotNullParameter(userInfoCallback, "$userInfoCallback");
        userInfoCallback.invoke();
    }

    public final void a(U8.Header header, final Function0<v> userInfoCallback) {
        Intrinsics.checkNotNullParameter(header, "header");
        Intrinsics.checkNotNullParameter(userInfoCallback, "userInfoCallback");
        super.a(header);
        TextView bind$lambda$0 = this.binding.f8698d;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$0, "bind$lambda$0");
        j9.b(bind$lambda$0);
        C1955y8.a(bind$lambda$0, L0.PREFERENCES_TITLE, getThemeProvider());
        bind$lambda$0.setText(header.getTitle());
        CharSequence text = bind$lambda$0.getText();
        bind$lambda$0.setVisibility((text == null || StringsKt__StringsJVMKt.isBlank(text)) ? 8 : 0);
        TextView bind$lambda$1 = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$1, "bind$lambda$1");
        C1955y8.a(bind$lambda$1, L0.PREFERENCES_DESCRIPTION, getThemeProvider());
        Spanned description = header.getDescription();
        bind$lambda$1.setText(description != null ? T5.a(description, getThemeProvider().i().f()) : null);
        CharSequence text2 = bind$lambda$1.getText();
        bind$lambda$1.setVisibility((text2 == null || StringsKt__StringsJVMKt.isBlank(text2)) ? 8 : 0);
        AppCompatButton bind$lambda$3 = this.binding.b;
        Intrinsics.checkNotNullExpressionValue(bind$lambda$3, "bind$lambda$3");
        j9.a(bind$lambda$3, header.getUserInfoButtonAccessibility());
        C1866q.b(bind$lambda$3, getThemeProvider().i().i());
        bind$lambda$3.setOnClickListener(new View.OnClickListener() { // from class: io.didomi.sdk.wd
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                c9.a(userInfoCallback, view);
            }
        });
        bind$lambda$3.setText(header.getUserInfoButtonLabel());
        View itemView = this.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        j9.a(itemView);
    }
}
