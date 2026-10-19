package io.didomi.drawable;

import io.didomi.drawable.J6;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/P6;", "Lio/didomi/sdk/M6;", "Lio/didomi/sdk/R1;", "binding", "<init>", "(Lio/didomi/sdk/R1;)V", "Lio/didomi/sdk/J6$l;", "title", "", "a", "(Lio/didomi/sdk/J6$l;)V", "Lio/didomi/sdk/R1;", "android_release"}, mv = {1, 8, 0})
public final class P6 extends M6 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final R1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P6(R1 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    public final void a(J6.Title title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.binding.b.setText(title.getText());
    }
}
