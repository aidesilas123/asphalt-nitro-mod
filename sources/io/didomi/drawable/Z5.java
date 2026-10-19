package io.didomi.drawable;

import io.didomi.drawable.apiEvents.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JQ\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\b\b\u0001\u0010\u0013\u001a\u00020\u0012H\u0011¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/Z5;", "", "<init>", "()V", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/Z2;", "httpRequestHelper", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/P3;", "organizationUserRepository", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "Lio/didomi/sdk/c6;", "a", "(Lio/didomi/sdk/H;Lio/didomi/sdk/Z2;Lio/didomi/sdk/V;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P3;Lio/didomi/sdk/P8;Lkotlinx/coroutines/CoroutineDispatcher;)Lio/didomi/sdk/c6;", "android_release"}, mv = {1, 8, 0})
public class Z5 {
    public C1733c6 a(H configurationRepository, Z2 httpRequestHelper, V consentRepository, b apiEventsRepository, M2 eventsRepository, P3 organizationUserRepository, P8 userStatusRepository, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(httpRequestHelper, "httpRequestHelper");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(organizationUserRepository, "organizationUserRepository");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        return new C1733c6(configurationRepository, consentRepository, apiEventsRepository, eventsRepository, httpRequestHelper, organizationUserRepository, userStatusRepository, coroutineDispatcher);
    }
}
