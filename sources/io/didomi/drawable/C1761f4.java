package io.didomi.drawable;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.f4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/f4;", "", "<init>", "()V", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "", "a", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
public final class C1761f4 {
    public static final C1761f4 a = new C1761f4();

    private C1761f4() {
    }

    public final String a(H configurationRepository, C1920v3 languagesHelper) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        String strI = configurationRepository.b().a().i();
        String strA = C1920v3.a(languagesHelper, configurationRepository.b().f().b().l(), null, 2, null);
        return strA.length() == 0 ? strI : strA;
    }
}
