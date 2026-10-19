package com.google.firebase.encoders.proto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ValueEncoderContext;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
class ProtobufValueEncoderContext implements ValueEncoderContext {
    private boolean a = false;
    private boolean b = false;
    private FieldDescriptor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ProtobufDataEncoderContext f4075d;

    ProtobufValueEncoderContext(ProtobufDataEncoderContext protobufDataEncoderContext) {
        this.f4075d = protobufDataEncoderContext;
    }

    private void a() {
        if (this.a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.a = true;
    }

    void b(FieldDescriptor fieldDescriptor, boolean z) {
        this.a = false;
        this.c = fieldDescriptor;
        this.b = z;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext c(@Nullable String str) throws IOException {
        a();
        this.f4075d.f(this.c, str, this.b);
        return this;
    }

    @Override // com.google.firebase.encoders.ValueEncoderContext
    @NonNull
    public ValueEncoderContext e(boolean z) throws IOException {
        a();
        this.f4075d.k(this.c, z, this.b);
        return this;
    }
}
