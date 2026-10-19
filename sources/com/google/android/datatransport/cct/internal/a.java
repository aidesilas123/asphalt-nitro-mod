package com.google.android.datatransport.cct.internal;

import com.applovin.sdk.AppLovinEventTypes;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import java.io.IOException;

/* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Configurator {
    public static final Configurator a = new a();

    /* JADX INFO: renamed from: com.google.android.datatransport.cct.internal.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class C0221a implements ObjectEncoder<AndroidClientInfo> {
        static final C0221a a = new C0221a();
        private static final FieldDescriptor b = FieldDescriptor.of("sdkVersion");
        private static final FieldDescriptor c = FieldDescriptor.of("model");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final FieldDescriptor f2974d = FieldDescriptor.of("hardware");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final FieldDescriptor f2975e = FieldDescriptor.of("device");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final FieldDescriptor f2976f = FieldDescriptor.of(AppLovinEventTypes.USER_VIEWED_PRODUCT);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final FieldDescriptor f2977g = FieldDescriptor.of("osBuild");
        private static final FieldDescriptor h = FieldDescriptor.of("manufacturer");
        private static final FieldDescriptor i = FieldDescriptor.of("fingerprint");
        private static final FieldDescriptor j = FieldDescriptor.of("locale");
        private static final FieldDescriptor k = FieldDescriptor.of("country");
        private static final FieldDescriptor l = FieldDescriptor.of("mccMnc");
        private static final FieldDescriptor m = FieldDescriptor.of("applicationBuild");

        private C0221a() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(AndroidClientInfo androidClientInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, androidClientInfo.l());
            objectEncoderContext.d(c, androidClientInfo.i());
            objectEncoderContext.d(f2974d, androidClientInfo.e());
            objectEncoderContext.d(f2975e, androidClientInfo.c());
            objectEncoderContext.d(f2976f, androidClientInfo.k());
            objectEncoderContext.d(f2977g, androidClientInfo.j());
            objectEncoderContext.d(h, androidClientInfo.g());
            objectEncoderContext.d(i, androidClientInfo.d());
            objectEncoderContext.d(j, androidClientInfo.f());
            objectEncoderContext.d(k, androidClientInfo.b());
            objectEncoderContext.d(l, androidClientInfo.h());
            objectEncoderContext.d(m, androidClientInfo.a());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class b implements ObjectEncoder<BatchedLogRequest> {
        static final b a = new b();
        private static final FieldDescriptor b = FieldDescriptor.of("logRequest");

        private b() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(BatchedLogRequest batchedLogRequest, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, batchedLogRequest.a());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class c implements ObjectEncoder<ClientInfo> {
        static final c a = new c();
        private static final FieldDescriptor b = FieldDescriptor.of("clientType");
        private static final FieldDescriptor c = FieldDescriptor.of("androidClientInfo");

        private c() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ClientInfo clientInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, clientInfo.b());
            objectEncoderContext.d(c, clientInfo.a());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class d implements ObjectEncoder<LogEvent> {
        static final d a = new d();
        private static final FieldDescriptor b = FieldDescriptor.of("eventTimeMs");
        private static final FieldDescriptor c = FieldDescriptor.of("eventCode");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final FieldDescriptor f2978d = FieldDescriptor.of("eventUptimeMs");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final FieldDescriptor f2979e = FieldDescriptor.of("sourceExtension");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final FieldDescriptor f2980f = FieldDescriptor.of("sourceExtensionJsonProto3");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final FieldDescriptor f2981g = FieldDescriptor.of("timezoneOffsetSeconds");
        private static final FieldDescriptor h = FieldDescriptor.of("networkConnectionInfo");

        private d() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(LogEvent logEvent, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.a(b, logEvent.c());
            objectEncoderContext.d(c, logEvent.b());
            objectEncoderContext.a(f2978d, logEvent.d());
            objectEncoderContext.d(f2979e, logEvent.f());
            objectEncoderContext.d(f2980f, logEvent.g());
            objectEncoderContext.a(f2981g, logEvent.h());
            objectEncoderContext.d(h, logEvent.e());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class e implements ObjectEncoder<LogRequest> {
        static final e a = new e();
        private static final FieldDescriptor b = FieldDescriptor.of("requestTimeMs");
        private static final FieldDescriptor c = FieldDescriptor.of("requestUptimeMs");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final FieldDescriptor f2982d = FieldDescriptor.of("clientInfo");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final FieldDescriptor f2983e = FieldDescriptor.of("logSource");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final FieldDescriptor f2984f = FieldDescriptor.of("logSourceName");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final FieldDescriptor f2985g = FieldDescriptor.of("logEvent");
        private static final FieldDescriptor h = FieldDescriptor.of("qosTier");

        private e() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(LogRequest logRequest, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.a(b, logRequest.f());
            objectEncoderContext.a(c, logRequest.g());
            objectEncoderContext.d(f2982d, logRequest.a());
            objectEncoderContext.d(f2983e, logRequest.c());
            objectEncoderContext.d(f2984f, logRequest.d());
            objectEncoderContext.d(f2985g, logRequest.b());
            objectEncoderContext.d(h, logRequest.e());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class f implements ObjectEncoder<NetworkConnectionInfo> {
        static final f a = new f();
        private static final FieldDescriptor b = FieldDescriptor.of("networkType");
        private static final FieldDescriptor c = FieldDescriptor.of("mobileSubtype");

        private f() {
        }

        @Override // com.google.firebase.encoders.ObjectEncoder
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(NetworkConnectionInfo networkConnectionInfo, ObjectEncoderContext objectEncoderContext) throws IOException {
            objectEncoderContext.d(b, networkConnectionInfo.b());
            objectEncoderContext.d(c, networkConnectionInfo.a());
        }
    }

    private a() {
    }

    @Override // com.google.firebase.encoders.config.Configurator
    public void a(EncoderConfig<?> encoderConfig) {
        b bVar = b.a;
        encoderConfig.a(BatchedLogRequest.class, bVar);
        encoderConfig.a(com.google.android.datatransport.cct.internal.c.class, bVar);
        e eVar = e.a;
        encoderConfig.a(LogRequest.class, eVar);
        encoderConfig.a(com.google.android.datatransport.cct.internal.f.class, eVar);
        c cVar = c.a;
        encoderConfig.a(ClientInfo.class, cVar);
        encoderConfig.a(com.google.android.datatransport.cct.internal.d.class, cVar);
        C0221a c0221a = C0221a.a;
        encoderConfig.a(AndroidClientInfo.class, c0221a);
        encoderConfig.a(com.google.android.datatransport.cct.internal.b.class, c0221a);
        d dVar = d.a;
        encoderConfig.a(LogEvent.class, dVar);
        encoderConfig.a(com.google.android.datatransport.cct.internal.e.class, dVar);
        f fVar = f.a;
        encoderConfig.a(NetworkConnectionInfo.class, fVar);
        encoderConfig.a(h.class, fVar);
    }
}
