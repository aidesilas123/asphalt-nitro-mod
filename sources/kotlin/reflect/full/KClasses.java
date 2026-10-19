package kotlin.reflect.full;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.NotImplementedError;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.KFunctionImpl;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.utils.DFS;
import kotlin.reflect.jvm.internal.o;

/* JADX INFO: compiled from: KClasses.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KClasses {

    /* JADX INFO: compiled from: KClasses.kt */
    static final class a<N> implements DFS.d<KType> {
        public static final a a = new a();

        /* JADX INFO: renamed from: kotlin.reflect.full.KClasses$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: KClasses.kt */
        static final class C0502a extends Lambda implements Function0 {
            public static final C0502a a = new C0502a();

            C0502a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Void invoke() {
                throw new NotImplementedError("An operation is not implemented: Java type for supertype");
            }
        }

        a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterable<KType> a(KType kType) {
            KClassifier kClassifierD = kType.d();
            if (!(kClassifierD instanceof KClass)) {
                kClassifierD = null;
            }
            KClass kClass = (KClass) kClassifierD;
            if (kClass == null) {
                throw new o("Supertype not a class: " + kType);
            }
            List<KType> listH = kClass.h();
            if (kType.k().isEmpty()) {
                return listH;
            }
            TypeSubstitutor typeSubstitutorCreate = TypeSubstitutor.create(((KTypeImpl) kType).j());
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listH, 10));
            for (KType kType2 : listH) {
                if (kType2 == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
                }
                u uVarI = typeSubstitutorCreate.i(((KTypeImpl) kType2).j(), Variance.INVARIANT);
                if (uVarI == null) {
                    throw new o("Type substitution failed: " + kType2 + " (" + kType + ')');
                }
                Intrinsics.checkExpressionValueIsNotNull(uVarI, "substitutor.substitute((…: $supertype ($current)\")");
                arrayList.add(new KTypeImpl(uVarI, C0502a.a));
            }
            return arrayList;
        }
    }

    /* JADX INFO: compiled from: KClasses.kt */
    public static final class b extends DFS.f<KType, KType> {
        b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.e
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public boolean c(KType current) {
            Intrinsics.checkParameterIsNotNull(current, "current");
            ((LinkedList) this.a).add(current);
            return true;
        }
    }

    /* JADX INFO: compiled from: KClasses.kt */
    static final class c extends Lambda implements Function0<Class<? extends Object>> {
        final /* synthetic */ KClass a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(KClass kClass) {
            super(0);
            this.a = kClass;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Class<? extends Object> invoke() {
            return ((KClassImpl) this.a).a();
        }
    }

    /* JADX INFO: compiled from: KClasses.kt */
    static final class d extends Lambda implements Function1<KClass<?>, Boolean> {
        final /* synthetic */ KClass a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(KClass kClass) {
            super(1);
            this.a = kClass;
        }

        public final boolean a(KClass<?> kClass) {
            return Intrinsics.areEqual(kClass, this.a);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(KClass<?> kClass) {
            return Boolean.valueOf(a(kClass));
        }
    }

    private static final boolean a(KCallableImpl<?> kCallableImpl) {
        return kCallableImpl.z().K() != null;
    }

    public static /* synthetic */ void allSuperclasses$annotations(KClass kClass) {
    }

    public static /* synthetic */ void allSupertypes$annotations(KClass kClass) {
    }

    private static final boolean b(KCallableImpl<?> kCallableImpl) {
        return !a(kCallableImpl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T cast(KClass<T> cast, Object obj) {
        Intrinsics.checkParameterIsNotNull(cast, "$this$cast");
        if (cast.q(obj)) {
            if (obj != 0) {
                return obj;
            }
            throw new TypeCastException("null cannot be cast to non-null type T");
        }
        throw new TypeCastException("Value cannot be cast to " + cast.r());
    }

    public static /* synthetic */ void companionObject$annotations(KClass kClass) {
    }

    public static /* synthetic */ void companionObjectInstance$annotations(KClass kClass) {
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0011 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> T createInstance(kotlin.reflect.KClass<T> r9) {
        /*
            java.lang.String r0 = "$this$createInstance"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
            java.util.Collection r0 = r9.f()
            java.util.Iterator r0 = r0.iterator()
            r1 = 0
            r2 = 0
            r4 = r2
            r3 = 0
        L11:
            boolean r5 = r0.hasNext()
            if (r5 == 0) goto L4e
            java.lang.Object r5 = r0.next()
            r6 = r5
            kotlin.reflect.KFunction r6 = (kotlin.reflect.KFunction) r6
            java.util.List r6 = r6.getParameters()
            boolean r7 = r6 instanceof java.util.Collection
            r8 = 1
            if (r7 == 0) goto L2f
            boolean r7 = r6.isEmpty()
            if (r7 == 0) goto L2f
        L2d:
            r6 = 1
            goto L46
        L2f:
            java.util.Iterator r6 = r6.iterator()
        L33:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L2d
            java.lang.Object r7 = r6.next()
            kotlin.reflect.KParameter r7 = (kotlin.reflect.KParameter) r7
            boolean r7 = r7.e()
            if (r7 != 0) goto L33
            r6 = 0
        L46:
            if (r6 == 0) goto L11
            if (r3 == 0) goto L4b
            goto L52
        L4b:
            r4 = r5
            r3 = 1
            goto L11
        L4e:
            if (r3 != 0) goto L51
            goto L52
        L51:
            r2 = r4
        L52:
            kotlin.reflect.KFunction r2 = (kotlin.reflect.KFunction) r2
            if (r2 == 0) goto L5f
            java.util.Map r9 = kotlin.collections.d0.emptyMap()
            java.lang.Object r9 = r2.callBy(r9)
            return r9
        L5f:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Class should have a single no-arg constructor: "
            r1.append(r2)
            r1.append(r9)
            java.lang.String r9 = r1.toString()
            r0.<init>(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.full.KClasses.createInstance(kotlin.reflect.KClass):java.lang.Object");
    }

    public static /* synthetic */ void declaredFunctions$annotations(KClass kClass) {
    }

    public static /* synthetic */ void declaredMemberExtensionFunctions$annotations(KClass kClass) {
    }

    public static /* synthetic */ void declaredMemberExtensionProperties$annotations(KClass kClass) {
    }

    public static /* synthetic */ void declaredMemberFunctions$annotations(KClass kClass) {
    }

    public static /* synthetic */ void declaredMemberProperties$annotations(KClass kClass) {
    }

    public static /* synthetic */ void declaredMembers$annotations(KClass kClass) {
    }

    public static /* synthetic */ void defaultType$annotations(KClass kClass) {
    }

    public static /* synthetic */ void functions$annotations(KClass kClass) {
    }

    public static final Collection<KClass<?>> getAllSuperclasses(KClass<?> allSuperclasses) {
        Intrinsics.checkParameterIsNotNull(allSuperclasses, "$this$allSuperclasses");
        Collection<KType> allSupertypes = getAllSupertypes(allSuperclasses);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(allSupertypes, 10));
        for (KType kType : allSupertypes) {
            KClassifier kClassifierD = kType.d();
            if (!(kClassifierD instanceof KClass)) {
                kClassifierD = null;
            }
            KClass kClass = (KClass) kClassifierD;
            if (kClass == null) {
                throw new o("Supertype not a class: " + kType);
            }
            arrayList.add(kClass);
        }
        return arrayList;
    }

    public static final Collection<KType> getAllSupertypes(KClass<?> allSupertypes) {
        Intrinsics.checkParameterIsNotNull(allSupertypes, "$this$allSupertypes");
        Object objDfs = DFS.dfs(allSupertypes.h(), a.a, new DFS.h(), new b());
        Intrinsics.checkExpressionValueIsNotNull(objDfs, "DFS.dfs(\n            sup…    }\n            }\n    )");
        return (Collection) objDfs;
    }

    public static final KClass<?> getCompanionObject(KClass<?> companionObject) {
        Object next;
        Intrinsics.checkParameterIsNotNull(companionObject, "$this$companionObject");
        Iterator<T> it = companionObject.m().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            KClass kClass = (KClass) next;
            if (kClass == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
            }
            if (((KClassImpl) kClass).getDescriptor().U()) {
                break;
            }
        }
        return (KClass) next;
    }

    public static final Object getCompanionObjectInstance(KClass<?> companionObjectInstance) {
        Intrinsics.checkParameterIsNotNull(companionObjectInstance, "$this$companionObjectInstance");
        KClass<?> companionObject = getCompanionObject(companionObjectInstance);
        if (companionObject != null) {
            return companionObject.p();
        }
        return null;
    }

    public static final Collection<KFunction<?>> getDeclaredFunctions(KClass<?> declaredFunctions) {
        Intrinsics.checkParameterIsNotNull(declaredFunctions, "$this$declaredFunctions");
        Collection<KCallableImpl<?>> collectionH = ((KClassImpl.Data) ((KClassImpl) declaredFunctions).M().c()).h();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionH) {
            if (obj instanceof KFunction) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final Collection<KFunction<?>> getDeclaredMemberExtensionFunctions(KClass<?> declaredMemberExtensionFunctions) {
        Intrinsics.checkParameterIsNotNull(declaredMemberExtensionFunctions, "$this$declaredMemberExtensionFunctions");
        Collection<KCallableImpl<?>> collectionI = ((KClassImpl.Data) ((KClassImpl) declaredMemberExtensionFunctions).M().c()).i();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionI) {
            KCallableImpl kCallableImpl = (KCallableImpl) obj;
            if (a(kCallableImpl) && (kCallableImpl instanceof KFunction)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> Collection<KProperty2<T, ?, ?>> getDeclaredMemberExtensionProperties(KClass<T> declaredMemberExtensionProperties) {
        Intrinsics.checkParameterIsNotNull(declaredMemberExtensionProperties, "$this$declaredMemberExtensionProperties");
        Collection<KCallableImpl<?>> collectionI = ((KClassImpl) declaredMemberExtensionProperties).M().c().i();
        ArrayList arrayList = new ArrayList();
        for (T t : collectionI) {
            KCallableImpl kCallableImpl = (KCallableImpl) t;
            if (a(kCallableImpl) && (kCallableImpl instanceof KProperty2)) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final Collection<KFunction<?>> getDeclaredMemberFunctions(KClass<?> declaredMemberFunctions) {
        Intrinsics.checkParameterIsNotNull(declaredMemberFunctions, "$this$declaredMemberFunctions");
        Collection<KCallableImpl<?>> collectionI = ((KClassImpl.Data) ((KClassImpl) declaredMemberFunctions).M().c()).i();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionI) {
            KCallableImpl kCallableImpl = (KCallableImpl) obj;
            if (b(kCallableImpl) && (kCallableImpl instanceof KFunction)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> Collection<KProperty1<T, ?>> getDeclaredMemberProperties(KClass<T> declaredMemberProperties) {
        Intrinsics.checkParameterIsNotNull(declaredMemberProperties, "$this$declaredMemberProperties");
        Collection<KCallableImpl<?>> collectionI = ((KClassImpl) declaredMemberProperties).M().c().i();
        ArrayList arrayList = new ArrayList();
        for (T t : collectionI) {
            KCallableImpl kCallableImpl = (KCallableImpl) t;
            if (b(kCallableImpl) && (kCallableImpl instanceof KProperty1)) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final Collection<KCallable<?>> getDeclaredMembers(KClass<?> declaredMembers) {
        Intrinsics.checkParameterIsNotNull(declaredMembers, "$this$declaredMembers");
        return ((KClassImpl.Data) ((KClassImpl) declaredMembers).M().c()).h();
    }

    public static final KType getDefaultType(KClass<?> defaultType) {
        Intrinsics.checkParameterIsNotNull(defaultType, "$this$defaultType");
        y yVarN = ((KClassImpl) defaultType).getDescriptor().n();
        Intrinsics.checkExpressionValueIsNotNull(yVarN, "(this as KClassImpl<*>).descriptor.defaultType");
        return new KTypeImpl(yVarN, new c(defaultType));
    }

    public static final Collection<KFunction<?>> getFunctions(KClass<?> functions) {
        Intrinsics.checkParameterIsNotNull(functions, "$this$functions");
        Collection<KCallable<?>> collectionI = functions.i();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionI) {
            if (obj instanceof KFunction) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final Collection<KFunction<?>> getMemberExtensionFunctions(KClass<?> memberExtensionFunctions) {
        Intrinsics.checkParameterIsNotNull(memberExtensionFunctions, "$this$memberExtensionFunctions");
        Collection<KCallableImpl<?>> collectionD = ((KClassImpl.Data) ((KClassImpl) memberExtensionFunctions).M().c()).d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionD) {
            KCallableImpl kCallableImpl = (KCallableImpl) obj;
            if (a(kCallableImpl) && (kCallableImpl instanceof KFunction)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> Collection<KProperty2<T, ?, ?>> getMemberExtensionProperties(KClass<T> memberExtensionProperties) {
        Intrinsics.checkParameterIsNotNull(memberExtensionProperties, "$this$memberExtensionProperties");
        Collection<KCallableImpl<?>> collectionD = ((KClassImpl) memberExtensionProperties).M().c().d();
        ArrayList arrayList = new ArrayList();
        for (T t : collectionD) {
            KCallableImpl kCallableImpl = (KCallableImpl) t;
            if (a(kCallableImpl) && (kCallableImpl instanceof KProperty2)) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final Collection<KFunction<?>> getMemberFunctions(KClass<?> memberFunctions) {
        Intrinsics.checkParameterIsNotNull(memberFunctions, "$this$memberFunctions");
        Collection<KCallableImpl<?>> collectionD = ((KClassImpl.Data) ((KClassImpl) memberFunctions).M().c()).d();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionD) {
            KCallableImpl kCallableImpl = (KCallableImpl) obj;
            if (b(kCallableImpl) && (kCallableImpl instanceof KFunction)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final <T> Collection<KProperty1<T, ?>> getMemberProperties(KClass<T> memberProperties) {
        Intrinsics.checkParameterIsNotNull(memberProperties, "$this$memberProperties");
        Collection<KCallableImpl<?>> collectionD = ((KClassImpl) memberProperties).M().c().d();
        ArrayList arrayList = new ArrayList();
        for (T t : collectionD) {
            KCallableImpl kCallableImpl = (KCallableImpl) t;
            if (b(kCallableImpl) && (kCallableImpl instanceof KProperty1)) {
                arrayList.add(t);
            }
        }
        return arrayList;
    }

    public static final <T> KFunction<T> getPrimaryConstructor(KClass<T> primaryConstructor) {
        T next;
        Intrinsics.checkParameterIsNotNull(primaryConstructor, "$this$primaryConstructor");
        Iterator<T> it = ((KClassImpl) primaryConstructor).f().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            KFunction kFunction = (KFunction) next;
            if (kFunction == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.jvm.internal.KFunctionImpl");
            }
            kotlin.reflect.jvm.internal.impl.descriptors.o oVarZ = ((KFunctionImpl) kFunction).z();
            if (oVarZ == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ConstructorDescriptor");
            }
            if (((h) oVarZ).V()) {
                break;
            }
        }
        return (KFunction) next;
    }

    public static final Collection<KFunction<?>> getStaticFunctions(KClass<?> staticFunctions) {
        Intrinsics.checkParameterIsNotNull(staticFunctions, "$this$staticFunctions");
        Collection<KCallableImpl<?>> collectionE = ((KClassImpl.Data) ((KClassImpl) staticFunctions).M().c()).e();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionE) {
            if (obj instanceof KFunction) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final Collection<KProperty0<?>> getStaticProperties(KClass<?> staticProperties) {
        Intrinsics.checkParameterIsNotNull(staticProperties, "$this$staticProperties");
        Collection<KCallableImpl<?>> collectionE = ((KClassImpl.Data) ((KClassImpl) staticProperties).M().c()).e();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionE) {
            KCallableImpl kCallableImpl = (KCallableImpl) obj;
            if (b(kCallableImpl) && (kCallableImpl instanceof KProperty0)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final List<KClass<?>> getSuperclasses(KClass<?> superclasses) {
        Intrinsics.checkParameterIsNotNull(superclasses, "$this$superclasses");
        List<KType> listH = superclasses.h();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listH.iterator();
        while (it.hasNext()) {
            KClassifier kClassifierD = ((KType) it.next()).d();
            if (!(kClassifierD instanceof KClass)) {
                kClassifierD = null;
            }
            KClass kClass = (KClass) kClassifierD;
            if (kClass != null) {
                arrayList.add(kClass);
            }
        }
        return arrayList;
    }

    public static final boolean isSubclassOf(KClass<?> isSubclassOf, KClass<?> base) {
        Intrinsics.checkParameterIsNotNull(isSubclassOf, "$this$isSubclassOf");
        Intrinsics.checkParameterIsNotNull(base, "base");
        if (!Intrinsics.areEqual(isSubclassOf, base)) {
            List listListOf = CollectionsKt__CollectionsJVMKt.listOf(isSubclassOf);
            KProperty1 kProperty1 = kotlin.reflect.full.c.a;
            Object dVar = kProperty1;
            if (kProperty1 != null) {
                dVar = new kotlin.reflect.full.d(kProperty1);
            }
            Boolean boolIfAny = DFS.ifAny(listListOf, (DFS.d) dVar, new d(base));
            Intrinsics.checkExpressionValueIsNotNull(boolIfAny, "DFS.ifAny(listOf(this), …erclasses) { it == base }");
            if (!boolIfAny.booleanValue()) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isSuperclassOf(KClass<?> isSuperclassOf, KClass<?> derived) {
        Intrinsics.checkParameterIsNotNull(isSuperclassOf, "$this$isSuperclassOf");
        Intrinsics.checkParameterIsNotNull(derived, "derived");
        return isSubclassOf(derived, isSuperclassOf);
    }

    public static /* synthetic */ void memberExtensionFunctions$annotations(KClass kClass) {
    }

    public static /* synthetic */ void memberExtensionProperties$annotations(KClass kClass) {
    }

    public static /* synthetic */ void memberFunctions$annotations(KClass kClass) {
    }

    public static /* synthetic */ void memberProperties$annotations(KClass kClass) {
    }

    public static /* synthetic */ void primaryConstructor$annotations(KClass kClass) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T safeCast(KClass<T> safeCast, Object obj) {
        Intrinsics.checkParameterIsNotNull(safeCast, "$this$safeCast");
        if (!safeCast.q(obj)) {
            return null;
        }
        if (obj != 0) {
            return obj;
        }
        throw new TypeCastException("null cannot be cast to non-null type T");
    }

    public static /* synthetic */ void staticFunctions$annotations(KClass kClass) {
    }

    public static /* synthetic */ void staticProperties$annotations(KClass kClass) {
    }

    public static /* synthetic */ void superclasses$annotations(KClass kClass) {
    }
}
