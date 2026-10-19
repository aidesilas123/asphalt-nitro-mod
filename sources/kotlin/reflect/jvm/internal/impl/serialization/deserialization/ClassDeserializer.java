package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Set;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: compiled from: ClassDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ClassDeserializer {
    private final Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f9774d;
    public static final b b = new b(null);
    private static final Set<ClassId> a = SetsKt__SetsJVMKt.setOf(ClassId.topLevel(KotlinBuiltIns.h.c.l()));

    /* JADX INFO: compiled from: ClassDeserializer.kt */
    private static final class a {
        private final ClassId a;
        private final g b;

        public a(ClassId classId, g gVar) {
            Intrinsics.checkParameterIsNotNull(classId, "classId");
            this.a = classId;
            this.b = gVar;
        }

        public final g a() {
            return this.b;
        }

        public final ClassId b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    /* JADX INFO: compiled from: ClassDeserializer.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final Set<ClassId> a() {
            return ClassDeserializer.a;
        }
    }

    /* JADX INFO: compiled from: ClassDeserializer.kt */
    static final class c extends Lambda implements Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke(a key) {
            Intrinsics.checkParameterIsNotNull(key, "key");
            return ClassDeserializer.this.a(key);
        }
    }

    public ClassDeserializer(j components) {
        Intrinsics.checkParameterIsNotNull(components, "components");
        this.f9774d = components;
        this.c = components.t().g(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00b9 A[EDGE_INSN: B:51:0x00b9->B:42:0x00b9 BREAK  A[LOOP:1: B:30:0x0091->B:55:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[LOOP:1: B:30:0x0091->B:55:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer.a r13) {
        /*
            Method dump skipped, instruction units count: 241
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer.a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDeserializer$a):kotlin.reflect.jvm.internal.impl.descriptors.d");
    }

    public static /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d deserializeClass$default(ClassDeserializer classDeserializer, ClassId classId, g gVar, int i, Object obj) {
        if ((i & 2) != 0) {
            gVar = null;
        }
        return classDeserializer.b(classId, gVar);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d b(ClassId classId, g gVar) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        return this.c.invoke(new a(classId, gVar));
    }
}
