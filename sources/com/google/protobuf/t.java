package com.google.protobuf;

import com.google.protobuf.WireFormat;
import com.google.protobuf.q0;

/* JADX INFO: compiled from: ExtensionLite.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class t<ContainingType extends q0, Type> {
    public abstract Type getDefaultValue();

    public abstract WireFormat.FieldType getLiteType();

    public abstract q0 getMessageDefaultInstance();

    public abstract int getNumber();

    boolean isLite() {
        return true;
    }

    public abstract boolean isRepeated();
}
