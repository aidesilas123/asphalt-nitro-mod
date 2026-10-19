package kotlin.reflect.jvm.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class KDeclarationContainerImpl implements ClassBasedDeclarationContainer {
    public static final a c = new a(null);
    private static final Class<?> a = Class.forName("kotlin.jvm.internal.n");
    private static final Regex b = new Regex("<v#(\\d+)>");

    /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
    protected enum MemberBelonginess {
        DECLARED,
        INHERITED;

        public final boolean a(CallableMemberDescriptor member) {
            Intrinsics.checkParameterIsNotNull(member, "member");
            CallableMemberDescriptor.Kind kind = member.getKind();
            Intrinsics.checkExpressionValueIsNotNull(kind, "member.kind");
            return kind.e() == (this == DECLARED);
        }
    }

    /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final Regex a() {
            return KDeclarationContainerImpl.b;
        }
    }

    /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
    public abstract class b {
        static final /* synthetic */ KProperty[] a = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(b.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};
        private final ReflectProperties.a b = ReflectProperties.lazySoft(new a());

        /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
        static final class a extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h invoke() {
                return ModuleByClassLoaderKt.getOrCreateModule(KDeclarationContainerImpl.this.a());
            }
        }

        public b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h a() {
            return (kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h) this.b.b(this, a[0]);
        }
    }

    /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
    static final class c extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.o, String> {
        public static final c a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(kotlin.reflect.jvm.internal.impl.descriptors.o descriptor) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            return DescriptorRenderer.i.p(descriptor) + " | " + r.b.g(descriptor).a();
        }
    }

    /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
    static final class d extends Lambda implements Function1<y, String> {
        public static final d a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(y descriptor) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            return DescriptorRenderer.i.p(descriptor) + " | " + r.b.f(descriptor).a();
        }
    }

    /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
    static final class e<T> implements Comparator<m0> {
        public static final e a = new e();

        e() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final int compare(m0 m0Var, m0 m0Var2) {
            Integer numCompare = Visibilities.compare(m0Var, m0Var2);
            if (numCompare != null) {
                return numCompare.intValue();
            }
            return 0;
        }
    }

    /* JADX INFO: compiled from: KDeclarationContainerImpl.kt */
    public static final class f extends kotlin.reflect.jvm.internal.impl.descriptors.impl.j<KCallableImpl<?>, v> {
        f() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public KCallableImpl<?> j(kotlin.reflect.jvm.internal.impl.descriptors.h descriptor, v data) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(data, "data");
            throw new IllegalStateException("No constructors should appear in this scope: " + descriptor);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.k
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public KCallableImpl<?> i(kotlin.reflect.jvm.internal.impl.descriptors.o descriptor, v data) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(data, "data");
            return new KFunctionImpl(KDeclarationContainerImpl.this, descriptor);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public KCallableImpl<?> c(y descriptor, v data) {
            Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
            Intrinsics.checkParameterIsNotNull(data, "data");
            return KDeclarationContainerImpl.this.l(descriptor);
        }
    }

    private final List<Class<?>> F(String str) {
        int iIndexOf$default;
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (str.charAt(i) != ')') {
            int i2 = i;
            while (str.charAt(i2) == '[') {
                i2++;
            }
            char cCharAt = str.charAt(i2);
            if (StringsKt__StringsKt.contains$default((CharSequence) "VZCBSIFJD", cCharAt, false, 2, (Object) null)) {
                iIndexOf$default = i2 + 1;
            } else {
                if (cCharAt != 'L') {
                    throw new o("Unknown type prefix in the method signature: " + str);
                }
                iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ';', i, false, 4, (Object) null) + 1;
            }
            arrayList.add(I(str, i, iIndexOf$default));
            i = iIndexOf$default;
        }
        return arrayList;
    }

    private final Class<?> G(String str) {
        return I(str, StringsKt__StringsKt.indexOf$default((CharSequence) str, ')', 0, false, 6, (Object) null) + 1, str.length());
    }

    private final Method H(Class<?> cls, String str, Class<?>[] clsArr, Class<?> cls2, boolean z) {
        Method methodH;
        if (z) {
            clsArr[0] = cls;
        }
        Method methodK = K(cls, str, clsArr, cls2);
        if (methodK != null) {
            return methodK;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null && (methodH = H(superclass, str, clsArr, cls2, z)) != null) {
            return methodH;
        }
        for (Class<?> superInterface : cls.getInterfaces()) {
            Intrinsics.checkExpressionValueIsNotNull(superInterface, "superInterface");
            Method methodH2 = H(superInterface, str, clsArr, cls2, z);
            if (methodH2 != null) {
                return methodH2;
            }
            if (z) {
                ClassLoader classLoader = superInterface.getClassLoader();
                Intrinsics.checkExpressionValueIsNotNull(classLoader, "superInterface.classLoader");
                Class<?> clsTryLoadClass = ReflectJavaClassFinderKt.tryLoadClass(classLoader, superInterface.getName() + "$DefaultImpls");
                if (clsTryLoadClass != null) {
                    clsArr[0] = superInterface;
                    Method methodK2 = K(clsTryLoadClass, str, clsArr, cls2);
                    if (methodK2 != null) {
                        return methodK2;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    private final Class<?> I(String str, int i, int i2) throws ClassNotFoundException {
        char cCharAt = str.charAt(i);
        if (cCharAt == 'F') {
            return Float.TYPE;
        }
        if (cCharAt == 'L') {
            ClassLoader safeClassLoader = ReflectClassUtilKt.getSafeClassLoader(a());
            String strSubstring = str.substring(i + 1, i2 - 1);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            Class<?> clsLoadClass = safeClassLoader.loadClass(StringsKt__StringsJVMKt.replace$default(strSubstring, '/', '.', false, 4, (Object) null));
            Intrinsics.checkExpressionValueIsNotNull(clsLoadClass, "jClass.safeClassLoader.l…d - 1).replace('/', '.'))");
            return clsLoadClass;
        }
        if (cCharAt == 'S') {
            return Short.TYPE;
        }
        if (cCharAt == 'V') {
            Class<?> cls = Void.TYPE;
            Intrinsics.checkExpressionValueIsNotNull(cls, "Void.TYPE");
            return cls;
        }
        if (cCharAt == 'I') {
            return Integer.TYPE;
        }
        if (cCharAt == 'J') {
            return Long.TYPE;
        }
        if (cCharAt == 'Z') {
            return Boolean.TYPE;
        }
        if (cCharAt == '[') {
            return ReflectClassUtilKt.createArrayType(I(str, i + 1, i2));
        }
        switch (cCharAt) {
            case 'B':
                return Byte.TYPE;
            case 'C':
                return Character.TYPE;
            case 'D':
                return Double.TYPE;
            default:
                throw new o("Unknown type prefix in the method signature: " + str);
        }
    }

    private final Constructor<?> J(Class<?> cls, List<? extends Class<?>> list) {
        try {
            Object[] array = list.toArray(new Class[0]);
            if (array == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            Class[] clsArr = (Class[]) array;
            return cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.reflect.Method K(java.lang.Class<?> r7, java.lang.String r8, java.lang.Class<?>[] r9, java.lang.Class<?> r10) {
        /*
            r6 = this;
            r0 = 0
            int r1 = r9.length     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.Object[] r1 = java.util.Arrays.copyOf(r9, r1)     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.Class[] r1 = (java.lang.Class[]) r1     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.reflect.Method r1 = r7.getDeclaredMethod(r8, r1)     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.String r2 = "result"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.Class r2 = r1.getReturnType()     // Catch: java.lang.NoSuchMethodException -> L5f
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r10)     // Catch: java.lang.NoSuchMethodException -> L5f
            if (r2 == 0) goto L1d
            r0 = r1
            goto L5f
        L1d:
            java.lang.reflect.Method[] r7 = r7.getDeclaredMethods()     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.String r1 = "declaredMethods"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r7, r1)     // Catch: java.lang.NoSuchMethodException -> L5f
            int r1 = r7.length     // Catch: java.lang.NoSuchMethodException -> L5f
            r2 = 0
            r3 = 0
        L29:
            if (r3 >= r1) goto L5f
            r4 = r7[r3]     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.String r5 = "method"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L5f
            java.lang.String r5 = r4.getName()     // Catch: java.lang.NoSuchMethodException -> L5f
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r8)     // Catch: java.lang.NoSuchMethodException -> L5f
            if (r5 == 0) goto L57
            java.lang.Class r5 = r4.getReturnType()     // Catch: java.lang.NoSuchMethodException -> L5f
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r10)     // Catch: java.lang.NoSuchMethodException -> L5f
            if (r5 == 0) goto L57
            java.lang.Class[] r5 = r4.getParameterTypes()     // Catch: java.lang.NoSuchMethodException -> L5f
            if (r5 != 0) goto L4f
            kotlin.jvm.internal.Intrinsics.throwNpe()     // Catch: java.lang.NoSuchMethodException -> L5f
        L4f:
            boolean r5 = java.util.Arrays.equals(r5, r9)     // Catch: java.lang.NoSuchMethodException -> L5f
            if (r5 == 0) goto L57
            r5 = 1
            goto L58
        L57:
            r5 = 0
        L58:
            if (r5 == 0) goto L5c
            r0 = r4
            goto L5f
        L5c:
            int r3 = r3 + 1
            goto L29
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KDeclarationContainerImpl.K(java.lang.Class, java.lang.String, java.lang.Class[], java.lang.Class):java.lang.reflect.Method");
    }

    private final void g(List<Class<?>> list, String str, boolean z) {
        list.addAll(F(str));
        int size = ((r5.size() + 32) - 1) / 32;
        for (int i = 0; i < size; i++) {
            Class<?> cls = Integer.TYPE;
            Intrinsics.checkExpressionValueIsNotNull(cls, "Integer.TYPE");
            list.add(cls);
        }
        Class cls2 = z ? a : Object.class;
        Intrinsics.checkExpressionValueIsNotNull(cls2, "if (isConstructor) DEFAU…RKER else Any::class.java");
        list.add(cls2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final KPropertyImpl<?> l(y yVar) {
        int i = (yVar.H() != null ? 1 : 0) + (yVar.K() != null ? 1 : 0);
        if (yVar.J()) {
            if (i == 0) {
                return new kotlin.reflect.jvm.internal.f(this, yVar);
            }
            if (i == 1) {
                return new g(this, yVar);
            }
            if (i == 2) {
                return new h(this, yVar);
            }
        } else {
            if (i == 0) {
                return new i(this, yVar);
            }
            if (i == 1) {
                return new j(this, yVar);
            }
            if (i == 2) {
                return new k(this, yVar);
            }
        }
        throw new o("Unsupported property: " + yVar);
    }

    public abstract Collection<kotlin.reflect.jvm.internal.impl.descriptors.o> A(Name name);

    public abstract y B(int i);

    /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final java.util.Collection<kotlin.reflect.jvm.internal.KCallableImpl<?>> C(kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope r8, kotlin.reflect.jvm.internal.KDeclarationContainerImpl.MemberBelonginess r9) {
        /*
            r7 = this;
            java.lang.String r0 = "scope"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r8, r0)
            java.lang.String r0 = "belonginess"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
            kotlin.reflect.jvm.internal.KDeclarationContainerImpl$f r0 = new kotlin.reflect.jvm.internal.KDeclarationContainerImpl$f
            r0.<init>()
            r1 = 0
            r2 = 3
            java.util.Collection r8 = kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope.DefaultImpls.getContributedDescriptors$default(r8, r1, r1, r2, r1)
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r8 = r8.iterator()
        L1e:
            boolean r3 = r8.hasNext()
            if (r3 == 0) goto L55
            java.lang.Object r3 = r8.next()
            kotlin.reflect.jvm.internal.impl.descriptors.i r3 = (kotlin.reflect.jvm.internal.impl.descriptors.i) r3
            boolean r4 = r3 instanceof kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
            if (r4 == 0) goto L4e
            r4 = r3
            kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r4 = (kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor) r4
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r5 = r4.getVisibility()
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r6 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.h
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r6)
            r5 = r5 ^ 1
            if (r5 == 0) goto L4e
            boolean r4 = r9.a(r4)
            if (r4 == 0) goto L4e
            kotlin.v r4 = kotlin.v.a
            java.lang.Object r3 = r3.w(r0, r4)
            kotlin.reflect.jvm.internal.KCallableImpl r3 = (kotlin.reflect.jvm.internal.KCallableImpl) r3
            goto L4f
        L4e:
            r3 = r1
        L4f:
            if (r3 == 0) goto L1e
            r2.add(r3)
            goto L1e
        L55:
            java.util.List r8 = kotlin.collections.p.toList(r2)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KDeclarationContainerImpl.C(kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.KDeclarationContainerImpl$MemberBelonginess):java.util.Collection");
    }

    protected Class<?> D() {
        Class<?> wrapperByPrimitive = ReflectClassUtilKt.getWrapperByPrimitive(a());
        return wrapperByPrimitive != null ? wrapperByPrimitive : a();
    }

    public abstract Collection<y> E(Name name);

    public final Constructor<?> o(String desc) {
        Intrinsics.checkParameterIsNotNull(desc, "desc");
        return J(a(), F(desc));
    }

    public final Constructor<?> u(String desc) {
        Intrinsics.checkParameterIsNotNull(desc, "desc");
        Class<?> clsA = a();
        ArrayList arrayList = new ArrayList();
        g(arrayList, desc, true);
        return J(clsA, arrayList);
    }

    public final Method v(String name, String desc, boolean z) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(desc, "desc");
        if (Intrinsics.areEqual(name, "<init>")) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(a());
        }
        g(arrayList, desc, false);
        Class<?> clsD = D();
        String str = name + "$default";
        Object[] array = arrayList.toArray(new Class[0]);
        if (array != null) {
            return H(clsD, str, (Class[]) array, G(desc), z);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.o w(String name, String signature) {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.o> collectionA;
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
        if (Intrinsics.areEqual(name, "<init>")) {
            collectionA = CollectionsKt___CollectionsKt.toList(z());
        } else {
            Name nameIdentifier = Name.identifier(name);
            Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(name)");
            collectionA = A(nameIdentifier);
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.o> collection = collectionA;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (Intrinsics.areEqual(r.b.g((kotlin.reflect.jvm.internal.impl.descriptors.o) obj).a(), signature)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() == 1) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.o) kotlin.collections.p.single((List) arrayList);
        }
        String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(collection, "\n", null, null, 0, null, c.a, 30, null);
        StringBuilder sb = new StringBuilder();
        sb.append("Function '");
        sb.append(name);
        sb.append("' (JVM signature: ");
        sb.append(signature);
        sb.append(") not resolved in ");
        sb.append(this);
        sb.append(':');
        sb.append(strJoinToString$default.length() == 0 ? " no members found" : '\n' + strJoinToString$default);
        throw new o(sb.toString());
    }

    public final Method x(String name, String desc) {
        Method methodH;
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(desc, "desc");
        if (Intrinsics.areEqual(name, "<init>")) {
            return null;
        }
        Object[] array = F(desc).toArray(new Class[0]);
        if (array == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        Class<?>[] clsArr = (Class[]) array;
        Class<?> clsG = G(desc);
        Method methodH2 = H(D(), name, clsArr, clsG, false);
        if (methodH2 != null) {
            return methodH2;
        }
        if (!D().isInterface() || (methodH = H(Object.class, name, clsArr, clsG, false)) == null) {
            return null;
        }
        return methodH;
    }

    public final y y(String name, String signature) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
        MatchResult matchResultD = b.d(signature);
        if (matchResultD != null) {
            String str = matchResultD.a().a().b().get(1);
            y yVarB = B(Integer.parseInt(str));
            if (yVarB != null) {
                return yVarB;
            }
            throw new o("Local property #" + str + " not found in " + a());
        }
        Name nameIdentifier = Name.identifier(name);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(name)");
        Collection<y> collectionE = E(nameIdentifier);
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionE) {
            if (Intrinsics.areEqual(r.b.f((y) obj).a(), signature)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            throw new o("Property '" + name + "' (JVM signature: " + signature + ") not resolved in " + this);
        }
        if (arrayList.size() == 1) {
            return (y) kotlin.collections.p.single((List) arrayList);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList) {
            m0 visibility = ((y) obj2).getVisibility();
            Object arrayList2 = linkedHashMap.get(visibility);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(visibility, arrayList2);
            }
            ((List) arrayList2).add(obj2);
        }
        Collection collectionValues = MapsKt__MapsJVMKt.toSortedMap(linkedHashMap, e.a).values();
        Intrinsics.checkExpressionValueIsNotNull(collectionValues, "properties\n             …                }).values");
        List mostVisibleProperties = (List) kotlin.collections.p.last(collectionValues);
        if (mostVisibleProperties.size() == 1) {
            Intrinsics.checkExpressionValueIsNotNull(mostVisibleProperties, "mostVisibleProperties");
            return (y) kotlin.collections.p.first(mostVisibleProperties);
        }
        Name nameIdentifier2 = Name.identifier(name);
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier2, "Name.identifier(name)");
        String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(E(nameIdentifier2), "\n", null, null, 0, null, d.a, 30, null);
        StringBuilder sb = new StringBuilder();
        sb.append("Property '");
        sb.append(name);
        sb.append("' (JVM signature: ");
        sb.append(signature);
        sb.append(") not resolved in ");
        sb.append(this);
        sb.append(':');
        sb.append(strJoinToString$default.length() == 0 ? " no members found" : '\n' + strJoinToString$default);
        throw new o(sb.toString());
    }

    public abstract Collection<kotlin.reflect.jvm.internal.impl.descriptors.h> z();
}
