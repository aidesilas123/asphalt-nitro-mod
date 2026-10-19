package com.google.android.datatransport.runtime.time;

import com.google.android.datatransport.runtime.dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class TimeModule_UptimeClockFactory implements com.google.android.datatransport.runtime.dagger.internal.b<com.google.android.datatransport.runtime.time.a> {

    private static final class a {
        private static final TimeModule_UptimeClockFactory a = new TimeModule_UptimeClockFactory();
    }

    public static TimeModule_UptimeClockFactory create() {
        return a.a;
    }

    public static com.google.android.datatransport.runtime.time.a uptimeClock() {
        return (com.google.android.datatransport.runtime.time.a) Preconditions.checkNotNull(b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.google.android.datatransport.runtime.time.a get() {
        return uptimeClock();
    }
}
