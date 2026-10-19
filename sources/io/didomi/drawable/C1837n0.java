package io.didomi.drawable;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/n0;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lio/didomi/sdk/m0;", "dataCategoryDisplay", "Lio/didomi/sdk/w8;", "theme", "", "a", "(Lio/didomi/sdk/m0;Lio/didomi/sdk/w8;)V", "Lio/didomi/sdk/t2;", "Lio/didomi/sdk/t2;", "binding", "android_release"}, mv = {1, 8, 0})
public final class C1837n0 extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1899t2 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1837n0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        C1899t2 c1899t2A = C1899t2.a(LayoutInflater.from(context), this, true);
        Intrinsics.checkNotNullExpressionValue(c1899t2A, "inflate(LayoutInflater.from(context), this, true)");
        this.binding = c1899t2A;
    }

    public /* synthetic */ C1837n0(Context context, AttributeSet attributeSet, int i, int i2, n nVar) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public final void a(DataCategoryDisplay dataCategoryDisplay, TextTheme theme) {
        Intrinsics.checkNotNullParameter(dataCategoryDisplay, "dataCategoryDisplay");
        Intrinsics.checkNotNullParameter(theme, "theme");
        TextView populate$lambda$0 = this.binding.c;
        Intrinsics.checkNotNullExpressionValue(populate$lambda$0, "populate$lambda$0");
        C1955y8.a(populate$lambda$0, theme);
        populate$lambda$0.setText(dataCategoryDisplay.getTitle());
        TextView populate$lambda$1 = this.binding.b;
        Intrinsics.checkNotNullExpressionValue(populate$lambda$1, "populate$lambda$1");
        C1955y8.a(populate$lambda$1, theme);
        populate$lambda$1.setText(dataCategoryDisplay.getDescription());
    }
}
