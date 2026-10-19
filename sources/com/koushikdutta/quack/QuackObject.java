package com.koushikdutta.quack;

/* JADX INFO: loaded from: classes4.dex */
public interface QuackObject {
    Object callMethod(Object obj, Object... objArr);

    Object construct(Object... objArr);

    Object get(Object obj);

    boolean has(Object obj);

    boolean set(Object obj, Object obj2);
}
