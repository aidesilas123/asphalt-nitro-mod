package io.didomi.drawable;

import android.widget.TextView;
import io.didomi.drawable.A7;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/B7;", "Lio/didomi/sdk/C7;", "Lio/didomi/sdk/Y1;", "binding", "<init>", "(Lio/didomi/sdk/Y1;)V", "Lio/didomi/sdk/A7$d;", "item", "", "a", "(Lio/didomi/sdk/A7$d;)V", "Lio/didomi/sdk/Y1;", "android_release"}, mv = {1, 8, 0})
public final class B7 extends C7 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Y1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B7(Y1 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    public final void a(A7.Title item) {
        Intrinsics.checkNotNullParameter(item, "item");
        Y1 y1 = this.binding;
        y1.f8453d.setText(item.getTitle());
        TextView textCtvVendorAdditionalInfoIabtcfTag = y1.b;
        Intrinsics.checkNotNullExpressionValue(textCtvVendorAdditionalInfoIabtcfTag, "textCtvVendorAdditionalInfoIabtcfTag");
        textCtvVendorAdditionalInfoIabtcfTag.setVisibility(item.getIsIAB() ? 0 : 8);
        y1.c.setText(item.getSubtitle());
    }
}
