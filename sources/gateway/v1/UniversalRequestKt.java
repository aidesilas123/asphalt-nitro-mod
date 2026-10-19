package gateway.v1;

import gateway.v1.UniversalRequestOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: gateway.v1.s0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: UniversalRequestKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u000f\u0010\u0011B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\nJ*\u0010\u000b\u001a\u00020\f2\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0002\b\tH\u0087\bø\u0001\u0000¢\u0006\u0002\b\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"Lgateway/v1/UniversalRequestKt;", "", "()V", "payload", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "block", "Lkotlin/Function1;", "Lgateway/v1/UniversalRequestKt$PayloadKt$Dsl;", "", "Lkotlin/ExtensionFunctionType;", "-initializepayload", "sharedData", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "Lgateway/v1/UniversalRequestKt$SharedDataKt$Dsl;", "-initializesharedData", "Dsl", "PayloadKt", "SharedDataKt", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class UniversalRequestKt {
    public static final UniversalRequestKt a = new UniversalRequestKt();

    /* JADX INFO: renamed from: gateway.v1.s0$a */
    /* JADX INFO: compiled from: UniversalRequestKt.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0012\u001a\u00020\u0013H\u0001J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\f8G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lgateway/v1/UniversalRequestKt$Dsl;", "", "_builder", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;)V", "value", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "payload", "getPayload", "()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;", "setPayload", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Payload;)V", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "sharedData", "getSharedData", "()Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;", "setSharedData", "(Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V", "_build", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;", "clearPayload", "", "clearSharedData", "hasPayload", "", "hasSharedData", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        public static final C0469a a = new C0469a(null);
        private final UniversalRequestOuterClass.UniversalRequest.a b;

        /* JADX INFO: renamed from: gateway.v1.s0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: UniversalRequestKt.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/UniversalRequestKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/UniversalRequestKt$Dsl;", "builder", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
        public static final class C0469a {
            private C0469a() {
            }

            public /* synthetic */ C0469a(kotlin.jvm.internal.n nVar) {
                this();
            }

            public final /* synthetic */ a a(UniversalRequestOuterClass.UniversalRequest.a builder) {
                Intrinsics.checkNotNullParameter(builder, "builder");
                return new a(builder, null);
            }
        }

        private a(UniversalRequestOuterClass.UniversalRequest.a aVar) {
            this.b = aVar;
        }

        public /* synthetic */ a(UniversalRequestOuterClass.UniversalRequest.a aVar, kotlin.jvm.internal.n nVar) {
            this(aVar);
        }

        public final /* synthetic */ UniversalRequestOuterClass.UniversalRequest a() {
            UniversalRequestOuterClass.UniversalRequest universalRequestBuild = this.b.build();
            Intrinsics.checkNotNullExpressionValue(universalRequestBuild, "_builder.build()");
            return universalRequestBuild;
        }

        public final void b(UniversalRequestOuterClass.UniversalRequest.Payload value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.b(value);
        }

        public final void c(UniversalRequestOuterClass.UniversalRequest.SharedData value) {
            Intrinsics.checkNotNullParameter(value, "value");
            this.b.d(value);
        }
    }

    private UniversalRequestKt() {
    }
}
