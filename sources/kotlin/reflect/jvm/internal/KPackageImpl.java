package kotlin.reflect.jvm.internal;

import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KCallable;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KDeclarationContainerImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: KPackageImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KPackageImpl extends KDeclarationContainerImpl {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ReflectProperties.b<Data> f8991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Class<?> f8992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f8993f;

    /* JADX INFO: compiled from: KPackageImpl.kt */
    private final class Data extends KDeclarationContainerImpl.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final /* synthetic */ KProperty[] f8994d = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "kotlinClass", "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "scope", "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "multifileFacade", "getMultifileFacade()Ljava/lang/Class;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "metadata", "getMetadata()Lkotlin/Triple;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(Data.class), "members", "getMembers()Ljava/util/Collection;"))};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ReflectProperties.a f8995e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ReflectProperties.a f8996f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ReflectProperties.b f8997g;
        private final ReflectProperties.b h;
        private final ReflectProperties.a i;

        /* JADX INFO: compiled from: KPackageImpl.kt */
        static final class a extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e invoke() {
                return kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e.a.a(KPackageImpl.this.a());
            }
        }

        /* JADX INFO: compiled from: KPackageImpl.kt */
        static final class b extends Lambda implements Function0<Collection<? extends KCallableImpl<?>>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Collection<KCallableImpl<?>> invoke() {
                Data data = Data.this;
                return KPackageImpl.this.C(data.f(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
            }
        }

        /* JADX INFO: compiled from: KPackageImpl.kt */
        static final class c extends Lambda implements Function0<Triple<? extends kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e, ? extends ProtoBuf$Package, ? extends kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d>> {
            c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Triple<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e, ProtoBuf$Package, kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> invoke() {
                KotlinClassHeader kotlinClassHeaderC;
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e eVarB = Data.this.b();
                if (eVarB == null || (kotlinClassHeaderC = eVarB.c()) == null) {
                    return null;
                }
                String[] strArrA = kotlinClassHeaderC.a();
                String[] strArrG = kotlinClassHeaderC.g();
                if (strArrA == null || strArrG == null) {
                    return null;
                }
                Pair<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e, ProtoBuf$Package> packageDataFrom = JvmProtoBufUtil.readPackageDataFrom(strArrA, strArrG);
                return new Triple<>(packageDataFrom.c(), packageDataFrom.d(), kotlinClassHeaderC.d());
            }
        }

        /* JADX INFO: compiled from: KPackageImpl.kt */
        static final class d extends Lambda implements Function0<Class<?>> {
            d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Class<?> invoke() {
                KotlinClassHeader kotlinClassHeaderC;
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e eVarB = Data.this.b();
                String strE = (eVarB == null || (kotlinClassHeaderC = eVarB.c()) == null) ? null : kotlinClassHeaderC.e();
                if (strE == null) {
                    return null;
                }
                if (strE.length() > 0) {
                    return KPackageImpl.this.a().getClassLoader().loadClass(StringsKt__StringsJVMKt.replace$default(strE, '/', '.', false, 4, (Object) null));
                }
                return null;
            }
        }

        /* JADX INFO: compiled from: KPackageImpl.kt */
        static final class e extends Lambda implements Function0<MemberScope> {
            e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final MemberScope invoke() {
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e eVarB = Data.this.b();
                return eVarB != null ? Data.this.a().c().a(eVarB) : MemberScope.b.b;
            }
        }

        public Data() {
            super();
            this.f8995e = ReflectProperties.lazySoft(new a());
            this.f8996f = ReflectProperties.lazySoft(new e());
            this.f8997g = ReflectProperties.lazy(new d());
            this.h = ReflectProperties.lazy(new c());
            this.i = ReflectProperties.lazySoft(new b());
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public final kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e b() {
            return (kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e) this.f8995e.b(this, f8994d[0]);
        }

        public final Collection<KCallableImpl<?>> c() {
            return (Collection) this.i.b(this, f8994d[4]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Triple<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e, ProtoBuf$Package, kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> d() {
            return (Triple) this.h.b(this, f8994d[3]);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Class<?> e() {
            return (Class) this.f8997g.b(this, f8994d[2]);
        }

        public final MemberScope f() {
            return (MemberScope) this.f8996f.b(this, f8994d[1]);
        }
    }

    /* JADX INFO: compiled from: KPackageImpl.kt */
    static final class a extends Lambda implements Function0<Data> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Data invoke() {
            return KPackageImpl.this.new Data();
        }
    }

    /* JADX INFO: compiled from: KPackageImpl.kt */
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

    public KPackageImpl(Class<?> jClass, String str) {
        Intrinsics.checkParameterIsNotNull(jClass, "jClass");
        this.f8992e = jClass;
        this.f8993f = str;
        ReflectProperties.b<Data> bVarLazy = ReflectProperties.lazy(new a());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Data() }");
        this.f8991d = bVarLazy;
    }

    public /* synthetic */ KPackageImpl(Class cls, String str, int i, kotlin.jvm.internal.n nVar) {
        this(cls, (i & 2) != 0 ? null : str);
    }

    private final MemberScope L() {
        return this.f8991d.c().f();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.o> A(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return L().a(name, NoLookupLocation.FROM_REFLECTION);
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public y B(int i) {
        Triple<kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e, ProtoBuf$Package, kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d> tripleD = this.f8991d.c().d();
        if (tripleD == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e eVarC = tripleD.c();
        ProtoBuf$Package protoBuf$PackageD = tripleD.d();
        kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.d dVarE = tripleD.e();
        GeneratedMessageLite.f<ProtoBuf$Package, List<ProtoBuf$Property>> fVar = JvmProtoBuf.m;
        Intrinsics.checkExpressionValueIsNotNull(fVar, "JvmProtoBuf.packageLocalVariable");
        ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) ProtoBufUtilKt.getExtensionOrNull(protoBuf$PackageD, fVar, i);
        if (protoBuf$Property == null) {
            return null;
        }
        Class<?> clsA = a();
        ProtoBuf$TypeTable protoBuf$TypeTableP = protoBuf$PackageD.P();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$TypeTableP, "packageProto.typeTable");
        return (y) UtilKt.deserializeToDescriptor(clsA, protoBuf$Property, eVarC, new kotlin.reflect.jvm.internal.impl.metadata.deserialization.e(protoBuf$TypeTableP), dVarE, b.a);
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    protected Class<?> D() {
        Class<?> clsE = this.f8991d.c().e();
        return clsE != null ? clsE : a();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<y> E(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return L().e(name, NoLookupLocation.FROM_REFLECTION);
    }

    @Override // kotlin.jvm.internal.ClassBasedDeclarationContainer
    public Class<?> a() {
        return this.f8992e;
    }

    public boolean equals(Object obj) {
        return (obj instanceof KPackageImpl) && Intrinsics.areEqual(a(), ((KPackageImpl) obj).a());
    }

    public int hashCode() {
        return a().hashCode();
    }

    @Override // kotlin.reflect.KDeclarationContainer
    public Collection<KCallable<?>> i() {
        return this.f8991d.c().c();
    }

    public String toString() {
        return "file class " + ReflectClassUtilKt.getClassId(a()).b();
    }

    @Override // kotlin.reflect.jvm.internal.KDeclarationContainerImpl
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.h> z() {
        return CollectionsKt__CollectionsKt.emptyList();
    }
}
