package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: ChannelUpdateLock.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final Map<String, Lock> a = new HashMap();
    private FileLock b;
    private String c;

    private a(String str, FileLock fileLock) {
        this.c = str;
        this.b = fileLock;
    }

    public static a a(String str) throws Exception {
        Map<String, Lock> map = a;
        synchronized (map) {
            Lock reentrantLock = map.get(str);
            if (reentrantLock == null) {
                reentrantLock = new ReentrantLock();
                map.put(str, reentrantLock);
            }
            if (!reentrantLock.tryLock()) {
                return null;
            }
            try {
                FileLock fileLockC = FileLock.c(str);
                if (fileLockC == null) {
                    reentrantLock.unlock();
                    return null;
                }
                return new a(str, fileLockC);
            } catch (Exception e2) {
                reentrantLock.lock();
                com.bykv.vk.openvk.preload.geckox.utils.b.a(new RuntimeException(e2));
                return null;
            }
        }
    }

    public final void a() {
        Map<String, Lock> map = a;
        synchronized (map) {
            try {
                this.b.a();
                this.b.b();
                map.get(this.c).unlock();
            } catch (Throwable th) {
                a.get(this.c).unlock();
                throw th;
            }
        }
    }
}
