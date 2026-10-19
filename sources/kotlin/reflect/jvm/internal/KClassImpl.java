package kotlin.reflect.jvm.internal;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KCallable;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.KType;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: KClassImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KClassImpl<T> extends KDeclarationContainerImpl implements KClass<T>, e {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReflectProperties.b<KClassImpl<T>.Data> f8982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<T> f8983e;

    /* JADX INFO: compiled from: KClassImpl.kt */
    public final class Data extends KDeclarationContainerImpl.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f8984d = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "annotations", "getAnnotations()Ljava/util/List;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "simpleName", "getSimpleName()Ljava/lang/String;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "qualifiedName", "getQualifiedName()Ljava/lang/String;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "constructors", "getConstructors()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "nestedClasses", "getNestedClasses()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "objectInstance", "getObjectInstance()Ljava/lang/Object;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "typeParameters", "getTypeParameters()Ljava/util/List;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "supertypes", "getSupertypes()Ljava/util/List;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "allMembers", "getAllMembers()Ljava/util/Collection;"))};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ReflectProperties.a f8985e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ReflectProperties.a f8986f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ReflectProperties.a f8987g;
        private final ReflectProperties.a h;
        private final ReflectProperties.a i;
        private final ReflectProperties.a j;
        private final ReflectProperties.b k;
        private final ReflectProperties.a l;
        private final ReflectProperties.a m;
        private final ReflectProperties.a n;
        private final ReflectProperties.a o;
        private final ReflectProperties.a p;
        private final ReflectProperties.a q;
        private final ReflectProperties.a r;
        private final ReflectProperties.a s;
        private final ReflectProperties.a t;
        private final ReflectProperties.a u;
        private final ReflectProperties.a v;

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class a extends Lambda implements Function0<List<? extends KCallableImpl<?>>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<KCallableImpl<?>> invoke() {
                return CollectionsKt___CollectionsKt.plus((Collection) Data.this.d(), (Iterable) Data.this.e());
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class b extends Lambda implements Function0<List<? extends KCallableImpl<?>>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<KCallableImpl<?>> invoke() {
                return CollectionsKt___CollectionsKt.plus((Collection) Data.this.i(), (Iterable) Data.this.l());
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class c extends Lambda implements Function0<List<? extends KCallableImpl<?>>> {
            c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<KCallableImpl<?>> invoke() {
                return CollectionsKt___CollectionsKt.plus(Data.this.j(), (Iterable) Data.this.m());
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class d extends Lambda implements Function0<List<? extends Annotation>> {
            d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<Annotation> invoke() {
                return UtilKt.computeAnnotations(Data.this.k());
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class e extends Lambda implements Function0<List<? extends KFunction<? extends T>>> {
            e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<KFunction<T>> invoke() {
                Collection<kotlin.reflect.jvm.internal.impl.descriptors.h> collectionZ = KClassImpl.this.z();
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionZ, 10));
                Iterator<T> it = collectionZ.iterator();
                while (it.hasNext()) {
                    arrayList.add(new KFunctionImpl(KClassImpl.this, (kotlin.reflect.jvm.internal.impl.descriptors.h) it.next()));
                }
                return arrayList;
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class f extends Lambda implements Function0<List<? extends KCallableImpl<?>>> {
            f() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<KCallableImpl<?>> invoke() {
                return CollectionsKt___CollectionsKt.plus((Collection) Data.this.i(), (Iterable) Data.this.j());
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class g extends Lambda implements Function0<Collection<? extends KCallableImpl<?>>> {
            g() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Collection<KCallableImpl<?>> invoke() {
                KClassImpl kClassImpl = KClassImpl.this;
                return kClassImpl.C(kClassImpl.O(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class h extends Lambda implements Function0<Collection<? extends KCallableImpl<?>>> {
            h() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Collection<KCallableImpl<?>> invoke() {
                KClassImpl kClassImpl = KClassImpl.this;
                return kClassImpl.C(kClassImpl.P(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class i extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.d> {
            i() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
                ClassId classIdL = KClassImpl.this.L();
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h hVarA = KClassImpl.this.M().c().a();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = classIdL.i() ? hVarA.a().b(classIdL) : FindClassInModuleKt.findClassAcrossModuleDependencies(hVarA.b(), classIdL);
                if (dVarB != null) {
                    return dVarB;
                }
                KClassImpl.this.Q();
                throw null;
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class j extends Lambda implements Function0<Collection<? extends KCallableImpl<?>>> {
            j() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Collection<KCallableImpl<?>> invoke() {
                KClassImpl kClassImpl = KClassImpl.this;
                return kClassImpl.C(kClassImpl.O(), KDeclarationContainerImpl.MemberBelonginess.INHERITED);
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class k extends Lambda implements Function0<Collection<? extends KCallableImpl<?>>> {
            k() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Collection<KCallableImpl<?>> invoke() {
                KClassImpl kClassImpl = KClassImpl.this;
                return kClassImpl.C(kClassImpl.P(), KDeclarationContainerImpl.MemberBelonginess.INHERITED);
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class l extends Lambda implements Function0<List<? extends KClassImpl<? extends Object>>> {
            l() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<KClassImpl<? extends Object>> invoke() {
                Collection contributedDescriptors$default = ResolutionScope.DefaultImpls.getContributedDescriptors$default(Data.this.k().O(), null, null, 3, null);
                ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.i> arrayList = new ArrayList();
                for (T t : contributedDescriptors$default) {
                    if (!DescriptorUtils.isEnumEntry((kotlin.reflect.jvm.internal.impl.descriptors.i) t)) {
                        arrayList.add(t);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.descriptors.i iVar : arrayList) {
                    if (iVar == null) {
                        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    }
                    Class<?> javaClass = UtilKt.toJavaClass((kotlin.reflect.jvm.internal.impl.descriptors.d) iVar);
                    KClassImpl kClassImpl = javaClass != null ? new KClassImpl(javaClass) : null;
                    if (kClassImpl != null) {
                        arrayList2.add(kClassImpl);
                    }
                }
                return arrayList2;
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class m extends Lambda implements Function0<T> {
            m() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarK = Data.this.k();
                if (dVarK.getKind() != ClassKind.OBJECT) {
                    return null;
                }
                T t = (T) ((!dVarK.U() || kotlin.reflect.jvm.internal.impl.builtins.c.b.b(dVarK)) ? KClassImpl.this.a().getDeclaredField("INSTANCE") : KClassImpl.this.a().getEnclosingClass().getDeclaredField(dVarK.getName().e())).get(null);
                if (t != null) {
                    return t;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class n extends Lambda implements Function0<String> {
            n() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                if (KClassImpl.this.a().isAnonymousClass()) {
                    return null;
                }
                ClassId classIdL = KClassImpl.this.L();
                if (classIdL.i()) {
                    return null;
                }
                return classIdL.b().b();
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class o extends Lambda implements Function0<List<? extends KClassImpl<? extends T>>> {
            o() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<KClassImpl<? extends T>> invoke() {
                Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collectionV = Data.this.k().v();
                Intrinsics.checkExpressionValueIsNotNull(collectionV, "descriptor.sealedSubclasses");
                ArrayList arrayList = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.descriptors.d dVar : collectionV) {
                    if (dVar == null) {
                        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    }
                    Class<?> javaClass = UtilKt.toJavaClass(dVar);
                    KClassImpl kClassImpl = javaClass != null ? new KClassImpl(javaClass) : null;
                    if (kClassImpl != null) {
                        arrayList.add(kClassImpl);
                    }
                }
                return arrayList;
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class p extends Lambda implements Function0<String> {
            p() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final String invoke() {
                if (KClassImpl.this.a().isAnonymousClass()) {
                    return null;
                }
                ClassId classIdL = KClassImpl.this.L();
                if (classIdL.i()) {
                    Data data = Data.this;
                    return data.b(KClassImpl.this.a());
                }
                String strE = classIdL.h().e();
                Intrinsics.checkExpressionValueIsNotNull(strE, "classId.shortClassName.asString()");
                return strE;
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class q extends Lambda implements Function0<List<? extends KTypeImpl>> {

            /* JADX INFO: compiled from: KClassImpl.kt */
            static final class a extends Lambda implements Function0<Type> {
                final /* synthetic */ u a;
                final /* synthetic */ q b;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(u uVar, q qVar) {
                    super(0);
                    this.a = uVar;
                    this.b = qVar;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public final Type invoke() {
                    kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = this.a.H0().q();
                    if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                        throw new kotlin.reflect.jvm.internal.o("Supertype not a class: " + fVarQ);
                    }
                    Class<?> javaClass = UtilKt.toJavaClass((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ);
                    if (javaClass == null) {
                        throw new kotlin.reflect.jvm.internal.o("Unsupported superclass of " + Data.this + ": " + fVarQ);
                    }
                    if (Intrinsics.areEqual(KClassImpl.this.a().getSuperclass(), javaClass)) {
                        Type genericSuperclass = KClassImpl.this.a().getGenericSuperclass();
                        Intrinsics.checkExpressionValueIsNotNull(genericSuperclass, "jClass.genericSuperclass");
                        return genericSuperclass;
                    }
                    Class<?>[] interfaces = KClassImpl.this.a().getInterfaces();
                    Intrinsics.checkExpressionValueIsNotNull(interfaces, "jClass.interfaces");
                    int iIndexOf = ArraysKt___ArraysKt.indexOf(interfaces, javaClass);
                    if (iIndexOf >= 0) {
                        Type type = KClassImpl.this.a().getGenericInterfaces()[iIndexOf];
                        Intrinsics.checkExpressionValueIsNotNull(type, "jClass.genericInterfaces[index]");
                        return type;
                    }
                    throw new kotlin.reflect.jvm.internal.o("No superclass of " + Data.this + " in Java reflection for " + fVarQ);
                }
            }

            /* JADX INFO: compiled from: KClassImpl.kt */
            static final class b extends Lambda implements Function0<Class<Object>> {
                public static final b a = new b();

                b() {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public final Class<Object> invoke() {
                    return Object.class;
                }
            }

            q() {
                super(0);
            }

            /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.util.List<kotlin.reflect.jvm.internal.KTypeImpl> invoke() {
                /*
                    r6 = this;
                    kotlin.reflect.jvm.internal.KClassImpl$Data r0 = kotlin.reflect.jvm.internal.KClassImpl.Data.this
                    kotlin.reflect.jvm.internal.impl.descriptors.d r0 = r0.k()
                    kotlin.reflect.jvm.internal.impl.types.f0 r0 = r0.i()
                    java.lang.String r1 = "descriptor.typeConstructor"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
                    java.util.Collection r0 = r0.h()
                    java.lang.String r1 = "descriptor.typeConstructor.supertypes"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
                    java.util.ArrayList r1 = new java.util.ArrayList
                    int r2 = r0.size()
                    r1.<init>(r2)
                    java.util.Iterator r0 = r0.iterator()
                L25:
                    boolean r2 = r0.hasNext()
                    if (r2 == 0) goto L44
                    java.lang.Object r2 = r0.next()
                    kotlin.reflect.jvm.internal.impl.types.u r2 = (kotlin.reflect.jvm.internal.impl.types.u) r2
                    kotlin.reflect.jvm.internal.KTypeImpl r3 = new kotlin.reflect.jvm.internal.KTypeImpl
                    java.lang.String r4 = "kotlinType"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r4)
                    kotlin.reflect.jvm.internal.KClassImpl$Data$q$a r4 = new kotlin.reflect.jvm.internal.KClassImpl$Data$q$a
                    r4.<init>(r2, r6)
                    r3.<init>(r2, r4)
                    r1.add(r3)
                    goto L25
                L44:
                    kotlin.reflect.jvm.internal.KClassImpl$Data r0 = kotlin.reflect.jvm.internal.KClassImpl.Data.this
                    kotlin.reflect.jvm.internal.impl.descriptors.d r0 = r0.k()
                    boolean r0 = kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns.isSpecialClassWithNoSupertypes(r0)
                    if (r0 != 0) goto Lad
                    boolean r0 = r1.isEmpty()
                    r2 = 0
                    r3 = 1
                    if (r0 == 0) goto L5a
                L58:
                    r2 = 1
                    goto L8e
                L5a:
                    java.util.Iterator r0 = r1.iterator()
                L5e:
                    boolean r4 = r0.hasNext()
                    if (r4 == 0) goto L58
                    java.lang.Object r4 = r0.next()
                    kotlin.reflect.jvm.internal.KTypeImpl r4 = (kotlin.reflect.jvm.internal.KTypeImpl) r4
                    kotlin.reflect.jvm.internal.impl.types.u r4 = r4.j()
                    kotlin.reflect.jvm.internal.impl.descriptors.d r4 = kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils.getClassDescriptorForType(r4)
                    java.lang.String r5 = "DescriptorUtils.getClassDescriptorForType(it.type)"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r5)
                    kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r4 = r4.getKind()
                    java.lang.String r5 = "DescriptorUtils.getClass…ptorForType(it.type).kind"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r5)
                    kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r5 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.INTERFACE
                    if (r4 == r5) goto L8b
                    kotlin.reflect.jvm.internal.impl.descriptors.ClassKind r5 = kotlin.reflect.jvm.internal.impl.descriptors.ClassKind.ANNOTATION_CLASS
                    if (r4 != r5) goto L89
                    goto L8b
                L89:
                    r4 = 0
                    goto L8c
                L8b:
                    r4 = 1
                L8c:
                    if (r4 != 0) goto L5e
                L8e:
                    if (r2 == 0) goto Lad
                    kotlin.reflect.jvm.internal.KTypeImpl r0 = new kotlin.reflect.jvm.internal.KTypeImpl
                    kotlin.reflect.jvm.internal.KClassImpl$Data r2 = kotlin.reflect.jvm.internal.KClassImpl.Data.this
                    kotlin.reflect.jvm.internal.impl.descriptors.d r2 = r2.k()
                    kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns r2 = kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt.getBuiltIns(r2)
                    kotlin.reflect.jvm.internal.impl.types.y r2 = r2.j()
                    java.lang.String r3 = "descriptor.builtIns.anyType"
                    kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r3)
                    kotlin.reflect.jvm.internal.KClassImpl$Data$q$b r3 = kotlin.reflect.jvm.internal.KClassImpl.Data.q.b.a
                    r0.<init>(r2, r3)
                    r1.add(r0)
                Lad:
                    java.util.List r0 = kotlin.reflect.jvm.internal.impl.utils.CollectionsKt.compact(r1)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KClassImpl.Data.q.invoke():java.util.List");
            }
        }

        /* JADX INFO: compiled from: KClassImpl.kt */
        static final class r extends Lambda implements Function0<List<? extends kotlin.reflect.jvm.internal.n>> {
            r() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<kotlin.reflect.jvm.internal.n> invoke() {
                List<i0> listO = Data.this.k().o();
                Intrinsics.checkExpressionValueIsNotNull(listO, "descriptor.declaredTypeParameters");
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listO, 10));
                Iterator<T> it = listO.iterator();
                while (it.hasNext()) {
                    arrayList.add(new kotlin.reflect.jvm.internal.n((i0) it.next()));
                }
                return arrayList;
            }
        }

        public Data() {
            super();
            this.f8985e = ReflectProperties.lazySoft(new i());
            this.f8986f = ReflectProperties.lazySoft(new d());
            this.f8987g = ReflectProperties.lazySoft(new p());
            this.h = ReflectProperties.lazySoft(new n());
            this.i = ReflectProperties.lazySoft(new e());
            this.j = ReflectProperties.lazySoft(new l());
            this.k = ReflectProperties.lazy(new m());
            this.l = ReflectProperties.lazySoft(new r());
            this.m = ReflectProperties.lazySoft(new q());
            this.n = ReflectProperties.lazySoft(new o());
            this.o = ReflectProperties.lazySoft(new g());
            this.p = ReflectProperties.lazySoft(new h());
            this.q = ReflectProperties.lazySoft(new j());
            this.r = ReflectProperties.lazySoft(new k());
            this.s = ReflectProperties.lazySoft(new b());
            this.t = ReflectProperties.lazySoft(new c());
            this.u = ReflectProperties.lazySoft(new f());
            this.v = ReflectProperties.lazySoft(new a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b(Class<?> cls) {
            String name = cls.getSimpleName();
            Method enclosingMethod = cls.getEnclosingMethod();
            if (enclosingMethod != null) {
                Intrinsics.checkExpressionValueIsNotNull(name, "name");
                return StringsKt__StringsKt.substringAfter$default(name, enclosingMethod.getName() + "$", (String) null, 2, (Object) null);
            }
            Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
            if (enclosingConstructor == null) {
                Intrinsics.checkExpressionValueIsNotNull(name, "name");
                return StringsKt__StringsKt.substringAfter$default(name, '$', (String) null, 2, (Object) null);
            }
            Intrinsics.checkExpressionValueIsNotNull(name, "name");
            return StringsKt__StringsKt.substringAfter$default(name, enclosingConstructor.getName() + "$", (String) null, 2, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<KCallableImpl<?>> j() {
            return (Collection) this.p.b(this, f8984d[11]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<KCallableImpl<?>> l() {
            return (Collection) this.q.b(this, f8984d[12]);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Collection<KCallableImpl<?>> m() {
            return (Collection) this.r.b(this, f8984d[13]);
        }

        public final Collection<KCallableImpl<?>> c() {
            return (Collection) this.v.b(this, f8984d[17]);
        }

        public final Collection<KCallableImpl<?>> d() {
            return (Collection) this.s.b(this, f8984d[14]);
        }

        public final Collection<KCallableImpl<?>> e() {
            return (Collection) this.t.b(this, f8984d[15]);
        }

        public final List<Annotation> f() {
            return (List) this.f8986f.b(this, f8984d[1]);
        }

        public final Collection<KFunction<T>> g() {
            return (Collection) this.i.b(this, f8984d[4]);
        }

        public final Collection<KCallableImpl<?>> h() {
            return (Collection) this.u.b(this, f8984d[16]);
        }

        public final Collection<KCallableImpl<?>> i() {
            return (Collection) this.o.b(this, f8984d[10]);
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d k() {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) this.f8985e.b(this, f8984d[0]);
        }

        public final Collection<KClass<?>> n() {
            return (Collection) this.j.b(this, f8984d[5]);
        }

        public final T o() {
            return this.k.b(this, f8984d[6]);
        }

        public final String p() {
            return (String) this.h.b(this, f8984d[3]);
        }

        public final String q() {
            return (String) this.f8987g.b(this, f8984d[2]);
        }

        public final List<KType> r() {
            return (List) this.m.b(this, f8984d[8]);
        }
    }

    /* JADX INFO: compiled from: KClassImpl.kt */
    static final class a extends Lambda implements Function0<KClassImpl<T>.Data> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final KClassImpl<T>.Data invoke() {
            return new Data();
        }
    }

    /* JADX INFO: compiled from: KClassImpl.kt */
    static final /* synthetic */ class b extends kotlin.jvm.internal.q implements Function2<MemberDeserializer, ProtoBuf$Property, y> {
        public static final b a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(MemberDeserializer p1, ProtoBuf$Property p2) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            Intrinsics.checkParameterIsNotNull(p2, "p2");
            return p1.n(p2);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "loadProperty";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(MemberDeserializer.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
        }
    }

    public KClassImpl(Class<T> jClass) {
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        this.f8983e = jClass;
        ReflectProperties.b<KClassImpl<T>.Data> bVarLazy = ReflectProperties.lazy(new a());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Data() }");
        this.f8982d = bVarLazy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClassId L() {
        return r.b.c(a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Void Q() {
        KotlinClassHeader kotlinClassHeaderC;
        kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e eVarA = kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e.a.a(a());
        KotlinClassHeader.Kind kindC = (eVarA == null || (kotlinClassHeaderC = eVarA.c()) == null) ? null : kotlinClassHeaderC.c();
        if (kindC != null) {
            switch (d.a[kindC.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    throw new UnsupportedOperationException("Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: " + a());
                case 4:
                    throw new UnsupportedOperationException("This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It's not a Kotlin class or interface, so the reflection library has no idea what declarations does it have. Please use Java reflection to inspect this class: " + a());
                case 5:
                    throw new o("Unknown class: " + a() + " (kind = " + kindC + ')');
                case 6:
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        throw new o("Unresolved class: " + a());
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.o> A(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        MemberScope memberScopeO = O();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        return CollectionsKt___CollectionsKt.plus((Collection) memberScopeO.a(name, noLookupLocation), (Iterable) P().a(name, noLookupLocation));
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public y B(int i) {
        Class<?> declaringClass;
        if (Intrinsics.areEqual(a().getSimpleName(), "DefaultImpls") && (declaringClass = a().getDeclaringClass()) != null && declaringClass.isInterface()) {
            KClass kotlinClass = JvmClassMappingKt.getKotlinClass(declaringClass);
            if (kotlinClass != null) {
                return ((KClassImpl) kotlinClass).B(i);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d descriptor = getDescriptor();
        if (!(descriptor instanceof DeserializedClassDescriptor)) {
            descriptor = null;
        }
        DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) descriptor;
        if (deserializedClassDescriptor == null) {
            return null;
        }
        ProtoBuf$Class protoBuf$ClassI0 = deserializedClassDescriptor.I0();
        GeneratedMessageLite.f<ProtoBuf$Class, List<ProtoBuf$Property>> fVar = JvmProtoBuf.j;
        Intrinsics.checkExpressionValueIsNotNull(fVar, "JvmProtoBuf.classLocalVariable");
        ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) ProtoBufUtilKt.getExtensionOrNull(protoBuf$ClassI0, fVar, i);
        if (protoBuf$Property != null) {
            return (y) UtilKt.deserializeToDescriptor(a(), protoBuf$Property, deserializedClassDescriptor.H0().f(), deserializedClassDescriptor.H0().i(), deserializedClassDescriptor.K0(), b.a);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<y> E(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        MemberScope memberScopeO = O();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        return CollectionsKt___CollectionsKt.plus((Collection) memberScopeO.e(name, noLookupLocation), (Iterable) P().e(name, noLookupLocation));
    }

    public final ReflectProperties.b<KClassImpl<T>.Data> M() {
        return this.f8982d;
    }

    @Override // kotlin.reflect.jvm.internal.e
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d getDescriptor() {
        return this.f8982d.c().k();
    }

    public final MemberScope O() {
        return getDescriptor().n().m();
    }

    public final MemberScope P() {
        MemberScope memberScopeF0 = getDescriptor().f0();
        Intrinsics.checkExpressionValueIsNotNull(memberScopeF0, "descriptor.staticScope");
        return memberScopeF0;
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<T> a() {
        return this.f8983e;
    }

    public boolean equals(Object obj) {
        return (obj instanceof KClassImpl) && Intrinsics.areEqual(JvmClassMappingKt.getJavaObjectType(this), JvmClassMappingKt.getJavaObjectType((KClass) obj));
    }

    @Override // kotlin.reflect.KClass
    public Collection<KFunction<T>> f() {
        return this.f8982d.c().g();
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public List<Annotation> getAnnotations() {
        return this.f8982d.c().f();
    }

    @Override // kotlin.reflect.KClass
    public List<KType> h() {
        return this.f8982d.c().r();
    }

    public int hashCode() {
        return JvmClassMappingKt.getJavaObjectType(this).hashCode();
    }

    @Override // kotlin.reflect.KDeclarationContainer
    public Collection<KCallable<?>> i() {
        return this.f8982d.c().c();
    }

    @Override // kotlin.reflect.KClass
    public Collection<KClass<?>> m() {
        return this.f8982d.c().n();
    }

    @Override // kotlin.reflect.KClass
    public T p() {
        return this.f8982d.c().o();
    }

    @Override // kotlin.reflect.KClass
    public boolean q(Object obj) {
        Integer functionClassArity = ReflectClassUtilKt.getFunctionClassArity(a());
        if (functionClassArity != null) {
            return TypeIntrinsics.isFunctionOfArity(obj, functionClassArity.intValue());
        }
        Class wrapperByPrimitive = ReflectClassUtilKt.getWrapperByPrimitive(a());
        if (wrapperByPrimitive == null) {
            wrapperByPrimitive = a();
        }
        return wrapperByPrimitive.isInstance(obj);
    }

    @Override // kotlin.reflect.KClass
    public String r() {
        return this.f8982d.c().p();
    }

    @Override // kotlin.reflect.KClass
    public String s() {
        return this.f8982d.c().q();
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("class ");
        ClassId classIdL = L();
        FqName fqNameF = classIdL.f();
        Intrinsics.checkExpressionValueIsNotNull(fqNameF, "classId.packageFqName");
        if (fqNameF.d()) {
            str = "";
        } else {
            str = fqNameF.b() + ".";
        }
        String strB = classIdL.g().b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "classId.relativeClassName.asString()");
        sb.append(str + StringsKt__StringsJVMKt.replace$default(strB, '.', '$', false, 4, (Object) null));
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.h> z() {
        kotlin.reflect.jvm.internal.impl.descriptors.d descriptor = getDescriptor();
        if (descriptor.getKind() == ClassKind.INTERFACE || descriptor.getKind() == ClassKind.OBJECT) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionF = descriptor.f();
        Intrinsics.checkExpressionValueIsNotNull(collectionF, "descriptor.constructors");
        return collectionF;
    }
}
