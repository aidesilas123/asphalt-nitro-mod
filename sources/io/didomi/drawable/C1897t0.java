package io.didomi.drawable;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.didomi.sdk.t0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 &2\u00020\u0001:\u0001\u000eB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\r*\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u000e\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lio/didomi/sdk/t0;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/widget/TextView;", "color", "radius", "", "a", "(Landroid/widget/TextView;II)V", "Lio/didomi/sdk/r0;", "dataProcessingDisplay", "(Lio/didomi/sdk/r0;)V", "Lio/didomi/sdk/u2;", "Lio/didomi/sdk/u2;", "binding", "Lio/didomi/sdk/v3;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/v3;", "getLanguagesHelper", "()Lio/didomi/sdk/v3;", "setLanguagesHelper", "(Lio/didomi/sdk/v3;)V", "languagesHelper", "Lio/didomi/sdk/z8;", "c", "Lio/didomi/sdk/z8;", "getThemeProvider", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
public final class C1897t0 extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1909u2 binding;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1920v3 languagesHelper;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1897t0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        C1909u2 c1909u2A = C1909u2.a(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(c1909u2A, "inflate(LayoutInflater.from(context), this, true)");
        this.binding = c1909u2A;
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
    }

    public /* synthetic */ C1897t0(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    private final void a(TextView textView, @ColorRes int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(i2 * textView.getResources().getDisplayMetrics().density);
        gradientDrawable.setColor(ContextCompat.getColor(textView.getContext(), i));
        textView.setBackground(gradientDrawable);
    }

    public final void a(DataProcessingDisplay dataProcessingDisplay) {
        Intrinsics.checkNotNullParameter(dataProcessingDisplay, "dataProcessingDisplay");
        ImageView populate$lambda$0 = this.binding.b;
        Intrinsics.checkNotNullExpressionValue(populate$lambda$0, "populate$lambda$0");
        C1820l3.a(populate$lambda$0, getThemeProvider().i().n().getTextColor());
        populate$lambda$0.setPadding(0, this.binding.c.getLineHeight() / 2, 0, 0);
        TextView populate$lambda$1 = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(populate$lambda$1, "populate$lambda$1");
        C1955y8.a(populate$lambda$1, getThemeProvider().i().n());
        populate$lambda$1.setText(StringsKt__StringsKt.trim(dataProcessingDisplay.getLabel()).toString());
        TextView populate$lambda$2 = this.binding.f8762d;
        if (dataProcessingDisplay.getRetentionTime() == null) {
            Intrinsics.checkNotNullExpressionValue(populate$lambda$2, "populate$lambda$2");
            populate$lambda$2.setVisibility(8);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(populate$lambda$2, "populate$lambda$2");
        a(populate$lambda$2, R.color.didomi_retention_time_background, 4);
        C1955y8.a(populate$lambda$2, TextTheme.a(getThemeProvider().i().c(), null, ViewCompat.MEASURED_STATE_MASK, null, 5, null));
        String strA = C1920v3.a(getLanguagesHelper(), "retention_time", null, null, null, 14, null);
        Integer retentionTime = dataProcessingDisplay.getRetentionTime();
        String strA2 = (retentionTime != null && retentionTime.intValue() == 1) ? C1920v3.a(getLanguagesHelper(), "day_singular", null, null, null, 14, null) : C1920v3.a(getLanguagesHelper(), "day_plural", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{nb}", String.valueOf(dataProcessingDisplay.getRetentionTime()))), null, 10, null);
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str = String.format("<b>%s</b> %s", Arrays.copyOf(new Object[]{strA, strA2}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        populate$lambda$2.setText(V5.i(str));
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
