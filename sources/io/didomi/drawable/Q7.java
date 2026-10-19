package io.didomi.drawable;

import io.didomi.drawable.V7;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/Q7;", "Lio/didomi/sdk/Y7;", "Lio/didomi/sdk/g2;", "binding", "<init>", "(Lio/didomi/sdk/g2;)V", "Lio/didomi/sdk/V7$f;", "deviceStorageDisclosureTitle", "", "a", "(Lio/didomi/sdk/V7$f;)V", "Lio/didomi/sdk/g2;", "android_release"}, mv = {1, 8, 0})
public final class Q7 extends Y7 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final C1769g2 binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q7(C1769g2 binding) {
        super(binding);
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }

    public final void a(V7.DeviceStorageDisclosureTitle deviceStorageDisclosureTitle) {
        Intrinsics.checkNotNullParameter(deviceStorageDisclosureTitle, "deviceStorageDisclosureTitle");
        C1769g2 c1769g2 = this.binding;
        c1769g2.c.setVisibility(deviceStorageDisclosureTitle.getHasDivider() ? 0 : 8);
        c1769g2.b.setText(deviceStorageDisclosureTitle.getText());
    }
}
