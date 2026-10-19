package com.bytedance.sdk.openadsdk.n.a;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: PAGMrcTrackerManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static final Map<Integer, b> a = new ConcurrentHashMap();

    private static b a(View view, q qVar, boolean z, int i) {
        if (view == null || qVar == null || qVar.Y() == null) {
            return null;
        }
        Integer numB = b(qVar);
        Map<Integer, b> map = a;
        if (!map.containsKey(numB)) {
            b bVarA = b.a(z, numB, view, qVar, i);
            map.put(numB, bVarA);
            return bVarA;
        }
        b bVar = map.get(numB);
        if (bVar != null) {
            bVar.a(view);
        }
        return bVar;
    }

    public static b a(Integer num) {
        return a.get(num);
    }

    public static void a(View view, q qVar, int i) {
        if (view == null || qVar == null || qVar.aB()) {
            return;
        }
        boolean zC = c(qVar);
        if (t.b(qVar)) {
            i = -1;
        }
        a(a(view, qVar, zC, i));
    }

    public static void a(q qVar) {
        if (qVar == null || qVar.Y() == null) {
            return;
        }
        Integer numB = b(qVar);
        Map<Integer, b> map = a;
        b bVar = map.get(numB);
        if (bVar != null) {
            bVar.j();
        }
        b(numB);
        if (map.size() <= 0) {
            g.a();
        }
    }

    public static void a(q qVar, int i) {
        if (qVar == null || qVar.Y() == null) {
            return;
        }
        a(a.get(b(qVar)), i);
    }

    private static void a(b bVar) {
        if (bVar == null) {
            return;
        }
        bVar.a();
    }

    public static void a(b bVar, int i) {
        if (bVar == null) {
            return;
        }
        bVar.a(i);
    }

    public static Integer b(q qVar) {
        return Integer.valueOf((qVar.bc() + qVar.Y()).hashCode());
    }

    public static void b(Integer num) {
        a.remove(num);
    }

    private static boolean c(q qVar) {
        if (qVar == null) {
            return false;
        }
        String strA = ac.a(qVar);
        return ((("open_ad".equals(strA) || "fullscreen_interstitial_ad".equals(strA) || "rewarded_video".equals(strA)) && !t.b(qVar)) && qVar.o() != 5) && q.c(qVar) && qVar.K() != null;
    }
}
