package com.google.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: UnknownFieldSchema.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class y1<T, B> {
    y1() {
    }

    abstract void addFixed32(B b, int i, int i2);

    abstract void addFixed64(B b, int i, long j);

    abstract void addGroup(B b, int i, T t);

    abstract void addLengthDelimited(B b, int i, ByteString byteString);

    abstract void addVarint(B b, int i, long j);

    abstract B getBuilderFromMessage(Object obj);

    abstract T getFromMessage(Object obj);

    abstract int getSerializedSize(T t);

    abstract int getSerializedSizeAsMessageSet(T t);

    abstract void makeImmutable(Object obj);

    abstract T merge(T t, T t2);

    final void mergeFrom(B b, j1 j1Var) throws IOException {
        while (j1Var.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(b, j1Var)) {
        }
    }

    final boolean mergeOneFieldFrom(B b, j1 j1Var) throws IOException {
        int tag = j1Var.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType == 0) {
            addVarint(b, tagFieldNumber, j1Var.readInt64());
            return true;
        }
        if (tagWireType == 1) {
            addFixed64(b, tagFieldNumber, j1Var.readFixed64());
            return true;
        }
        if (tagWireType == 2) {
            addLengthDelimited(b, tagFieldNumber, j1Var.readBytes());
            return true;
        }
        if (tagWireType != 3) {
            if (tagWireType == 4) {
                return false;
            }
            if (tagWireType != 5) {
                throw d0.invalidWireType();
            }
            addFixed32(b, tagFieldNumber, j1Var.readFixed32());
            return true;
        }
        B bNewBuilder = newBuilder();
        int iMakeTag = WireFormat.makeTag(tagFieldNumber, 4);
        mergeFrom(bNewBuilder, j1Var);
        if (iMakeTag != j1Var.getTag()) {
            throw d0.invalidEndTag();
        }
        addGroup(b, tagFieldNumber, toImmutable(bNewBuilder));
        return true;
    }

    abstract B newBuilder();

    abstract void setBuilderToMessage(Object obj, B b);

    abstract void setToMessage(Object obj, T t);

    abstract boolean shouldDiscardUnknownFields(j1 j1Var);

    abstract T toImmutable(B b);

    abstract void writeAsMessageSetTo(T t, Writer writer) throws IOException;

    abstract void writeTo(T t, Writer writer) throws IOException;
}
