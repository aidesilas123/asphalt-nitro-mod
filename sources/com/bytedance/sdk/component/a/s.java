package com.bytedance.sdk.component.a;

/* JADX INFO: compiled from: JsBridgeException.java */
/* JADX INFO: loaded from: classes.dex */
class s extends Exception {
    int a;

    s(int i) {
        this.a = i;
    }

    s(int i, String str) {
        super(str);
        this.a = i;
    }
}
