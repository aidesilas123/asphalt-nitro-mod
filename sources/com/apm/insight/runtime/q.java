package com.apm.insight.runtime;

import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import com.json.v4;

/* JADX INFO: loaded from: classes.dex */
public class q {
    private static long a = -1;

    public static class a {
        private static long a = -1;

        public static long a() {
            if (q.a == -1) {
                long unused = q.a = 1000 / b();
            }
            return q.a;
        }

        public static long a(long j) {
            long j2 = a;
            if (j2 > 0) {
                return j2;
            }
            int i = Build.VERSION.SDK_INT;
            long jSysconf = i >= 21 ? Os.sysconf(OsConstants._SC_CLK_TCK) : i >= 14 ? a("_SC_CLK_TCK", j) : j;
            if (jSysconf > 0) {
                j = jSysconf;
            }
            a = j;
            return j;
        }

        private static long a(String str, long j) {
            try {
                int i = Class.forName("libcore.io.OsConstants").getField(str).getInt(null);
                Class<?> cls = Class.forName("libcore.io.Libcore");
                Class<?> cls2 = Class.forName("libcore.io.Os");
                return ((Long) cls2.getMethod("sysconf", Integer.TYPE).invoke(cls.getField(v4.x).get(null), Integer.valueOf(i))).longValue();
            } catch (Throwable th) {
                th.printStackTrace();
                return j;
            }
        }

        public static long b() {
            return a(100L);
        }
    }
}
