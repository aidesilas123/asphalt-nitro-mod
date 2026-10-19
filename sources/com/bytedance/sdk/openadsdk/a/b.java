package com.bytedance.sdk.openadsdk.a;

import com.bytedance.sdk.component.utils.l;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: TotalCountLruDiskFile.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends a {
    private int a;
    private int b;
    private volatile boolean c;

    public b(int i, int i2) {
        this.a = 15;
        this.b = 3;
        if (i <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.a = i;
        this.b = i2;
    }

    public b(int i, int i2, boolean z) {
        this.a = 15;
        this.b = 3;
        if (i <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.a = i;
        this.b = i2;
        this.c = z;
    }

    private void c(List<File> list) {
        long jB = b(list);
        int size = list.size();
        if (a(jB, size)) {
            return;
        }
        for (File file : list) {
            long length = file.length();
            if (file.delete()) {
                size--;
                jB -= length;
            }
            if (a(file, jB, size)) {
                return;
            }
        }
    }

    private void d(List<File> list) {
        if (list != null) {
            try {
                if (list.size() == 0) {
                    return;
                }
                long jB = b(list);
                int size = list.size();
                boolean zA = a(jB, size);
                if (zA) {
                    l.c("splashLoadAd", "Do not meet the delete condition, do not perform a delete operation(true)" + zA);
                    return;
                }
                TreeMap treeMap = new TreeMap();
                for (File file : list) {
                    treeMap.put(Long.valueOf(file.lastModified()), file);
                }
                for (Map.Entry entry : treeMap.entrySet()) {
                    if (entry != null && !zA) {
                        ((Long) entry.getKey()).longValue();
                        File file2 = (File) entry.getValue();
                        long length = file2.length();
                        if (file2.delete()) {
                            size--;
                            jB -= length;
                        }
                        if (a(file2, jB, size)) {
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.a.a
    protected void a(List<File> list) {
        if (!this.c) {
            c(list);
        } else {
            d(list);
            this.c = false;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.a.a
    protected boolean a(long j, int i) {
        return i <= this.a;
    }

    @Override // com.bytedance.sdk.openadsdk.a.a
    protected boolean a(File file, long j, int i) {
        return i <= this.b;
    }
}
