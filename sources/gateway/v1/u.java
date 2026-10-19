package gateway.v1;

import gateway.v1.ErrorOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ErrorKt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0001J\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lgateway/v1/ErrorKt$Dsl;", "", "_builder", "Lgateway/v1/ErrorOuterClass$Error$Builder;", "(Lgateway/v1/ErrorOuterClass$Error$Builder;)V", "value", "", "errorText", "getErrorText", "()Ljava/lang/String;", "setErrorText", "(Ljava/lang/String;)V", "_build", "Lgateway/v1/ErrorOuterClass$Error;", "clearErrorText", "", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class u {
    public static final a a = new a(null);
    private final ErrorOuterClass.Error.a b;

    /* JADX INFO: compiled from: ErrorKt.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgateway/v1/ErrorKt$Dsl$Companion;", "", "()V", "_create", "Lgateway/v1/ErrorKt$Dsl;", "builder", "Lgateway/v1/ErrorOuterClass$Error$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final /* synthetic */ u a(ErrorOuterClass.Error.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new u(builder, null);
        }
    }

    private u(ErrorOuterClass.Error.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ u(ErrorOuterClass.Error.a aVar, kotlin.jvm.internal.n nVar) {
        this(aVar);
    }

    public final /* synthetic */ ErrorOuterClass.Error a() {
        ErrorOuterClass.Error errorBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(errorBuild, "_builder.build()");
        return errorBuild;
    }

    public final void b(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }
}
