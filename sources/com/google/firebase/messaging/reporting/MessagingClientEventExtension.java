package com.google.firebase.messaging.reporting;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;
import com.google.firebase.messaging.ProtoEncoderDoNotUse;

/* JADX INFO: loaded from: classes3.dex */
public final class MessagingClientEventExtension {
    private static final MessagingClientEventExtension a = new Builder().a();
    private final MessagingClientEvent b;

    public static final class Builder {
        private MessagingClientEvent a = null;

        Builder() {
        }

        public MessagingClientEventExtension a() {
            return new MessagingClientEventExtension(this.a);
        }

        public Builder b(MessagingClientEvent messagingClientEvent) {
            this.a = messagingClientEvent;
            return this;
        }
    }

    MessagingClientEventExtension(MessagingClientEvent messagingClientEvent) {
        this.b = messagingClientEvent;
    }

    public static MessagingClientEventExtension getDefaultInstance() {
        return a;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 1)
    @Encodable.Field
    public MessagingClientEvent a() {
        return this.b;
    }

    public byte[] b() {
        return ProtoEncoderDoNotUse.encode(this);
    }
}
