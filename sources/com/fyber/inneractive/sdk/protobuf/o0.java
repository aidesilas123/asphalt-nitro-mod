package com.fyber.inneractive.sdk.protobuf;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public interface o0 extends p0 {

    public interface a extends p0, Cloneable {
    }

    int getSerializedSize();

    a newBuilderForType();

    a toBuilder();

    i toByteString();

    void writeTo(l lVar) throws IOException;
}
