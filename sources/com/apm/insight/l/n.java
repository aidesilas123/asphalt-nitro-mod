package com.apm.insight.l;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class n {
    static final a a;

    private static class a {
        private a() {
        }

        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }
    }

    @TargetApi(16)
    private static class b extends a {
        private b() {
            super();
        }

        @Override // com.apm.insight.l.n.a
        public long a(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }
    }

    static {
        a = Build.VERSION.SDK_INT >= 16 ? new b() : new a();
    }

    public static long a(ActivityManager.MemoryInfo memoryInfo) {
        return a.a(memoryInfo);
    }
}
