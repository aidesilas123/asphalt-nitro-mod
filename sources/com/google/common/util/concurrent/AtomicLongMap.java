package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public final class AtomicLongMap<K> implements Serializable {
    private final ConcurrentHashMap<K, AtomicLong> a;

    private AtomicLongMap(ConcurrentHashMap<K, AtomicLong> concurrentHashMap) {
        this.a = (ConcurrentHashMap) Preconditions.checkNotNull(concurrentHashMap);
    }

    public static <K> AtomicLongMap<K> create() {
        return new AtomicLongMap<>(new ConcurrentHashMap());
    }

    public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> map) {
        AtomicLongMap<K> atomicLongMapCreate = create();
        atomicLongMapCreate.b(map);
        return atomicLongMapCreate;
    }

    public long a(K k, long j) {
        AtomicLong atomicLongPutIfAbsent;
        long j2;
        do {
            atomicLongPutIfAbsent = this.a.get(k);
            if (atomicLongPutIfAbsent == null && (atomicLongPutIfAbsent = this.a.putIfAbsent(k, new AtomicLong(j))) == null) {
                return 0L;
            }
            do {
                j2 = atomicLongPutIfAbsent.get();
                if (j2 == 0) {
                }
            } while (!atomicLongPutIfAbsent.compareAndSet(j2, j));
            return j2;
        } while (!this.a.replace(k, atomicLongPutIfAbsent, new AtomicLong(j)));
        return 0L;
    }

    public void b(Map<? extends K, ? extends Long> map) {
        for (Map.Entry<? extends K, ? extends Long> entry : map.entrySet()) {
            a(entry.getKey(), entry.getValue().longValue());
        }
    }

    public String toString() {
        return this.a.toString();
    }
}
