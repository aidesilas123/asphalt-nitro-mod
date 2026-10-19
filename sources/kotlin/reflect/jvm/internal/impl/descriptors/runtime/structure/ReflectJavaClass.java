package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.n0;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaModifierListOwner;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: ReflectJavaClass.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectJavaClass extends j implements ReflectJavaAnnotationOwner, ReflectJavaModifierListOwner, kotlin.reflect.jvm.internal.impl.load.java.structure.f {
    private final Class<?> a;

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final /* synthetic */ class a extends kotlin.jvm.internal.q implements Function1<Member, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(Member p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return p1.isSynthetic();
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "isSynthetic";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(Member.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "isSynthetic()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Member member) {
            return Boolean.valueOf(a(member));
        }
    }

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final /* synthetic */ class b extends kotlin.jvm.internal.q implements Function1<Constructor<?>, i> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final i invoke(Constructor<?> p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return new i(p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(i.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Constructor;)V";
        }
    }

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final /* synthetic */ class c extends kotlin.jvm.internal.q implements Function1<Member, Boolean> {
        public static final c a = new c();

        c() {
            super(1);
        }

        public final boolean a(Member p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return p1.isSynthetic();
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "isSynthetic";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(Member.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "isSynthetic()Z";
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Member member) {
            return Boolean.valueOf(a(member));
        }
    }

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final /* synthetic */ class d extends kotlin.jvm.internal.q implements Function1<Field, l> {
        public static final d a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final l invoke(Field p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return new l(p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(l.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Field;)V";
        }
    }

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final class e extends Lambda implements Function1<Class<?>, Boolean> {
        public static final e a = new e();

        e() {
            super(1);
        }

        public final boolean a(Class<?> it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            String simpleName = it.getSimpleName();
            Intrinsics.checkExpressionValueIsNotNull(simpleName, "it.simpleName");
            return simpleName.length() == 0;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Class<?> cls) {
            return Boolean.valueOf(a(cls));
        }
    }

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final class f extends Lambda implements Function1<Class<?>, Name> {
        public static final f a = new f();

        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Name invoke(Class<?> it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            String simpleName = it.getSimpleName();
            if (!Name.isValidIdentifier(simpleName)) {
                simpleName = null;
            }
            if (simpleName != null) {
                return Name.identifier(simpleName);
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final class g extends Lambda implements Function1<Method, Boolean> {
        g() {
            super(1);
        }

        public final boolean a(Method method) {
            Intrinsics.checkExpressionValueIsNotNull(method, "method");
            return (method.isSynthetic() || (ReflectJavaClass.this.r() && ReflectJavaClass.this.P(method))) ? false : true;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(Method method) {
            return Boolean.valueOf(a(method));
        }
    }

    /* JADX INFO: compiled from: ReflectJavaClass.kt */
    static final /* synthetic */ class h extends kotlin.jvm.internal.q implements Function1<Method, o> {
        public static final h a = new h();

        h() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final o invoke(Method p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return new o(p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(o.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "<init>(Ljava/lang/reflect/Method;)V";
        }
    }

    public ReflectJavaClass(Class<?> klass) {
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        this.a = klass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean P(Method method) {
        String name = method.getName();
        if (name != null) {
            int iHashCode = name.hashCode();
            if (iHashCode != -823812830) {
                if (iHashCode == 231605032 && name.equals("valueOf")) {
                    return Arrays.equals(method.getParameterTypes(), new Class[]{String.class});
                }
            } else if (name.equals("values")) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                Intrinsics.checkExpressionValueIsNotNull(parameterTypes, "method.parameterTypes");
                if (parameterTypes.length == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    public boolean D() {
        return this.a.isInterface();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    public LightClassOriginKind E() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public List<i> f() {
        Constructor<?>[] declaredConstructors = this.a.getDeclaredConstructors();
        Intrinsics.checkExpressionValueIsNotNull(declaredConstructors, "klass.declaredConstructors");
        return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.map(SequencesKt___SequencesKt.filterNot(ArraysKt___ArraysKt.asSequence(declaredConstructors), a.a), b.a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public boolean J() {
        return ReflectJavaModifierListOwner.DefaultImpls.isStatic(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public Class<?> c() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public List<l> t() {
        Field[] declaredFields = this.a.getDeclaredFields();
        Intrinsics.checkExpressionValueIsNotNull(declaredFields, "klass.declaredFields");
        return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.map(SequencesKt___SequencesKt.filterNot(ArraysKt___ArraysKt.asSequence(declaredFields), c.a), d.a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public List<Name> v() {
        Class<?>[] declaredClasses = this.a.getDeclaredClasses();
        Intrinsics.checkExpressionValueIsNotNull(declaredClasses, "klass.declaredClasses");
        return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.filterNot(ArraysKt___ArraysKt.asSequence(declaredClasses), e.a), f.a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public List<o> w() {
        Method[] declaredMethods = this.a.getDeclaredMethods();
        Intrinsics.checkExpressionValueIsNotNull(declaredMethods, "klass.declaredMethods");
        return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.map(SequencesKt___SequencesKt.filter(ArraysKt___ArraysKt.asSequence(declaredMethods), new g()), h.a));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public ReflectJavaClass j() {
        Class<?> declaringClass = this.a.getDeclaringClass();
        if (declaringClass != null) {
            return new ReflectJavaClass(declaringClass);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    public FqName e() {
        FqName fqNameB = ReflectClassUtilKt.getClassId(this.a).b();
        Intrinsics.checkExpressionValueIsNotNull(fqNameB, "klass.classId.asSingleFqName()");
        return fqNameB;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ReflectJavaClass) && Intrinsics.areEqual(this.a, ((ReflectJavaClass) obj).a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaModifierListOwner
    public int getModifiers() {
        return this.a.getModifiers();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.q
    public Name getName() {
        Name nameIdentifier = Name.identifier(this.a.getSimpleName());
        Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(klass.simpleName)");
        return nameIdentifier;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.v
    public List<s> getTypeParameters() {
        TypeVariable<Class<?>>[] typeParameters = this.a.getTypeParameters();
        Intrinsics.checkExpressionValueIsNotNull(typeParameters, "klass.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Class<?>> typeVariable : typeParameters) {
            arrayList.add(new s(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public m0 getVisibility() {
        return ReflectJavaModifierListOwner.DefaultImpls.getVisibility(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.i> h() {
        Class cls;
        cls = Object.class;
        if (Intrinsics.areEqual(this.a, cls)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        n0 n0Var = new n0(2);
        Type genericSuperclass = this.a.getGenericSuperclass();
        n0Var.a(genericSuperclass != null ? genericSuperclass : Object.class);
        Type[] genericInterfaces = this.a.getGenericInterfaces();
        Intrinsics.checkExpressionValueIsNotNull(genericInterfaces, "klass.genericInterfaces");
        n0Var.b(genericInterfaces);
        List listListOf = CollectionsKt__CollectionsKt.listOf(n0Var.d(new Type[n0Var.c()]));
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            arrayList.add(new kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.h((Type) it.next()));
        }
        return arrayList;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public boolean isAbstract() {
        return ReflectJavaModifierListOwner.DefaultImpls.isAbstract(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public boolean isFinal() {
        return ReflectJavaModifierListOwner.DefaultImpls.isFinal(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return ReflectJavaAnnotationOwner.DefaultImpls.findAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    public boolean m() {
        return this.a.isAnnotation();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    public boolean r() {
        return this.a.isEnum();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b> getAnnotations() {
        return ReflectJavaAnnotationOwner.DefaultImpls.getAnnotations(this);
    }

    public String toString() {
        return ReflectJavaClass.class.getName() + ": " + this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public boolean x() {
        return ReflectJavaAnnotationOwner.DefaultImpls.isDeprecatedInJavaDoc(this);
    }
}
