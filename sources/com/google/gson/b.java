package com.google.gson;

import java.lang.reflect.Field;
import java.util.Objects;

/* JADX INFO: compiled from: FieldAttributes.java */
/* JADX INFO: loaded from: classes3.dex */
public final class b {
    private final Field a;

    public b(Field field) {
        Objects.requireNonNull(field);
        this.a = field;
    }

    public String toString() {
        return this.a.toString();
    }
}
