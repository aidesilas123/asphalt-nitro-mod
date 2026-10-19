package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TypeSubstitution.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class TypeConstructorSubstitution extends j0 {
    public static final Companion c = new Companion(null);

    /* JADX INFO: compiled from: TypeSubstitution.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: TypeSubstitution.kt */
        public static final class a extends TypeConstructorSubstitution {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Map f9838d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            final /* synthetic */ boolean f9839e;

            a(Map map, boolean z) {
                this.f9838d = map;
                this.f9839e = z;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.j0
            public boolean a() {
                return this.f9839e;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.j0
            public boolean f() {
                return this.f9838d.isEmpty();
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
            public g0 h(f0 key) {
                Intrinsics.checkParameterIsNotNull(key, "key");
                return (g0) this.f9838d.get(key);
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public static /* synthetic */ TypeConstructorSubstitution createByConstructorsMap$default(Companion companion, Map map, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.c(map, z);
        }

        public final j0 a(u kotlinType) {
            Intrinsics.checkParameterIsNotNull(kotlinType, "kotlinType");
            return b(kotlinType.H0(), kotlinType.G0());
        }

        public final j0 b(f0 typeConstructor, List<? extends g0> arguments) {
            Intrinsics.checkParameterIsNotNull(typeConstructor, "typeConstructor");
            Intrinsics.checkParameterIsNotNull(arguments, "arguments");
            List<kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters = typeConstructor.getParameters();
            Intrinsics.checkExpressionValueIsNotNull(parameters, "typeConstructor.parameters");
            kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var = (kotlin.reflect.jvm.internal.impl.descriptors.i0) kotlin.collections.p.lastOrNull((List) parameters);
            if (!(i0Var != null ? i0Var.M() : false)) {
                return new s(parameters, arguments);
            }
            List<kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters2 = typeConstructor.getParameters();
            Intrinsics.checkExpressionValueIsNotNull(parameters2, "typeConstructor.parameters");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters2, 10));
            for (kotlin.reflect.jvm.internal.impl.descriptors.i0 it : parameters2) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList.add(it.i());
            }
            return createByConstructorsMap$default(this, MapsKt__MapsKt.toMap(CollectionsKt___CollectionsKt.zip(arrayList, arguments)), false, 2, null);
        }

        public final TypeConstructorSubstitution c(Map<f0, ? extends g0> map, boolean z) {
            Intrinsics.checkParameterIsNotNull(map, "map");
            return new a(map, z);
        }
    }

    public static final j0 create(f0 f0Var, List<? extends g0> list) {
        return c.b(f0Var, list);
    }

    public static final TypeConstructorSubstitution createByConstructorsMap(Map<f0, ? extends g0> map) {
        return Companion.createByConstructorsMap$default(c, map, false, 2, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public g0 e(u key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return h(key.H0());
    }

    public abstract g0 h(f0 f0Var);
}
