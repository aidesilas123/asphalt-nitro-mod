package com.bytedance.sdk.component.adexpress.dynamic.c;

import com.bytedance.sdk.component.adexpress.dynamic.c.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: FlexComputeRuler.java */
/* JADX INFO: loaded from: classes.dex */
public class i {
    public static float a(float f2) {
        return (float) Math.ceil((f2 * 16.0f) / 16.0f);
    }

    public static List<a.C0103a> a(float f2, List<a.C0103a> list) {
        ArrayList<a.C0103a> arrayList = new ArrayList();
        Iterator<a.C0103a> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add((a.C0103a) it.next().clone());
        }
        boolean z = true;
        int i = 0;
        int i2 = 0;
        for (a.C0103a c0103a : arrayList) {
            if (c0103a.b) {
                i = (int) (i + c0103a.a);
            } else {
                i2 = (int) (i2 + c0103a.a);
                z = false;
            }
        }
        if (z && f2 > i) {
            return arrayList;
        }
        float f3 = i;
        float f4 = f2 < f3 ? f2 / f3 : 1.0f;
        float f5 = f2 > f3 ? (f2 - f3) / i2 : 0.0f;
        if (f5 > 1.0f) {
            ArrayList arrayList2 = new ArrayList();
            boolean z2 = false;
            for (a.C0103a c0103a2 : arrayList) {
                if (!c0103a2.b) {
                    float f6 = c0103a2.c;
                    if (f6 != 0.0f && c0103a2.a * f5 > f6) {
                        c0103a2.a = f6;
                        c0103a2.b = true;
                        z2 = true;
                    }
                }
                arrayList2.add(c0103a2);
            }
            if (z2) {
                return a(f2, arrayList2);
            }
        }
        int i3 = 0;
        for (a.C0103a c0103a3 : arrayList) {
            if (c0103a3.b) {
                c0103a3.a = a(c0103a3.a * f4);
            } else {
                c0103a3.a = a(c0103a3.a * f5);
            }
            i3 = (int) (i3 + c0103a3.a);
        }
        float f7 = i3;
        if (f7 < f2) {
            float f8 = f2 - f7;
            for (int size = 0; size < arrayList.size() && f8 > 0.0f; size = (size + 1) % arrayList.size()) {
                a.C0103a c0103a4 = (a.C0103a) arrayList.get(size);
                if ((f2 < f3 && c0103a4.b) || (f2 > f3 && !c0103a4.b)) {
                    c0103a4.a += 0.0625f;
                    f8 -= 0.0625f;
                }
            }
        }
        return arrayList;
    }
}
