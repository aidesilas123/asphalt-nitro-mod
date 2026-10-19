package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: ProtoContainer.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class t {
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b a;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e b;
    private final d0 c;

    /* JADX INFO: compiled from: ProtoContainer.kt */
    public static final class a extends t {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ClassId f9807d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ProtoBuf$Class.Kind f9808e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f9809f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ProtoBuf$Class f9810g;
        private final a h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ProtoBuf$Class classProto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, d0 d0Var, a aVar) {
            super(nameResolver, typeTable, d0Var, null);
            Intrinsics.checkParameterIsNotNull(classProto, "classProto");
            Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
            Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
            this.f9810g = classProto;
            this.h = aVar;
            this.f9807d = NameResolverUtilKt.getClassId(nameResolver, classProto.h0());
            ProtoBuf$Class.Kind kindA = Flags.f9620e.a(classProto.g0());
            this.f9808e = kindA == null ? ProtoBuf$Class.Kind.CLASS : kindA;
            Boolean boolA = Flags.f9621f.a(classProto.g0());
            Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_INNER.get(classProto.flags)");
            this.f9809f = boolA.booleanValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.t
        public FqName a() {
            FqName fqNameB = this.f9807d.b();
            Intrinsics.checkExpressionValueIsNotNull(fqNameB, "classId.asSingleFqName()");
            return fqNameB;
        }

        public final ClassId e() {
            return this.f9807d;
        }

        public final ProtoBuf$Class f() {
            return this.f9810g;
        }

        public final ProtoBuf$Class.Kind g() {
            return this.f9808e;
        }

        public final a h() {
            return this.h;
        }

        public final boolean i() {
            return this.f9809f;
        }
    }

    /* JADX INFO: compiled from: ProtoContainer.kt */
    public static final class b extends t {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final FqName f9811d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(FqName fqName, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, d0 d0Var) {
            super(nameResolver, typeTable, d0Var, null);
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
            Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
            this.f9811d = fqName;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.t
        public FqName a() {
            return this.f9811d;
        }
    }

    private t(kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, d0 d0Var) {
        this.a = bVar;
        this.b = eVar;
        this.c = d0Var;
    }

    public /* synthetic */ t(kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, d0 d0Var, kotlin.jvm.internal.n nVar) {
        this(bVar, eVar, d0Var);
    }

    public abstract FqName a();

    public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.b b() {
        return this.a;
    }

    public final d0 c() {
        return this.c;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.e d() {
        return this.b;
    }

    public String toString() {
        return getClass().getSimpleName() + ": " + a();
    }
}
