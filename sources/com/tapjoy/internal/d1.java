package com.tapjoy.internal;

import android.content.SharedPreferences;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class d1 implements Runnable {
    public final /* synthetic */ m2 a;

    public d1(m2 m2Var) {
        this.a = m2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m2 m2Var = this.a;
        if (m2Var.b == null) {
            return;
        }
        synchronized (m2Var) {
            long jA = na.a();
            File file = m2Var.f7940e;
            if (file == null) {
                file = new File(m2Var.b.getCacheDir(), "tapjoy_mm_cache");
                m2Var.f7940e = file;
            }
            if (!file.isDirectory()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            File[] fileArrListFiles = file.listFiles();
            HashMap map = new HashMap();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    map.put(file2.getName(), file2);
                }
            }
            SharedPreferences.Editor editorEdit = m2Var.c.edit();
            SharedPreferences.Editor editorEdit2 = m2Var.f7939d.edit();
            HashMap map2 = new HashMap(m2Var.c.getAll());
            HashMap map3 = new HashMap(m2Var.f7939d.getAll());
            Iterator it = map2.entrySet().iterator();
            boolean z = true;
            boolean z2 = false;
            while (it.hasNext()) {
                String str = (String) ((Map.Entry) it.next()).getKey();
                if (!map3.containsKey(str)) {
                    it.remove();
                    editorEdit.remove(str);
                    z2 = true;
                }
            }
            Iterator it2 = map3.entrySet().iterator();
            while (it2.hasNext()) {
                String str2 = (String) ((Map.Entry) it2.next()).getKey();
                if (!map2.containsKey(str2)) {
                    it2.remove();
                    editorEdit2.remove(str2);
                    z2 = true;
                }
            }
            Iterator it3 = map2.entrySet().iterator();
            while (it3.hasNext()) {
                Map.Entry entry = (Map.Entry) it3.next();
                String str3 = (String) entry.getKey();
                if (((Long) entry.getValue()).longValue() < jA) {
                    it3.remove();
                    editorEdit.remove(str3);
                    editorEdit2.remove(str3);
                    z2 = true;
                } else {
                    map.remove(str3);
                }
            }
            Iterator it4 = map.entrySet().iterator();
            while (it4.hasNext()) {
                ((File) ((Map.Entry) it4.next()).getValue()).delete();
            }
            if (map2.size() > 30) {
                int size = map2.size() - 30;
                LinkedList linkedList = new LinkedList(map2.entrySet());
                Collections.sort(linkedList, new d2());
                Iterator it5 = linkedList.iterator();
                for (int i = 0; i < size && it5.hasNext(); i++) {
                    Map.Entry entry2 = (Map.Entry) it5.next();
                    String str4 = (String) entry2.getKey();
                    editorEdit.remove(str4);
                    editorEdit2.remove(str4);
                    File file3 = m2Var.f7940e;
                    if (file3 == null) {
                        file3 = new File(m2Var.b.getCacheDir(), "tapjoy_mm_cache");
                        m2Var.f7940e = file3;
                    }
                    if (!file3.isDirectory()) {
                        file3.delete();
                    }
                    if (!file3.exists()) {
                        file3.mkdirs();
                    }
                    new File(file3, str4).delete();
                }
            } else {
                z = z2;
            }
            if (z) {
                editorEdit.commit();
                editorEdit2.commit();
            }
        }
    }
}
