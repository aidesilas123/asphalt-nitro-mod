package io.didomi.drawable.purpose.mobile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1820l3;
import io.didomi.drawable.C1955y8;
import io.didomi.drawable.C1959z2;
import io.didomi.drawable.C1965z8;
import io.didomi.drawable.Didomi;
import io.didomi.drawable.j9;
import io.didomi.drawable.k9;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0014¢\u0006\u0004\b\r\u0010\fJ\u001f\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\fJ\r\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\fR.\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010!\u001a\u00020\u001b8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0013\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010)\u001a\u0004\u0018\u00010&8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0016\u0010-\u001a\u0004\u0018\u00010*8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006."}, d2 = {"Lio/didomi/sdk/purpose/mobile/PurposeSaveView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "onFinishInflate", "()V", "onDetachedFromWindow", "", "label", "description", "a", "(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "value", "Ljava/lang/String;", "getDescriptionText", "()Ljava/lang/String;", "setDescriptionText", "(Ljava/lang/String;)V", "descriptionText", "Lio/didomi/sdk/z8;", "Lio/didomi/sdk/z8;", "getThemeProvider", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "Lio/didomi/sdk/z2;", "c", "Lio/didomi/sdk/z2;", "binding", "Landroid/widget/ImageView;", "getLogoImage$android_release", "()Landroid/widget/ImageView;", "logoImage", "Landroid/widget/Button;", "getSaveButton$android_release", "()Landroid/widget/Button;", "saveButton", "android_release"}, mv = {1, 8, 0})
public final class PurposeSaveView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private String descriptionText;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    public C1965z8 themeProvider;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private C1959z2 binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PurposeSaveView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PurposeSaveView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurposeSaveView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        if (isInEditMode()) {
            return;
        }
        Didomi.Companion.getInstance().getComponent$android_release().a(this);
    }

    public /* synthetic */ PurposeSaveView(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final v a(String label, String description) {
        Intrinsics.checkNotNullParameter(label, "label");
        Intrinsics.checkNotNullParameter(description, "description");
        Button saveButton$android_release = getSaveButton$android_release();
        if (saveButton$android_release == null) {
            return null;
        }
        j9.a(saveButton$android_release, label, description, null, false, null, 0, null, null, 252, null);
        return v.a;
    }

    public final void a() {
        TextView textView;
        Button saveButton$android_release = getSaveButton$android_release();
        if (saveButton$android_release != null) {
            k9.a(saveButton$android_release);
        }
        C1959z2 c1959z2 = this.binding;
        if (c1959z2 == null || (textView = c1959z2.f8820d) == null) {
            return;
        }
        textView.setText(this.descriptionText);
        textView.setVisibility(0);
    }

    public final void b() {
        TextView textView;
        Button saveButton$android_release = getSaveButton$android_release();
        if (saveButton$android_release != null) {
            k9.b(saveButton$android_release);
        }
        C1959z2 c1959z2 = this.binding;
        if (c1959z2 == null || (textView = c1959z2.f8820d) == null) {
            return;
        }
        textView.setText((CharSequence) null);
        textView.setVisibility(8);
    }

    public final String getDescriptionText() {
        return this.descriptionText;
    }

    public final ImageView getLogoImage$android_release() {
        C1959z2 c1959z2 = this.binding;
        if (c1959z2 != null) {
            return c1959z2.c;
        }
        return null;
    }

    public final Button getSaveButton$android_release() {
        C1959z2 c1959z2 = this.binding;
        if (c1959z2 != null) {
            return c1959z2.b;
        }
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

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.binding = null;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        TextView textView;
        super.onFinishInflate();
        this.binding = C1959z2.a(LayoutInflater.from(getContext()), this, true);
        if (isInEditMode()) {
            return;
        }
        C1959z2 c1959z2 = this.binding;
        if (c1959z2 != null && (textView = c1959z2.f8820d) != null) {
            C1955y8.a(textView, getThemeProvider().i().d());
        }
        ImageView logoImage$android_release = getLogoImage$android_release();
        if (logoImage$android_release != null) {
            C1820l3.a(logoImage$android_release, getThemeProvider().g());
        }
    }

    public final void setDescriptionText(String str) {
        TextView textView;
        this.descriptionText = str;
        C1959z2 c1959z2 = this.binding;
        if (c1959z2 == null || (textView = c1959z2.f8820d) == null || textView.getVisibility() != 0) {
            return;
        }
        textView.setText(str);
        requestLayout();
    }

    public final void setThemeProvider(C1965z8 c1965z8) {
        Intrinsics.checkNotNullParameter(c1965z8, "<set-?>");
        this.themeProvider = c1965z8;
    }
}
