package com.fyber.inneractive.sdk.cache.session;

import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes2.dex */
public class h extends PriorityQueue<e> {
    public int a;

    public h(int i) {
        super(1, new i());
        this.a = i;
    }

    @Override // java.util.PriorityQueue, java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean add(e eVar) {
        boolean zAdd = super.add(eVar);
        if (super.size() > this.a) {
            poll();
        }
        return zAdd;
    }

    @Override // java.util.PriorityQueue, java.util.AbstractCollection, java.util.Collection
    public int size() {
        return super.size();
    }
}
