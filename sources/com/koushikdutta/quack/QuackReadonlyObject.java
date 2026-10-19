package com.koushikdutta.quack;

/* JADX INFO: loaded from: classes4.dex */
public interface QuackReadonlyObject extends QuackObject {
    boolean set(int i, Object obj);

    @Override // com.koushikdutta.quack.QuackObject
    boolean set(Object obj, Object obj2);

    boolean set(String str, Object obj);
}
