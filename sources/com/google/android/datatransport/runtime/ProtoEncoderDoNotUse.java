package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
@Encodable
public abstract class ProtoEncoderDoNotUse {
    private static final ProtobufEncoder a = ProtobufEncoder.builder().c(b.a).b();

    private ProtoEncoderDoNotUse() {
    }

    public static void encode(Object obj, OutputStream outputStream) throws IOException {
        a.a(obj, outputStream);
    }

    public static byte[] encode(Object obj) {
        return a.b(obj);
    }

    public abstract ClientMetrics a();
}
