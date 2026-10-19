package com.google.firebase.messaging;

import androidx.core.app.NotificationCompat;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.proto.AtProtobuf;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class AutoProtoEncoderDoNotUseEncoder implements Configurator {
    public static final Configurator a = new AutoProtoEncoderDoNotUseEncoder();

    private static final class MessagingClientEventEncoder implements ObjectEncoder<MessagingClientEvent> {
        static final MessagingClientEventEncoder a = new MessagingClientEventEncoder();
        private static final FieldDescriptor b = FieldDescriptor.builder("projectNumber").b(AtProtobuf.builder().b(1).a()).a();
        private static final FieldDescriptor c = FieldDescriptor.builder("messageId").b(AtProtobuf.builder().b(2).a()).a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final FieldDescriptor f4131d = FieldDescriptor.builder("instanceId").b(AtProtobuf.builder().b(3).a()).a();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final FieldDescriptor f4132e = FieldDescriptor.builder("messageType").b(AtProtobuf.builder().b(4).a()).a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final FieldDescriptor f4133f = FieldDescriptor.builder("sdkPlatform").b(AtProtobuf.builder().b(5).a()).a();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final FieldDescriptor f4134g = FieldDescriptor.builder(HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME).b(AtProtobuf.builder().b(6).a()).a();
        private static final FieldDescriptor h = FieldDescriptor.builder("collapseKey").b(AtProtobuf.builder().b(7).a()).a();
        private static final FieldDescriptor i = FieldDescriptor.builder("priority").b(AtProtobuf.builder().b(8).a()).a();
        private static final FieldDescriptor j = FieldDescriptor.builder("ttl").b(AtProtobuf.builder().b(9).a()).a();
        private static final FieldDescriptor k = FieldDescriptor.builder("topic").b(AtProtobuf.builder().b(10).a()).a();
        private static final FieldDescriptor l = FieldDescriptor.builder("bulkId").b(AtProtobuf.builder().b(11).a()).a();
        private static final FieldDescriptor m = FieldDescriptor.builder(NotificationCompat.CATEGORY_EVENT).b(AtProtobuf.builder().b(12).a()).a();
        private static final FieldDescriptor n = FieldDescriptor.builder("analyticsLabel").b(AtProtobuf.builder().b(13).a()).a();
        private static final FieldDescriptor o = FieldDescriptor.builder("campaignId").b(AtProtobuf.builder().b(14).a()).a();
        private static final FieldDescriptor p = FieldDescriptor.builder("composerLabel").b(AtProtobuf.builder().b(15).a()).a();

        private MessagingClientEventEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MessagingClientEvent messagingClientEvent, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.a(b, messagingClientEvent.l());
            objectEncoderContext.d(c, messagingClientEvent.h());
            objectEncoderContext.d(f4131d, messagingClientEvent.g());
            objectEncoderContext.d(f4132e, messagingClientEvent.i());
            objectEncoderContext.d(f4133f, messagingClientEvent.m());
            objectEncoderContext.d(f4134g, messagingClientEvent.j());
            objectEncoderContext.d(h, messagingClientEvent.d());
            objectEncoderContext.b(i, messagingClientEvent.k());
            objectEncoderContext.b(j, messagingClientEvent.o());
            objectEncoderContext.d(k, messagingClientEvent.n());
            objectEncoderContext.a(l, messagingClientEvent.b());
            objectEncoderContext.d(m, messagingClientEvent.f());
            objectEncoderContext.d(n, messagingClientEvent.a());
            objectEncoderContext.a(o, messagingClientEvent.c());
            objectEncoderContext.d(p, messagingClientEvent.e());
        }
    }

    private static final class MessagingClientEventExtensionEncoder implements ObjectEncoder<MessagingClientEventExtension> {
        static final MessagingClientEventExtensionEncoder a = new MessagingClientEventExtensionEncoder();
        private static final FieldDescriptor b = FieldDescriptor.builder("messagingClientEvent").b(AtProtobuf.builder().b(1).a()).a();

        private MessagingClientEventExtensionEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(MessagingClientEventExtension messagingClientEventExtension, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, messagingClientEventExtension.a());
        }
    }

    private static final class ProtoEncoderDoNotUseEncoder implements ObjectEncoder<ProtoEncoderDoNotUse> {
        static final ProtoEncoderDoNotUseEncoder a = new ProtoEncoderDoNotUseEncoder();
        private static final FieldDescriptor b = FieldDescriptor.of("messagingClientEventExtension");

        private ProtoEncoderDoNotUseEncoder() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ProtoEncoderDoNotUse protoEncoderDoNotUse, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, protoEncoderDoNotUse.a());
        }
    }

    private AutoProtoEncoderDoNotUseEncoder() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void a(EncoderConfig<?> encoderConfig) {
        encoderConfig.a(ProtoEncoderDoNotUse.class, ProtoEncoderDoNotUseEncoder.a);
        encoderConfig.a(MessagingClientEventExtension.class, MessagingClientEventExtensionEncoder.a);
        encoderConfig.a(MessagingClientEvent.class, MessagingClientEventEncoder.a);
    }
}
