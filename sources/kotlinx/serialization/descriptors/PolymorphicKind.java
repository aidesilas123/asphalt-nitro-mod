package kotlinx.serialization.descriptors;

import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: kotlinx.serialization.descriptors.b, reason: from Kotlin metadata */
/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/serialization/descriptors/PolymorphicKind;", "Lkotlinx/serialization/descriptors/SerialKind;", "()V", "OPEN", "SEALED", "Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;", "Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public abstract class PolymorphicKind extends SerialKind {

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.b$a */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;", "Lkotlinx/serialization/descriptors/PolymorphicKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends PolymorphicKind {
        public static final a a = new a();

        private a() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.b$b */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;", "Lkotlinx/serialization/descriptors/PolymorphicKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends PolymorphicKind {
        public static final b a = new b();

        private b() {
            super(null);
        }
    }

    private PolymorphicKind() {
        super(null);
    }

    public /* synthetic */ PolymorphicKind(n nVar) {
        this();
    }
}
