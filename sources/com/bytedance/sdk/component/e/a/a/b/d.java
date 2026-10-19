package com.bytedance.sdk.component.e.a.a.b;

import com.bytedance.sdk.component.e.a.d.a;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: compiled from: EventMemoryCacheManager.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d<T extends com.bytedance.sdk.component.e.a.d.a> {
    private com.bytedance.sdk.component.e.a.d.b.a a;
    private Queue<T> b = new ConcurrentLinkedQueue();
    private Queue<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f999d;

    public d(com.bytedance.sdk.component.e.a.d.b.a aVar, Queue<String> queue, String str) {
        this.f999d = "EventMemoryCacheManager";
        this.a = aVar;
        this.c = queue;
        this.f999d = str;
    }

    public synchronized List<com.bytedance.sdk.component.e.a.d.a> a(int i, int i2) {
        if (!b(i, i2)) {
            return null;
        }
        ArrayList arrayList = new ArrayList(this.a.a());
        do {
            T tPoll = this.b.poll();
            if (tPoll == null) {
                break;
            }
            arrayList.add(tPoll);
        } while (arrayList.size() != this.a.b());
        return arrayList;
    }

    public synchronized void a(int i, List<T> list) {
        if (i == -1 || i == 200 || i == 509) {
            com.bytedance.sdk.component.e.a.c.c.a(this.f999d + " memory size：" + this.b.size());
        } else {
            this.b.addAll(list);
        }
    }

    public void a(T t) {
        Queue<T> queue = this.b;
        if (queue == null || t == null) {
            return;
        }
        queue.offer(t);
    }

    public synchronized boolean b(int i, int i2) {
        int size = this.b.size();
        int iA = this.a.a();
        com.bytedance.sdk.component.e.a.c.c.a(this.f999d + " size:" + size + " cacheCount:" + iA + " message:" + i);
        if (i != 2 && i != 1) {
            return size >= iA;
        }
        if (com.bytedance.sdk.component.e.a.c.a.c()) {
            return size >= 1;
        }
        return size >= iA;
    }
}
