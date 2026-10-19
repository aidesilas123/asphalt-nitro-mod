package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeModule_EventClockFactory implements com.google.android.datatransport.runtime.dagger.internal.b<com.google.android.datatransport.runtime.time.a> {

    private static final class a {
        private static final TimeModule_EventClockFactory a = new TimeModule_EventClockFactory();
    }

    public static TimeModule_EventClockFactory create() {
        return a.a;
    }

    public static com.google.android.datatransport.runtime.time.a eventClock() {
        return (com.google.android.datatransport.runtime.time.a) Preconditions.checkNotNull(b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.google.android.datatransport.runtime.time.a get() {
        return eventClock();
    }
}
