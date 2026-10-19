package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: TypeSubstitution.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class j0 {
    public static final b b = new b(null);
    public static final j0 a = new a();

    /* JADX INFO: compiled from: TypeSubstitution.kt */
    public static final class a extends j0 {
        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.j0
        public /* bridge */ /* synthetic */ g0 e(u uVar) {
            return (g0) h(uVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.j0
        public boolean f() {
            return true;
        }

        public Void h(u key) {
            Intrinsics.checkParameterIsNotNull(key, "key");
            return null;
        }

        public String toString() {
            return "Empty TypeSubstitution";
        }
    }

    /* JADX INFO: compiled from: TypeSubstitution.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }

    public final TypeSubstitutor c() {
        TypeSubstitutor typeSubstitutorCreate = TypeSubstitutor.create(this);
        Intrinsics.checkExpressionValueIsNotNull(typeSubstitutorCreate, "TypeSubstitutor.create(this)");
        return typeSubstitutorCreate;
    }

    public Annotations d(Annotations annotations) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        return annotations;
    }

    public abstract g0 e(u uVar);

    public boolean f() {
        return false;
    }

    public u g(u topLevelType, Variance position) {
        Intrinsics.checkParameterIsNotNull(topLevelType, "topLevelType");
        Intrinsics.checkParameterIsNotNull(position, "position");
        return topLevelType;
    }
}
