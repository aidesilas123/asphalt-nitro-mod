package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.proto.AtProtobuf;
import java.io.IOException;

/* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements Configurator {
    public static final Configurator a = new b();

    /* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    private static final class a implements ObjectEncoder<ClientMetrics> {
        static final a a = new a();
        private static final FieldDescriptor b = FieldDescriptor.builder("window").b(AtProtobuf.builder().b(1).a()).a();
        private static final FieldDescriptor c = FieldDescriptor.builder("logSourceMetrics").b(AtProtobuf.builder().b(2).a()).a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final FieldDescriptor f3018d = FieldDescriptor.builder("globalMetrics").b(AtProtobuf.builder().b(3).a()).a();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final FieldDescriptor f3019e = FieldDescriptor.builder("appNamespace").b(AtProtobuf.builder().b(4).a()).a();

        private a() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ClientMetrics clientMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, clientMetrics.d());
            objectEncoderContext.d(c, clientMetrics.c());
            objectEncoderContext.d(f3018d, clientMetrics.b());
            objectEncoderContext.d(f3019e, clientMetrics.a());
        }
    }

    /* JADX INFO: renamed from: com.google.android.datatransport.runtime.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    private static final class C0223b implements ObjectEncoder<GlobalMetrics> {
        static final C0223b a = new C0223b();
        private static final FieldDescriptor b = FieldDescriptor.builder("storageMetrics").b(AtProtobuf.builder().b(1).a()).a();

        private C0223b() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(GlobalMetrics globalMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, globalMetrics.a());
        }
    }

    /* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    private static final class c implements ObjectEncoder<LogEventDropped> {
        static final c a = new c();
        private static final FieldDescriptor b = FieldDescriptor.builder("eventsDroppedCount").b(AtProtobuf.builder().b(1).a()).a();
        private static final FieldDescriptor c = FieldDescriptor.builder("reason").b(AtProtobuf.builder().b(3).a()).a();

        private c() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(LogEventDropped logEventDropped, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.a(b, logEventDropped.a());
            objectEncoderContext.d(c, logEventDropped.b());
        }
    }

    /* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    private static final class d implements ObjectEncoder<LogSourceMetrics> {
        static final d a = new d();
        private static final FieldDescriptor b = FieldDescriptor.builder("logSource").b(AtProtobuf.builder().b(1).a()).a();
        private static final FieldDescriptor c = FieldDescriptor.builder("logEventDropped").b(AtProtobuf.builder().b(2).a()).a();

        private d() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(LogSourceMetrics logSourceMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, logSourceMetrics.b());
            objectEncoderContext.d(c, logSourceMetrics.a());
        }
    }

    /* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    private static final class e implements ObjectEncoder<ProtoEncoderDoNotUse> {
        static final e a = new e();
        private static final FieldDescriptor b = FieldDescriptor.of("clientMetrics");

        private e() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ProtoEncoderDoNotUse protoEncoderDoNotUse, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, protoEncoderDoNotUse.a());
        }
    }

    /* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    private static final class f implements ObjectEncoder<StorageMetrics> {
        static final f a = new f();
        private static final FieldDescriptor b = FieldDescriptor.builder("currentCacheSizeBytes").b(AtProtobuf.builder().b(1).a()).a();
        private static final FieldDescriptor c = FieldDescriptor.builder("maxCacheSizeBytes").b(AtProtobuf.builder().b(2).a()).a();

        private f() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(StorageMetrics storageMetrics, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.a(b, storageMetrics.a());
            objectEncoderContext.a(c, storageMetrics.b());
        }
    }

    /* JADX INFO: compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    private static final class g implements ObjectEncoder<TimeWindow> {
        static final g a = new g();
        private static final FieldDescriptor b = FieldDescriptor.builder("startMs").b(AtProtobuf.builder().b(1).a()).a();
        private static final FieldDescriptor c = FieldDescriptor.builder("endMs").b(AtProtobuf.builder().b(2).a()).a();

        private g() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(TimeWindow timeWindow, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.a(b, timeWindow.b());
            objectEncoderContext.a(c, timeWindow.a());
        }
    }

    private b() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void a(EncoderConfig<?> encoderConfig) {
        encoderConfig.a(ProtoEncoderDoNotUse.class, e.a);
        encoderConfig.a(ClientMetrics.class, a.a);
        encoderConfig.a(TimeWindow.class, g.a);
        encoderConfig.a(LogSourceMetrics.class, d.a);
        encoderConfig.a(LogEventDropped.class, c.a);
        encoderConfig.a(GlobalMetrics.class, C0223b.a);
        encoderConfig.a(StorageMetrics.class, f.a);
    }
}
