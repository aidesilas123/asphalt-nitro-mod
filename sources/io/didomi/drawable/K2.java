package io.didomi.drawable;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0003\u001a\u00020\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/K2;", "", "Lio/didomi/sdk/M2;", "eventsRepository", "<init>", "(Lio/didomi/sdk/M2;)V", "a", "()Lio/didomi/sdk/M2;", "Lio/didomi/sdk/M2;", "android_release"}, mv = {1, 8, 0})
public class K2 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final M2 eventsRepository;

    public K2(M2 eventsRepository) {
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        this.eventsRepository = eventsRepository;
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public M2 getEventsRepository() {
        return this.eventsRepository;
    }
}
