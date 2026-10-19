package io.didomi.drawable;

import io.didomi.drawable.apiEvents.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J?\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/J3;", "", "<init>", "()V", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/D8;", "uiProvider", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/I3;", "a", "(Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/V;Lio/didomi/sdk/D8;Lio/didomi/sdk/G8;)Lio/didomi/sdk/I3;", "android_release"}, mv = {1, 8, 0})
public class J3 {
    public I3 a(H configurationRepository, M2 eventsRepository, b apiEventsRepository, V consentRepository, D8 uiProvider, G8 userChoicesInfoProvider) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(uiProvider, "uiProvider");
        Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
        return new I3(configurationRepository, eventsRepository, apiEventsRepository, consentRepository, uiProvider, userChoicesInfoProvider);
    }
}
