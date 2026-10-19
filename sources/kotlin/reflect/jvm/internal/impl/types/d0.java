package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TypeAliasExpansion.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d0 {
    public static final a a = new a(null);
    private final d0 b;
    private final kotlin.reflect.jvm.internal.impl.descriptors.h0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<g0> f9859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<kotlin.reflect.jvm.internal.impl.descriptors.i0, g0> f9860e;

    /* JADX INFO: compiled from: TypeAliasExpansion.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final d0 a(d0 d0Var, kotlin.reflect.jvm.internal.impl.descriptors.h0 typeAliasDescriptor, List<? extends g0> arguments) {
            Intrinsics.checkParameterIsNotNull(typeAliasDescriptor, "typeAliasDescriptor");
            Intrinsics.checkParameterIsNotNull(arguments, "arguments");
            f0 f0VarI = typeAliasDescriptor.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "typeAliasDescriptor.typeConstructor");
            List<kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters = f0VarI.getParameters();
            Intrinsics.checkExpressionValueIsNotNull(parameters, "typeAliasDescriptor.typeConstructor.parameters");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10));
            for (kotlin.reflect.jvm.internal.impl.descriptors.i0 it : parameters) {
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                arrayList.add(it.a());
            }
            return new d0(d0Var, typeAliasDescriptor, arguments, MapsKt__MapsKt.toMap(CollectionsKt___CollectionsKt.zip(arrayList, arguments)), null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d0(d0 d0Var, kotlin.reflect.jvm.internal.impl.descriptors.h0 h0Var, List<? extends g0> list, Map<kotlin.reflect.jvm.internal.impl.descriptors.i0, ? extends g0> map) {
        this.b = d0Var;
        this.c = h0Var;
        this.f9859d = list;
        this.f9860e = map;
    }

    public /* synthetic */ d0(d0 d0Var, kotlin.reflect.jvm.internal.impl.descriptors.h0 h0Var, List list, Map map, kotlin.jvm.internal.n nVar) {
        this(d0Var, h0Var, list, map);
    }

    public final List<g0> a() {
        return this.f9859d;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.h0 b() {
        return this.c;
    }

    public final g0 c(f0 constructor) {
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = constructor.q();
        if (fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0) {
            return this.f9860e.get(fVarQ);
        }
        return null;
    }

    public final boolean d(kotlin.reflect.jvm.internal.impl.descriptors.h0 descriptor) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        if (!Intrinsics.areEqual(this.c, descriptor)) {
            d0 d0Var = this.b;
            if (!(d0Var != null ? d0Var.d(descriptor) : false)) {
                return false;
            }
        }
        return true;
    }
}
