package com.google.firebase.messaging;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
@Encodable
public abstract class ProtoEncoderDoNotUse {
    private static final ProtobufEncoder a = ProtobufEncoder.builder().c(AutoProtoEncoderDoNotUseEncoder.a).b();

    private ProtoEncoderDoNotUse() {
    }

    public static void encode(Object obj, OutputStream outputStream) throws IOException {
        a.a(obj, outputStream);
    }

    public static byte[] encode(Object obj) {
        return a.b(obj);
    }

    public abstract MessagingClientEventExtension a();
}
