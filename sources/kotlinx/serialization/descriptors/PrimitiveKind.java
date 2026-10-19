package kotlinx.serialization.descriptors;

import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: kotlinx.serialization.descriptors.c, reason: from Kotlin metadata */
/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\t\u0003\u0004\u0005\u0006\u0007\b\t\n\u000bB\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\t\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014¨\u0006\u0015"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind;", "Lkotlinx/serialization/descriptors/SerialKind;", "()V", "BOOLEAN", "BYTE", "CHAR", "DOUBLE", "FLOAT", "INT", "LONG", "SHORT", "STRING", "Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;", "Lkotlinx/serialization/descriptors/PrimitiveKind$BYTE;", "Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;", "Lkotlinx/serialization/descriptors/PrimitiveKind$DOUBLE;", "Lkotlinx/serialization/descriptors/PrimitiveKind$FLOAT;", "Lkotlinx/serialization/descriptors/PrimitiveKind$INT;", "Lkotlinx/serialization/descriptors/PrimitiveKind$LONG;", "Lkotlinx/serialization/descriptors/PrimitiveKind$SHORT;", "Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public abstract class PrimitiveKind extends SerialKind {

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$a */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends PrimitiveKind {
        public static final a a = new a();

        private a() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$b */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$BYTE;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends PrimitiveKind {
        public static final b a = new b();

        private b() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$c */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$CHAR;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends PrimitiveKind {
        public static final c a = new c();

        private c() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$d */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$DOUBLE;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class d extends PrimitiveKind {
        public static final d a = new d();

        private d() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$e */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$FLOAT;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class e extends PrimitiveKind {
        public static final e a = new e();

        private e() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$f */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$INT;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class f extends PrimitiveKind {
        public static final f a = new f();

        private f() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$g */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$LONG;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class g extends PrimitiveKind {
        public static final g a = new g();

        private g() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$h */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$SHORT;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class h extends PrimitiveKind {
        public static final h a = new h();

        private h() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.c$i */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PrimitiveKind$STRING;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class i extends PrimitiveKind {
        public static final i a = new i();

        private i() {
            super(null);
        }
    }

    private PrimitiveKind() {
        super(null);
    }

    public /* synthetic */ PrimitiveKind(n nVar) {
        this();
    }
}
