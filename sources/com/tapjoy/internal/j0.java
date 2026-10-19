package com.tapjoy.internal;

import java.util.Calendar;

/* JADX INFO: loaded from: classes4.dex */
public abstract class j0 {
    public static int a(Calendar calendar, Calendar calendar2) {
        Calendar calendar3;
        long timeInMillis;
        int iSignum = Integer.signum(calendar.get(1) - calendar2.get(1));
        if (iSignum == -1) {
            calendar3 = (Calendar) calendar2.clone();
            calendar3.set(calendar.get(1), calendar.get(2), calendar.get(5));
            timeInMillis = calendar2.getTimeInMillis();
        } else {
            if (iSignum != 1) {
                return calendar.get(6) - calendar2.get(6);
            }
            calendar3 = (Calendar) calendar.clone();
            calendar3.set(calendar2.get(1), calendar2.get(2), calendar2.get(5));
            timeInMillis = calendar.getTimeInMillis();
        }
        int i = 0;
        while (calendar3.getTimeInMillis() < timeInMillis) {
            calendar3.add(5, 1);
            i++;
        }
        return iSignum > 0 ? i : -i;
    }
}
