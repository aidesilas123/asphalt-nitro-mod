package io.didomi.drawable;

import kotlin.Metadata;

/* JADX INFO: renamed from: io.didomi.sdk.c4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\t¨\u0006\n"}, d2 = {"Lio/didomi/sdk/c4;", "", "", "isAndroidTV", "<init>", "(Z)V", "Lio/didomi/sdk/b4;", "a", "()Lio/didomi/sdk/b4;", "Z", "android_release"}, mv = {1, 8, 0})
public final class C1731c4 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final boolean isAndroidTV;

    public C1731c4(boolean z) {
        this.isAndroidTV = z;
    }

    public final InterfaceC1721b4 a() {
        return this.isAndroidTV ? new C1903t6() : new F3();
    }
}
