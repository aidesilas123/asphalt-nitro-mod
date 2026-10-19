package io.didomi.drawable;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 (2\u00020\u0001:\u0001\fB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ%\u0010\f\u001a\u00020\u0011*\u00020\u000e2\b\b\u0001\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0012J\u001d\u0010\f\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010'\u001a\u00020 8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&¨\u0006)"}, d2 = {"Lio/didomi/sdk/A5;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "duration", "a", "(Ljava/lang/String;)Ljava/lang/String;", "Landroid/widget/TextView;", "color", "radius", "", "(Landroid/widget/TextView;II)V", "label", "(Ljava/lang/String;Ljava/lang/String;)V", "Lio/didomi/sdk/A2;", "Lio/didomi/sdk/A2;", "binding", "Lio/didomi/sdk/v3;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/v3;", "getLanguagesHelper", "()Lio/didomi/sdk/v3;", "setLanguagesHelper", "(Lio/didomi/sdk/v3;)V", "languagesHelper", "Lio/didomi/sdk/z8;", "c", "Lio/didomi/sdk/z8;", "getThemeProvider", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class A5 extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final A2 binding;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1920v3 languagesHelper;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A5(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        A2 a2A = A2.a(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(a2A, "inflate(LayoutInflater.from(context), this, true)");
        this.binding = a2A;
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
    }

    public /* synthetic */ A5(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final String a(String duration) {
        return C1920v3.a(getLanguagesHelper(), "sdk_storage_max_duration", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{duration}", duration)), null, 10, null);
    }

    private final void a(TextView textView, @ColorRes int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(i2 * textView.getResources().getDisplayMetrics().density);
        gradientDrawable.setColor(ContextCompat.getColor(textView.getContext(), i));
        textView.setBackground(gradientDrawable);
    }

    public final void a(String label, String duration) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(duration, "duration");
        TextView populate$lambda$0 = this.binding.b;
        Intrinsics.checkNotNullExpressionValue(populate$lambda$0, "populate$lambda$0");
        C1955y8.a(populate$lambda$0, getThemeProvider().i().n());
        populate$lambda$0.setText("•");
        TextView populate$lambda$1 = this.binding.f8175d;
        Intrinsics.checkNotNullExpressionValue(populate$lambda$1, "populate$lambda$1");
        C1955y8.a(populate$lambda$1, getThemeProvider().i().n());
        populate$lambda$1.setText(label);
        TextView populate$lambda$4 = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(populate$lambda$4, "populate$lambda$4");
        a(populate$lambda$4, R.color.didomi_retention_time_background, 4);
        C1955y8.a(populate$lambda$4, TextTheme.a(getThemeProvider().i().c(), null, ViewCompat.MEASURED_STATE_MASK, null, 5, null));
        SpannableString spannableString = new SpannableString(a(duration));
        int length = spannableString.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (Character.isDigit(spannableString.charAt(i))) {
                break;
            } else {
                i++;
            }
        }
        spannableString.setSpan(new StyleSpan(1), 0, i - 1, 33);
        populate$lambda$4.setText(spannableString);
    }

    public final C1920v3 getLanguagesHelper() {
        C1920v3 c1920v3 = this.languagesHelper;
        if (c1920v3 != null) {
            return c1920v3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("languagesHelper");
        return null;
    }

    public final C1965z8 getThemeProvider() {
        C1965z8 c1965z8 = this.themeProvider;
        if (c1965z8 != null) {
            return c1965z8;
        }
        Intrinsics.throwUninitializedPropertyAccessException("themeProvider");
        return null;
    }

    public final void setLanguagesHelper(C1920v3 c1920v3) {
        Intrinsics.checkNotNullParameter(c1920v3, "<set-?>");
        this.languagesHelper = c1920v3;
    }

    public final void setThemeProvider(C1965z8 c1965z8) {
        Intrinsics.checkNotNullParameter(c1965z8, "<set-?>");
        this.themeProvider = c1965z8;
    }
}
