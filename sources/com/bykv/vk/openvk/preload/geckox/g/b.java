package com.bykv.vk.openvk.preload.geckox.g;

import com.bykv.vk.openvk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: SelectChannelVersionLock.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {
    private static final Map<String, Lock> a = new HashMap();
    private static ReentrantLock b = new ReentrantLock();
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private FileLock f591d;

    private b(String str, FileLock fileLock) {
        this.c = str;
        this.f591d = fileLock;
    }

    public static b a(String str) throws Exception {
        b.lock();
        try {
            FileLock fileLockA = FileLock.a(str);
            Map<String, Lock> map = a;
            Lock reentrantLock = map.get(str);
            if (reentrantLock == null) {
                reentrantLock = new ReentrantLock();
                map.put(str, reentrantLock);
            }
            reentrantLock.lock();
            return new b(str, fileLockA);
        } catch (Exception e2) {
            b.unlock();
            throw e2;
        }
    }

    public final void a() {
        try {
            this.f591d.a();
            this.f591d.b();
            Lock lock = a.get(this.c);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            b.unlock();
        }
    }
}
