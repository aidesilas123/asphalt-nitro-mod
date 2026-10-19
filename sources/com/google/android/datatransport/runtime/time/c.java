package com.google.android.datatransport.runtime.time;

import android.os.SystemClock;

/* JADX INFO: compiled from: UptimeClock.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements a {
    @Override // com.google.android.datatransport.runtime.time.a
    public long a() {
        return SystemClock.elapsedRealtime();
    }
}
