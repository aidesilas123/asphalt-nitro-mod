package io.didomi.drawable;

import io.didomi.drawable.apiEvents.a;
import io.didomi.drawable.apiEvents.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JI\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\b\b\u0001\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/g;", "", "<init>", "()V", "Lio/didomi/sdk/apiEvents/a;", "apiEventsFactory", "Lio/didomi/sdk/J;", "connectivityHelper", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/Z2;", "httpRequestHelper", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/apiEvents/b;", "a", "(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/CoroutineDispatcher;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;)Lio/didomi/sdk/apiEvents/b;", "android_release"}, mv = {1, 8, 0})
public class C1766g {
    public b a(a apiEventsFactory, J connectivityHelper, Z contextHelper, Z2 httpRequestHelper, CoroutineDispatcher coroutineDispatcher, V8 vendorRepository, H configurationRepository) {
        Intrinsics.checkNotNullParameter(apiEventsFactory, "apiEventsFactory");
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(httpRequestHelper, "httpRequestHelper");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        b bVar = new b(apiEventsFactory, connectivityHelper, contextHelper, httpRequestHelper, vendorRepository.h(), C1816l.d(configurationRepository.b().e()).b(), coroutineDispatcher);
        connectivityHelper.a(bVar);
        return bVar;
    }
}
