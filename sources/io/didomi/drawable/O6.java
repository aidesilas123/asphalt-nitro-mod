package io.didomi.drawable;

import io.didomi.drawable.J6;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/O6;", "Lio/didomi/sdk/M6;", "Lio/didomi/sdk/Q1;", "binding", "<init>", "(Lio/didomi/sdk/Q1;)V", "Lio/didomi/sdk/J6$k;", "section", "", "a", "(Lio/didomi/sdk/J6$k;)V", "Lio/didomi/sdk/Q1;", "android_release"}, mv = {1, 8, 0})
public final class O6 extends M6 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Q1 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O6(Q1 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    public final void a(J6.Section section) {
        Intrinsics.checkNotNullParameter(section, "section");
        this.binding.getRoot().setText(section.getText());
    }
}
