package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.q;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: IntersectionType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeIntersector {
    public static final TypeIntersector a = new TypeIntersector();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: IntersectionType.kt */
    private static final class ResultNullability {
        public static final ResultNullability a;
        public static final ResultNullability b;
        public static final ResultNullability c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final ResultNullability f9850d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ ResultNullability[] f9851e;

        /* JADX INFO: compiled from: IntersectionType.kt */
        static final class a extends ResultNullability {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public ResultNullability a(m0 nextType) {
                Intrinsics.checkParameterIsNotNull(nextType, "nextType");
                return b(nextType);
            }
        }

        /* JADX INFO: compiled from: IntersectionType.kt */
        static final class b extends ResultNullability {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public b a(m0 nextType) {
                Intrinsics.checkParameterIsNotNull(nextType, "nextType");
                return this;
            }
        }

        /* JADX INFO: compiled from: IntersectionType.kt */
        static final class c extends ResultNullability {
            c(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public ResultNullability a(m0 nextType) {
                Intrinsics.checkParameterIsNotNull(nextType, "nextType");
                return b(nextType);
            }
        }

        /* JADX INFO: compiled from: IntersectionType.kt */
        static final class d extends ResultNullability {
            d(String str, int i) {
                super(str, i, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            public ResultNullability a(m0 nextType) {
                Intrinsics.checkParameterIsNotNull(nextType, "nextType");
                ResultNullability resultNullabilityB = b(nextType);
                return resultNullabilityB == ResultNullability.b ? this : resultNullabilityB;
            }
        }

        static {
            c cVar = new c("START", 0);
            a = cVar;
            a aVar = new a("ACCEPT_NULL", 1);
            b = aVar;
            d dVar = new d("UNKNOWN", 2);
            c = dVar;
            b bVar = new b("NOT_NULL", 3);
            f9850d = bVar;
            f9851e = new ResultNullability[]{cVar, aVar, dVar, bVar};
        }

        private ResultNullability(String str, int i) {
        }

        public /* synthetic */ ResultNullability(String str, int i, kotlin.jvm.internal.n nVar) {
            this(str, i);
        }

        public static ResultNullability valueOf(String str) {
            return (ResultNullability) Enum.valueOf(ResultNullability.class, str);
        }

        public static ResultNullability[] values() {
            return (ResultNullability[]) f9851e.clone();
        }

        public abstract ResultNullability a(m0 m0Var);

        protected final ResultNullability b(m0 resultNullability) {
            Intrinsics.checkParameterIsNotNull(resultNullability, "$this$resultNullability");
            return resultNullability.I0() ? b : h.a.a(resultNullability) ? f9850d : c;
        }
    }

    /* JADX INFO: compiled from: IntersectionType.kt */
    static final class a extends Lambda implements Function0<String> {
        final /* synthetic */ Set a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set) {
            super(0);
            this.a = set;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return "This collections cannot be empty! input types: " + CollectionsKt___CollectionsKt.joinToString$default(this.a, null, null, null, 0, null, null, 63, null);
        }
    }

    /* JADX INFO: compiled from: IntersectionType.kt */
    static final /* synthetic */ class b extends q implements Function2<u, u, Boolean> {
        b(TypeIntersector typeIntersector) {
            super(2, typeIntersector);
        }

        public final boolean a(u p1, u p2) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            Intrinsics.checkParameterIsNotNull(p2, "p2");
            return ((TypeIntersector) this.receiver).d(p1, p2);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "isStrictSupertype";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(TypeIntersector.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(u uVar, u uVar2) {
            return Boolean.valueOf(a(uVar, uVar2));
        }
    }

    /* JADX INFO: compiled from: IntersectionType.kt */
    static final /* synthetic */ class c extends q implements Function2<u, u, Boolean> {
        c(g gVar) {
            super(2, gVar);
        }

        public final boolean a(u p1, u p2) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            Intrinsics.checkParameterIsNotNull(p2, "p2");
            return ((g) this.receiver).b(p1, p2);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "equalTypes";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(g.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z";
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Boolean invoke(u uVar, u uVar2) {
            return Boolean.valueOf(a(uVar, uVar2));
        }
    }

    private TypeIntersector() {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.Collection<kotlin.reflect.jvm.internal.impl.types.y> a(java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.types.y> r8, kotlin.jvm.functions.Function2<? super kotlin.reflect.jvm.internal.impl.types.y, ? super kotlin.reflect.jvm.internal.impl.types.y, java.lang.Boolean> r9) {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r8)
            java.util.Iterator r8 = r0.iterator()
            java.lang.String r1 = "filteredTypes.iterator()"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r8, r1)
        Le:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L57
            java.lang.Object r1 = r8.next()
            kotlin.reflect.jvm.internal.impl.types.y r1 = (kotlin.reflect.jvm.internal.impl.types.y) r1
            boolean r2 = r0.isEmpty()
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L24
        L22:
            r3 = 0
            goto L51
        L24:
            java.util.Iterator r2 = r0.iterator()
        L28:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L22
            java.lang.Object r5 = r2.next()
            kotlin.reflect.jvm.internal.impl.types.y r5 = (kotlin.reflect.jvm.internal.impl.types.y) r5
            if (r5 == r1) goto L4e
            java.lang.String r6 = "lower"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r5, r6)
            java.lang.String r6 = "upper"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r6)
            java.lang.Object r5 = r9.invoke(r5, r1)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L4e
            r5 = 1
            goto L4f
        L4e:
            r5 = 0
        L4f:
            if (r5 == 0) goto L28
        L51:
            if (r3 == 0) goto Le
            r8.remove()
            goto Le
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.a(java.util.Collection, kotlin.jvm.b.p):java.util.Collection");
    }

    private final y c(Set<? extends y> set) {
        if (set.size() == 1) {
            return (y) p.single(set);
        }
        new a(set);
        Collection<y> collectionA = a(set, new b(this));
        collectionA.isEmpty();
        y yVarB = IntegerLiteralTypeConstructor.a.b(collectionA);
        if (yVarB != null) {
            return yVarB;
        }
        Collection<y> collectionA2 = a(collectionA, new c(f.b.a()));
        collectionA2.isEmpty();
        return collectionA2.size() < 2 ? (y) p.single(collectionA2) : new t(set).f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean d(u uVar, u uVar2) {
        g gVarA = f.b.a();
        return gVarA.d(uVar, uVar2) && !gVarA.d(uVar2, uVar);
    }

    public final y b(List<? extends y> types) {
        Intrinsics.checkParameterIsNotNull(types, "types");
        types.size();
        ArrayList<y> arrayList = new ArrayList();
        for (y yVar : types) {
            if (yVar.H0() instanceof t) {
                Collection<u> collectionH = yVar.H0().h();
                Intrinsics.checkExpressionValueIsNotNull(collectionH, "type.constructor.supertypes");
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionH, 10));
                for (u it : collectionH) {
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    y yVarUpperIfFlexible = FlexibleTypesKt.upperIfFlexible(it);
                    if (yVar.I0()) {
                        yVarUpperIfFlexible = yVarUpperIfFlexible.L0(true);
                    }
                    arrayList2.add(yVarUpperIfFlexible);
                }
                arrayList.addAll(arrayList2);
            } else {
                arrayList.add(yVar);
            }
        }
        ResultNullability resultNullabilityA = ResultNullability.a;
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            resultNullabilityA = resultNullabilityA.a((m0) it2.next());
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (y yVarMakeSimpleTypeDefinitelyNotNullOrNotNull : arrayList) {
            if (resultNullabilityA == ResultNullability.f9850d) {
                yVarMakeSimpleTypeDefinitelyNotNullOrNotNull = SpecialTypesKt.makeSimpleTypeDefinitelyNotNullOrNotNull(yVarMakeSimpleTypeDefinitelyNotNullOrNotNull);
            }
            linkedHashSet.add(yVarMakeSimpleTypeDefinitelyNotNullOrNotNull);
        }
        return c(linkedHashSet);
    }
}
