package com.bykv.vk.openvk.component.video.a.b.a;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.a.b.d;
import com.bykv.vk.openvk.component.video.a.b.e;
import com.bytedance.sdk.component.g.f;
import com.bytedance.sdk.component.g.h;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends com.bykv.vk.openvk.component.video.a.b.a.a {
    public final File a;
    private final LinkedHashMap<String, File> b = new LinkedHashMap<>(0, 0.75f, true);
    private final ReentrantReadWriteLock c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReentrantReadWriteLock.ReadLock f411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ReentrantReadWriteLock.WriteLock f412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<a> f413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile long f414g;
    private volatile float h;
    private final b i;
    private final Runnable j;
    private final Handler k;

    /* JADX INFO: compiled from: DiskLruCache.java */
    public interface a {
        void a(String str);

        void a(Set<String> set);
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    private static final class b {
        private final Map<String, Integer> a;

        private b() {
            this.a = new HashMap();
        }

        synchronized void a(String str) {
            if (!TextUtils.isEmpty(str)) {
                Integer num = this.a.get(str);
                if (num == null) {
                    this.a.put(str, 1);
                } else {
                    this.a.put(str, Integer.valueOf(num.intValue() + 1));
                }
            }
        }

        synchronized void b(String str) {
            Integer num;
            if (!TextUtils.isEmpty(str) && (num = this.a.get(str)) != null) {
                if (num.intValue() == 1) {
                    this.a.remove(str);
                } else {
                    this.a.put(str, Integer.valueOf(num.intValue() - 1));
                }
            }
        }

        synchronized boolean c(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return this.a.containsKey(str);
        }
    }

    public c(File file) throws IOException {
        String str;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.c = reentrantReadWriteLock;
        this.f411d = reentrantReadWriteLock.readLock();
        this.f412e = reentrantReadWriteLock.writeLock();
        this.f413f = Collections.newSetFromMap(new ConcurrentHashMap());
        this.f414g = 104857600L;
        this.h = 0.5f;
        this.i = new b();
        this.j = new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.b.a.c.1
            @Override // java.lang.Runnable
            public void run() {
                f.b(new h("cleanupCmd", 1) { // from class: com.bykv.vk.openvk.component.video.a.b.a.c.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c cVar = c.this;
                        cVar.b(cVar.f414g);
                    }
                });
            }
        };
        this.k = new Handler(Looper.getMainLooper());
        if (file != null && file.exists() && file.isDirectory() && file.canRead() && file.canWrite()) {
            this.a = file;
            f.b(new h("DiskLruCache", 5) { // from class: com.bykv.vk.openvk.component.video.a.b.a.c.2
                @Override // java.lang.Runnable
                public void run() {
                    c.this.b();
                }
            });
            return;
        }
        if (file == null) {
            str = " dir null";
        } else {
            str = "exists: " + file.exists() + ", isDirectory: " + file.isDirectory() + ", canRead: " + file.canRead() + ", canWrite: " + file.canWrite();
        }
        throw new IOException("dir error!  " + str);
    }

    private String a(File file) {
        return file.getName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f412e.lock();
        try {
            File[] fileArrListFiles = this.a.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                final HashMap map = new HashMap(fileArrListFiles.length);
                ArrayList<File> arrayList = new ArrayList(fileArrListFiles.length);
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        arrayList.add(file);
                        map.put(file, Long.valueOf(file.lastModified()));
                    }
                }
                Collections.sort(arrayList, new Comparator<File>() { // from class: com.bykv.vk.openvk.component.video.a.b.a.c.3
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        long jLongValue = ((Long) map.get(file2)).longValue() - ((Long) map.get(file3)).longValue();
                        if (jLongValue < 0) {
                            return -1;
                        }
                        return jLongValue > 0 ? 1 : 0;
                    }
                });
                for (File file2 : arrayList) {
                    this.b.put(a(file2), file2);
                }
            }
            this.f412e.unlock();
            c();
        } catch (Throwable th) {
            this.f412e.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e4 A[LOOP:3: B:41:0x00de->B:43:0x00e4, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(long r13) {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.a.b.a.c.b(long):void");
    }

    private void c() {
        this.k.removeCallbacks(this.j);
        this.k.postDelayed(this.j, 10000L);
    }

    public void a() {
        d.c().d();
        Context contextA = e.a();
        if (contextA != null) {
            com.bykv.vk.openvk.component.video.a.b.b.c.a(contextA).a(0);
        }
        this.k.removeCallbacks(this.j);
        f.b(new h("clear", 1) { // from class: com.bykv.vk.openvk.component.video.a.b.a.c.4
            @Override // java.lang.Runnable
            public void run() {
                c.this.b(0L);
            }
        });
    }

    public void a(long j) {
        this.f414g = j;
        c();
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f413f.add(aVar);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.a.a
    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.i.a(str);
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.a.a
    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.i.b(str);
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.a.a
    public File c(String str) {
        this.f411d.lock();
        File file = this.b.get(str);
        this.f411d.unlock();
        if (file != null) {
            return file;
        }
        File file2 = new File(this.a, str);
        this.f412e.lock();
        this.b.put(str, file2);
        this.f412e.unlock();
        Iterator<a> it = this.f413f.iterator();
        while (it.hasNext()) {
            it.next().a(str);
        }
        c();
        return file2;
    }

    @Override // com.bykv.vk.openvk.component.video.a.b.a.a
    public File d(String str) {
        if (!this.f411d.tryLock()) {
            return null;
        }
        File file = this.b.get(str);
        this.f411d.unlock();
        return file;
    }
}
