package org.greenrobot.eventbus.android;

import android.util.Log;
import java.util.logging.Level;
import org.greenrobot.eventbus.Logger;

/* JADX INFO: compiled from: AndroidLogger.java */
/* JADX INFO: loaded from: classes5.dex */
public class a implements Logger {
    private final String a;

    public a(String str) {
        this.a = str;
    }

    private int c(Level level) {
        int iIntValue = level.intValue();
        if (iIntValue < 800) {
            return iIntValue < 500 ? 2 : 3;
        }
        if (iIntValue < 900) {
            return 4;
        }
        return iIntValue < 1000 ? 5 : 6;
    }

    @Override // org.greenrobot.eventbus.Logger
    public void a(Level level, String str, Throwable th) {
        if (level != Level.OFF) {
            Log.println(c(level), this.a, str + "\n" + Log.getStackTraceString(th));
        }
    }

    @Override // org.greenrobot.eventbus.Logger
    public void b(Level level, String str) {
        if (level != Level.OFF) {
            Log.println(c(level), this.a, str);
        }
    }
}
