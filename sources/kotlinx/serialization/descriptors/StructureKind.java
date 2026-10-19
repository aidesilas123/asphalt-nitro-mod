package kotlinx.serialization.descriptors;

import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: kotlinx.serialization.descriptors.e, reason: from Kotlin metadata */
/* JADX INFO: compiled from: SerialKinds.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lkotlinx/serialization/descriptors/StructureKind;", "Lkotlinx/serialization/descriptors/SerialKind;", "()V", "CLASS", "LIST", "MAP", "OBJECT", "Lkotlinx/serialization/descriptors/StructureKind$CLASS;", "Lkotlinx/serialization/descriptors/StructureKind$LIST;", "Lkotlinx/serialization/descriptors/StructureKind$MAP;", "Lkotlinx/serialization/descriptors/StructureKind$OBJECT;", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
public abstract class StructureKind extends SerialKind {

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.e$a */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/StructureKind$CLASS;", "Lkotlinx/serialization/descriptors/StructureKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class a extends StructureKind {
        public static final a a = new a();

        private a() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.e$b */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/StructureKind$LIST;", "Lkotlinx/serialization/descriptors/StructureKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class b extends StructureKind {
        public static final b a = new b();

        private b() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.e$c */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/StructureKind$MAP;", "Lkotlinx/serialization/descriptors/StructureKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class c extends StructureKind {
        public static final c a = new c();

        private c() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.descriptors.e$d */
    /* JADX INFO: compiled from: SerialKinds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/serialization/descriptors/StructureKind$OBJECT;", "Lkotlinx/serialization/descriptors/StructureKind;", "()V", "kotlinx-serialization-core"}, mv = {1, 7, 1}, xi = 48)
    public static final class d extends StructureKind {
        public static final d a = new d();

        private d() {
            super(null);
        }
    }

    private StructureKind() {
        super(null);
    }

    public /* synthetic */ StructureKind(n nVar) {
        this();
    }
}
