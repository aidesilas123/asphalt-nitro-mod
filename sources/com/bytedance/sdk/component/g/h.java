package com.bytedance.sdk.component.g;

/* JADX INFO: compiled from: TTRunnable.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class h implements Comparable<h>, Runnable {
    private int a;
    private String b;

    public h(String str) {
        this.a = 0;
        this.a = 5;
        this.b = str;
    }

    public h(String str, int i) {
        this.a = 0;
        this.a = i == 0 ? 5 : i;
        this.b = str;
    }

    @Override // java.lang.Comparable
    public int compareTo(h hVar) {
        if (getPriority() < hVar.getPriority()) {
            return 1;
        }
        return getPriority() >= hVar.getPriority() ? -1 : 0;
    }

    public String getName() {
        return this.b;
    }

    public int getPriority() {
        return this.a;
    }

    public void setPriority(int i) {
        this.a = i;
    }
}
