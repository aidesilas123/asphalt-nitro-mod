package com.google.android.datatransport.runtime.scheduling.persistence;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import java.io.Closeable;

/* JADX INFO: compiled from: EventStore.java */
/* JADX INFO: loaded from: classes2.dex */
@WorkerThread
public interface j0 extends Closeable {
    void A(Iterable<PersistedEvent> iterable);

    void B(TransportContext transportContext, long j);

    Iterable<TransportContext> C();

    long E(TransportContext transportContext);

    boolean F(TransportContext transportContext);

    void G(Iterable<PersistedEvent> iterable);

    Iterable<PersistedEvent> H(TransportContext transportContext);

    @Nullable
    PersistedEvent O(TransportContext transportContext, EventInternal eventInternal);

    int z();
}
