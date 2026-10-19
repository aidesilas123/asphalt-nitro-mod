package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.proto.Protobuf;
import java.lang.annotation.Annotation;

/* JADX INFO: loaded from: classes3.dex */
public final class AtProtobuf {
    private int a;
    private Protobuf.IntEncoding b = Protobuf.IntEncoding.DEFAULT;

    private static final class ProtobufImpl implements Protobuf {
        private final int a;
        private final Protobuf.IntEncoding b;

        ProtobufImpl(int i, Protobuf.IntEncoding intEncoding) {
            this.a = i;
            this.b = intEncoding;
        }

        @Override // java.lang.annotation.Annotation
        public Class<? extends Annotation> annotationType() {
            return Protobuf.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Protobuf)) {
                return false;
            }
            Protobuf protobuf = (Protobuf) obj;
            return this.a == protobuf.tag() && this.b.equals(protobuf.intEncoding());
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (this.a ^ 14552422) + (this.b.hashCode() ^ 2041407134);
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public Protobuf.IntEncoding intEncoding() {
            return this.b;
        }

        @Override // com.google.firebase.encoders.proto.Protobuf
        public int tag() {
            return this.a;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.a + "intEncoding=" + this.b + ')';
        }
    }

    public static AtProtobuf builder() {
        return new AtProtobuf();
    }

    public Protobuf a() {
        return new ProtobufImpl(this.a, this.b);
    }

    public AtProtobuf b(int i) {
        this.a = i;
        return this;
    }
}
