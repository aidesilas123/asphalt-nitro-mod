package io.didomi.drawable;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.m5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\u0007\u001a\u00020\tH\u0017¢\u0006\u0004\b\u0007\u0010\nJ'\u0010\u0007\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0007\u0010\u0011J7\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0007\u0010\u0018¨\u0006\u0019"}, d2 = {"Lio/didomi/sdk/m5;", "", "<init>", "()V", "Lio/didomi/sdk/H;", "configuration", "Lio/didomi/sdk/h3;", "a", "(Lio/didomi/sdk/H;)Lio/didomi/sdk/h3;", "Lio/didomi/sdk/E8;", "()Lio/didomi/sdk/E8;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/Z4;", "purposesTranslationsRepository", "Lio/didomi/sdk/V8;", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)Lio/didomi/sdk/V8;", "Landroid/content/Context;", "context", "Lio/didomi/sdk/l5;", "remoteFilesHelper", "Lio/didomi/sdk/Z;", "contextHelper", "(Landroid/content/Context;Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/H;)Lio/didomi/sdk/Z4;", "android_release"}, mv = {1, 8, 0})
public class C1832m5 {
    public UIStateRepository a() {
        return new UIStateRepository(false, 1, null);
    }

    public V8 a(H configurationRepository, C1920v3 languagesHelper, Z4 purposesTranslationsRepository) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(purposesTranslationsRepository, "purposesTranslationsRepository");
        return new V8(configurationRepository, languagesHelper, purposesTranslationsRepository);
    }

    public Z4 a(Context context, C1822l5 remoteFilesHelper, Z contextHelper, C1920v3 languagesHelper, H configurationRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(remoteFilesHelper, "remoteFilesHelper");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Z4 z4 = new Z4(remoteFilesHelper, contextHelper, languagesHelper, configurationRepository);
        z4.d();
        return z4;
    }

    public InterfaceC1780h3 a(H configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return I.i(configuration) ? new C1876r() : I.l(configuration) ? new E3() : !C1816l.b(configuration.b()) ? new C1770g3() : new C1763f6();
    }
}
