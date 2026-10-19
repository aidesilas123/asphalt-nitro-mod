package com.bytedance.sdk.component.g;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.utils.l;
import com.json.o2;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: PoolTaskStatistics.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static AtomicInteger c = new AtomicInteger(0);
    public static final String[] a = {"com.bytedance.sdk", "com.bykv.vk", "com.ss", "tt_pangle"};
    public static final String[] b = {"tt_pangle", "bd_tracker"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f1073d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f1074e = 0;

    /* JADX INFO: compiled from: PoolTaskStatistics.java */
    public static class a {
        public int a;
        public String b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f1075d;

        public a(String str, int i, String str2, String str3) {
            this.a = 0;
            this.b = null;
            this.c = null;
            this.f1075d = null;
            this.c = str;
            this.a = i;
            this.f1075d = str2;
            this.b = str3;
        }

        public int a() {
            return this.a;
        }

        public void a(int i) {
            this.a = i;
        }

        public String toString() {
            return "ThreadModel{times=" + this.a + ", name='" + this.b + "', lastStackStack='" + this.c + "'}";
        }
    }

    public static void a() {
        try {
            b();
        } catch (Throwable unused) {
        }
    }

    private static boolean a(String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static void b() {
        String str;
        c cVarI = f.i();
        if (cVarI == null) {
            return;
        }
        int i = 1;
        int iAddAndGet = c.addAndGet(1);
        int i2 = f.c;
        if (i2 < 0 || iAddAndGet % i2 != 0 || Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        HashMap map = new HashMap();
        if (allStackTraces == null) {
            return;
        }
        boolean zA = l.a();
        int size = allStackTraces.size();
        if (size > f1074e) {
            f1074e = size;
        }
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
        int i3 = 0;
        int i4 = 0;
        while (it.hasNext()) {
            Map.Entry<Thread, StackTraceElement[]> next = it.next();
            i4 += i;
            Thread key = next.getKey();
            StackTraceElement[] value = next.getValue();
            StringBuilder sb = new StringBuilder("\n");
            if (zA) {
                sb.append("Thread Name is : " + key.getName());
                sb.append("\n");
            }
            String str2 = null;
            int length = value.length;
            int i5 = 0;
            while (i5 < length) {
                String string = value[i5].toString();
                Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = it;
                if (zA) {
                    sb.append(string + "\n");
                }
                if (TextUtils.isEmpty(str2)) {
                    if (a(string, a)) {
                        str = string;
                    } else {
                        str = string;
                        if (a(key.getName(), b)) {
                        }
                    }
                    i3++;
                    str2 = str;
                }
                i5++;
                it = it2;
            }
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it3 = it;
            if (zA) {
                if (!TextUtils.isEmpty(str2)) {
                    String str3 = str2 + o2.i.c + key.getName();
                    a aVar = (a) map.get(str3);
                    if (aVar != null) {
                        aVar.a(aVar.a() + 1);
                    } else {
                        aVar = new a(str3, 1, sb.toString(), key.getName());
                    }
                    map.put(str3, aVar);
                }
                if (!TextUtils.isEmpty(sb.toString())) {
                    Log.e("PoolTaskStatistics", "Thread index = " + i4 + "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
                    Log.w("PoolTaskStatistics", sb.toString());
                }
            }
            it = it3;
            i = 1;
        }
        if (i3 > f1073d) {
            f1073d = i3;
        }
        if (zA) {
            Log.e("PoolTaskStatistics", "SDK current threads=" + i3 + ", SDK Max threads=" + f1073d + ", Application threads = " + size + ", Application max threads = " + f1074e);
            Iterator it4 = map.entrySet().iterator();
            while (it4.hasNext()) {
                Log.i("PoolTaskStatistics", ((a) ((Map.Entry) it4.next()).getValue()).toString());
            }
        }
        cVarI.a(new com.bytedance.sdk.component.g.b.a(i3, f1073d, size, f1074e));
    }
}
