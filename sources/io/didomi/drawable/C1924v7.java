package io.didomi.drawable;

import android.widget.TextView;
import io.didomi.drawable.A7;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.v7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/v7;", "Lio/didomi/sdk/C7;", "Lio/didomi/sdk/V1;", "binding", "<init>", "(Lio/didomi/sdk/V1;)V", "Lio/didomi/sdk/A7$a;", "item", "", "a", "(Lio/didomi/sdk/A7$a;)V", "Lio/didomi/sdk/V1;", "android_release"}, mv = {1, 8, 0})
public final class C1924v7 extends C7 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final V1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1924v7(V1 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    public final void a(A7.Description item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.binding.f8408d.setText(item.getTitle());
        TextView textView = this.binding.c;
        textView.setText(item.getDescription());
        String description = item.getDescription();
        textView.setVisibility((description == null || StringsKt__StringsJVMKt.isBlank(description)) ? 8 : 0);
    }
}
