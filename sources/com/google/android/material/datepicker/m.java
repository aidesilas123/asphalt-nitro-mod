package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: compiled from: TimeSource.java */
/* JADX INFO: loaded from: classes3.dex */
class m {
    private static final m a = new m(null, null);

    @Nullable
    private final Long b;

    @Nullable
    private final TimeZone c;

    private m(@Nullable Long l, @Nullable TimeZone timeZone) {
        this.b = l;
        this.c = timeZone;
    }

    static m c() {
        return a;
    }

    Calendar a() {
        return b(this.c);
    }

    Calendar b(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.b;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}
