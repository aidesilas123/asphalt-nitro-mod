package defpackage;

import com.google.protobuf.ByteString;
import defpackage.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: ByteStringStoreKt.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\f\u001a\u00020\rH\u0001J\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"LByteStringStoreKt$Dsl;", "", "_builder", "LByteStringStoreOuterClass$ByteStringStore$Builder;", "(LByteStringStoreOuterClass$ByteStringStore$Builder;)V", "value", "Lcom/google/protobuf/ByteString;", "data", "getData", "()Lcom/google/protobuf/ByteString;", "setData", "(Lcom/google/protobuf/ByteString;)V", "_build", "LByteStringStoreOuterClass$ByteStringStore;", "clearData", "", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class b {
    public static final a a = new a(null);
    private final ByteStringStoreOuterClass.ByteStringStore.a b;

    /* JADX INFO: compiled from: ByteStringStoreKt.kt */
    /* JADX INFO: loaded from: classes2.dex */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"LByteStringStoreKt$Dsl$Companion;", "", "()V", "_create", "LByteStringStoreKt$Dsl;", "builder", "LByteStringStoreOuterClass$ByteStringStore$Builder;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final /* synthetic */ b a(ByteStringStoreOuterClass.ByteStringStore.a builder) {
            Intrinsics.checkNotNullParameter(builder, "builder");
            return new b(builder, null);
        }
    }

    private b(ByteStringStoreOuterClass.ByteStringStore.a aVar) {
        this.b = aVar;
    }

    public /* synthetic */ b(ByteStringStoreOuterClass.ByteStringStore.a aVar, n nVar) {
        this(aVar);
    }

    public final /* synthetic */ ByteStringStoreOuterClass.ByteStringStore a() {
        ByteStringStoreOuterClass.ByteStringStore byteStringStoreBuild = this.b.build();
        Intrinsics.checkNotNullExpressionValue(byteStringStoreBuild, "_builder.build()");
        return byteStringStoreBuild;
    }

    public final void b(ByteString value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.b.b(value);
    }
}
