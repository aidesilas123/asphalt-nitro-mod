package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.EventInternal;

/* JADX INFO: compiled from: TransportBackend.java */
/* JADX INFO: loaded from: classes2.dex */
public interface h {
    EventInternal a(EventInternal eventInternal);

    BackendResponse b(BackendRequest backendRequest);
}
