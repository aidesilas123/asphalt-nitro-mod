package io.didomi.drawable;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.g4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0011¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\t\u001a\u00020\u000bH\u0011¢\u0006\u0004\b\t\u0010\fJ1\u0010\t\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\u0010\u001a\u00020\u000fH\u0011¢\u0006\u0004\b\t\u0010\u0012¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/g4;", "", "<init>", "()V", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/D8;", "a", "(Lio/didomi/sdk/Z;Lio/didomi/sdk/H;)Lio/didomi/sdk/D8;", "Lio/didomi/sdk/G8;", "()Lio/didomi/sdk/G8;", "Lio/didomi/sdk/i3;", "imageUrlLoader", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "Lio/didomi/sdk/C3;", "(Lio/didomi/sdk/H;Lio/didomi/sdk/Z;Lio/didomi/sdk/i3;Lkotlinx/coroutines/CoroutineDispatcher;)Lio/didomi/sdk/C3;", "android_release"}, mv = {1, 8, 0})
public class C1771g4 {
    public C3 a(H configurationRepository, Z contextHelper, C1790i3 imageUrlLoader, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(imageUrlLoader, "imageUrlLoader");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        return new C3(configurationRepository, contextHelper, imageUrlLoader, coroutineDispatcher);
    }

    public D8 a(Z contextHelper, H configurationRepository) {
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        return contextHelper.g() ? new C1894s7() : new G3(configurationRepository);
    }

    public G8 a() {
        return G8.INSTANCE.a();
    }
}
