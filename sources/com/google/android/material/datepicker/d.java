package com.google.android.material.datepicker;

import android.os.Build;
import android.text.format.DateUtils;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: compiled from: DateStrings.java */
/* JADX INFO: loaded from: classes3.dex */
class d {
    static Pair<String, String> a(@Nullable Long l, @Nullable Long l2) {
        return b(l, l2, null);
    }

    static Pair<String, String> b(@Nullable Long l, @Nullable Long l2, @Nullable SimpleDateFormat simpleDateFormat) {
        if (l == null && l2 == null) {
            return Pair.create(null, null);
        }
        if (l == null) {
            return Pair.create(null, d(l2.longValue(), simpleDateFormat));
        }
        if (l2 == null) {
            return Pair.create(d(l.longValue(), simpleDateFormat), null);
        }
        Calendar calendarO = n.o();
        Calendar calendarQ = n.q();
        calendarQ.setTimeInMillis(l.longValue());
        Calendar calendarQ2 = n.q();
        calendarQ2.setTimeInMillis(l2.longValue());
        if (simpleDateFormat != null) {
            return Pair.create(simpleDateFormat.format(new Date(l.longValue())), simpleDateFormat.format(new Date(l2.longValue())));
        }
        return calendarQ.get(1) == calendarQ2.get(1) ? calendarQ.get(1) == calendarO.get(1) ? Pair.create(f(l.longValue(), Locale.getDefault()), f(l2.longValue(), Locale.getDefault())) : Pair.create(f(l.longValue(), Locale.getDefault()), k(l2.longValue(), Locale.getDefault())) : Pair.create(k(l.longValue(), Locale.getDefault()), k(l2.longValue(), Locale.getDefault()));
    }

    static String c(long j) {
        return d(j, null);
    }

    static String d(long j, @Nullable SimpleDateFormat simpleDateFormat) {
        Calendar calendarO = n.o();
        Calendar calendarQ = n.q();
        calendarQ.setTimeInMillis(j);
        return simpleDateFormat != null ? simpleDateFormat.format(new Date(j)) : calendarO.get(1) == calendarQ.get(1) ? e(j) : j(j);
    }

    static String e(long j) {
        return f(j, Locale.getDefault());
    }

    static String f(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? n.c(locale).format(new Date(j)) : n.j(locale).format(new Date(j));
    }

    static String g(long j) {
        return h(j, Locale.getDefault());
    }

    static String h(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? n.d(locale).format(new Date(j)) : n.h(locale).format(new Date(j));
    }

    static String i(long j) {
        return DateUtils.formatDateTime(null, j, 8228);
    }

    static String j(long j) {
        return k(j, Locale.getDefault());
    }

    static String k(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? n.s(locale).format(new Date(j)) : n.i(locale).format(new Date(j));
    }

    static String l(long j) {
        return m(j, Locale.getDefault());
    }

    static String m(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? n.t(locale).format(new Date(j)) : n.h(locale).format(new Date(j));
    }
}
