package com.bykv.vk.openvk.component.video.a.b;

/* JADX INFO: compiled from: IncrementalTimeout.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    private final long a;
    private final long b;
    private final long c;

    public long a(int i) {
        return i <= 0 ? this.a : Math.min(this.a + (this.b * ((long) i)), this.c);
    }
}
