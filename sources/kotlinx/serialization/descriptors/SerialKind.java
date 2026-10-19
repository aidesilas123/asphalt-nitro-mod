package kotlinx.serialization.descriptors;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: kotlinx.serialization.descriptors.d, reason: from Kotlin metadata */
/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u0007\b\u0004¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0006H\u0016\u0082\u0001\u0005\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lkotlinx/serialization/descriptors/SerialKind;", "", "()V", "hashCode", "", "toString", "", "CONTEXTUAL", "ENUM", "Lkotlinx/serialization/descriptors/PolymorphicKind;", "Lkotlinx/serialization/descriptors/PrimitiveKind;", "Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;", "Lkotlinx/serialization/descriptors/SerialKind$ENUM;", "Lkotlinx/serialization/descriptors/StructureKind;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public abstract class SerialKind {

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.d$a */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;", "Lkotlinx/serialization/descriptors/SerialKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends SerialKind {
        public static final a a = new a();

        private a() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.d$b */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/SerialKind$ENUM;", "Lkotlinx/serialization/descriptors/SerialKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends SerialKind {
        public static final b a = new b();

        private b() {
            super(null);
        }
    }

    private SerialKind() {
    }

    public /* synthetic */ SerialKind(n nVar) {
        this();
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        String strS = Reflection.getOrCreateKotlinClass(getClass()).s();
        Intrinsics.checkNotNull(strS);
        return strS;
    }
}
