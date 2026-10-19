package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.n;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.ClassMapperLite;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.c;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotatedCallableKind;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractBinaryClassAnnotationAndConstantLoader<A, C> implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.b<A, C> {
    private static final Set<ClassId> a;
    public static final a b = new a(null);
    private final kotlin.reflect.jvm.internal.impl.storage.b<k, b<A, C>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f9374d;

    /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
    private enum PropertyRelatedElement {
        PROPERTY,
        BACKING_FIELD,
        DELEGATE_FIELD
    }

    /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
    private static final class b<A, C> {
        private final Map<n, List<A>> a;
        private final Map<n, C> b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(Map<n, ? extends List<? extends A>> memberAnnotations, Map<n, ? extends C> propertyConstants) {
            Intrinsics.checkParameterIsNotNull(memberAnnotations, "memberAnnotations");
            Intrinsics.checkParameterIsNotNull(propertyConstants, "propertyConstants");
            this.a = memberAnnotations;
            this.b = propertyConstants;
        }

        public final Map<n, List<A>> a() {
            return this.a;
        }

        public final Map<n, C> b() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
    public static final class c implements k.d {
        final /* synthetic */ HashMap b;
        final /* synthetic */ HashMap c;

        /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
        public final class a extends b implements k.e {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ c f9376d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c cVar, n signature) {
                super(cVar, signature);
                Intrinsics.checkParameterIsNotNull(signature, "signature");
                this.f9376d = cVar;
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.e
            public k.a b(int i, ClassId classId, d0 source) {
                Intrinsics.checkParameterIsNotNull(classId, "classId");
                Intrinsics.checkParameterIsNotNull(source, "source");
                n nVarE = n.a.e(d(), i);
                List arrayList = (List) this.f9376d.b.get(nVarE);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.f9376d.b.put(nVarE, arrayList);
                }
                return AbstractBinaryClassAnnotationAndConstantLoader.this.v(classId, source, arrayList);
            }
        }

        /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
        public class b implements k.c {
            private final ArrayList<A> a;
            private final n b;
            final /* synthetic */ c c;

            public b(c cVar, n signature) {
                Intrinsics.checkParameterIsNotNull(signature, "signature");
                this.c = cVar;
                this.b = signature;
                this.a = new ArrayList<>();
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.c
            public void a() {
                if (!this.a.isEmpty()) {
                    this.c.b.put(this.b, this.a);
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.c
            public k.a c(ClassId classId, d0 source) {
                Intrinsics.checkParameterIsNotNull(classId, "classId");
                Intrinsics.checkParameterIsNotNull(source, "source");
                return AbstractBinaryClassAnnotationAndConstantLoader.this.v(classId, source, this.a);
            }

            protected final n d() {
                return this.b;
            }
        }

        c(HashMap map, HashMap map2) {
            this.b = map;
            this.c = map2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.d
        public k.c a(Name name, String desc, Object obj) {
            Object objX;
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(desc, "desc");
            n.a aVar = n.a;
            String strE = name.e();
            Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
            n nVarA = aVar.a(strE, desc);
            if (obj != null && (objX = AbstractBinaryClassAnnotationAndConstantLoader.this.x(desc, obj)) != null) {
                this.c.put(nVarA, objX);
            }
            return new b(this, nVarA);
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.d
        public k.e b(Name name, String desc) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(desc, "desc");
            n.a aVar = n.a;
            String strE = name.e();
            Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
            return new a(this, aVar.d(strE, desc));
        }
    }

    /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
    public static final class d implements k.c {
        final /* synthetic */ ArrayList b;

        d(ArrayList arrayList) {
            this.b = arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.c
        public void a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.c
        public k.a c(ClassId classId, d0 source) {
            Intrinsics.checkParameterIsNotNull(classId, "classId");
            Intrinsics.checkParameterIsNotNull(source, "source");
            return AbstractBinaryClassAnnotationAndConstantLoader.this.v(classId, source, this.b);
        }
    }

    /* JADX INFO: compiled from: AbstractBinaryClassAnnotationAndConstantLoader.kt */
    static final class e extends Lambda implements Function1<k, b<? extends A, ? extends C>> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final b<A, C> invoke(k kotlinClass) {
            Intrinsics.checkParameterIsNotNull(kotlinClass, "kotlinClass");
            return AbstractBinaryClassAnnotationAndConstantLoader.this.w(kotlinClass);
        }
    }

    static {
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new FqName[]{kotlin.reflect.jvm.internal.impl.load.java.n.a, kotlin.reflect.jvm.internal.impl.load.java.n.f9245d, kotlin.reflect.jvm.internal.impl.load.java.n.f9246e, new FqName("java.lang.annotation.Target"), new FqName("java.lang.annotation.Retention"), new FqName("java.lang.annotation.Documented")});
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            arrayList.add(ClassId.topLevel((FqName) it.next()));
        }
        a = CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public AbstractBinaryClassAnnotationAndConstantLoader(kotlin.reflect.jvm.internal.impl.storage.h storageManager, j kotlinClassFinder) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(kotlinClassFinder, "kotlinClassFinder");
        this.f9374d = kotlinClassFinder;
        this.c = storageManager.h(new e());
    }

    private final k A(t.a aVar) {
        d0 d0VarC = aVar.c();
        if (!(d0VarC instanceof m)) {
            d0VarC = null;
        }
        m mVar = (m) d0VarC;
        if (mVar != null) {
            return mVar.d();
        }
        return null;
    }

    private final int k(t tVar, kotlin.reflect.jvm.internal.impl.protobuf.j jVar) {
        if (jVar instanceof ProtoBuf$Function) {
            if (ProtoTypeTableUtilKt.hasReceiver((ProtoBuf$Function) jVar)) {
                return 1;
            }
        } else if (jVar instanceof ProtoBuf$Property) {
            if (ProtoTypeTableUtilKt.hasReceiver((ProtoBuf$Property) jVar)) {
                return 1;
            }
        } else {
            if (!(jVar instanceof ProtoBuf$Constructor)) {
                throw new UnsupportedOperationException("Unsupported message: " + jVar.getClass());
            }
            if (tVar == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.serialization.deserialization.ProtoContainer.Class");
            }
            t.a aVar = (t.a) tVar;
            if (aVar.g() == ProtoBuf$Class.Kind.ENUM_CLASS) {
                return 2;
            }
            if (aVar.i()) {
                return 1;
            }
        }
        return 0;
    }

    private final List<A> l(t tVar, n nVar, boolean z, boolean z2, Boolean bool, boolean z3) {
        List<A> list;
        k kVarN = n(tVar, t(tVar, z, z2, bool, z3));
        return (kVarN == null || (list = this.c.invoke(kVarN).a().get(nVar)) == null) ? CollectionsKt__CollectionsKt.emptyList() : list;
    }

    static /* synthetic */ List m(AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader, t tVar, n nVar, boolean z, boolean z2, Boolean bool, boolean z3, int i, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationAndConstantLoader.l(tVar, nVar, (i & 4) != 0 ? false : z, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? false : z3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findClassAndLoadMemberAnnotations");
    }

    private final k n(t tVar, k kVar) {
        if (kVar != null) {
            return kVar;
        }
        if (tVar instanceof t.a) {
            return A((t.a) tVar);
        }
        return null;
    }

    private final n p(kotlin.reflect.jvm.internal.impl.protobuf.j jVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, AnnotatedCallableKind annotatedCallableKind, boolean z) {
        if (jVar instanceof ProtoBuf$Constructor) {
            n.a aVar = n.a;
            c.b bVarB = JvmProtoBufUtil.b.b((ProtoBuf$Constructor) jVar, bVar, eVar);
            if (bVarB != null) {
                return aVar.b(bVarB);
            }
            return null;
        }
        if (jVar instanceof ProtoBuf$Function) {
            n.a aVar2 = n.a;
            c.b bVarD = JvmProtoBufUtil.b.d((ProtoBuf$Function) jVar, bVar, eVar);
            if (bVarD != null) {
                return aVar2.b(bVarD);
            }
            return null;
        }
        if (!(jVar instanceof ProtoBuf$Property)) {
            return null;
        }
        GeneratedMessageLite.f<ProtoBuf$Property, JvmProtoBuf.JvmPropertySignature> propertySignature = JvmProtoBuf.f9631d;
        Intrinsics.checkExpressionValueIsNotNull(propertySignature, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.getExtensionOrNull((GeneratedMessageLite.d) jVar, propertySignature);
        if (jvmPropertySignature == null) {
            return null;
        }
        int i = kotlin.reflect.jvm.internal.impl.load.kotlin.a.a[annotatedCallableKind.ordinal()];
        if (i == 1) {
            if (!jvmPropertySignature.x()) {
                return null;
            }
            n.a aVar3 = n.a;
            JvmProtoBuf.JvmMethodSignature jvmMethodSignatureT = jvmPropertySignature.t();
            Intrinsics.checkExpressionValueIsNotNull(jvmMethodSignatureT, "signature.getter");
            return aVar3.c(bVar, jvmMethodSignatureT);
        }
        if (i != 2) {
            if (i != 3) {
                return null;
            }
            return r((ProtoBuf$Property) jVar, bVar, eVar, true, true, z);
        }
        if (!jvmPropertySignature.y()) {
            return null;
        }
        n.a aVar4 = n.a;
        JvmProtoBuf.JvmMethodSignature jvmMethodSignatureU = jvmPropertySignature.u();
        Intrinsics.checkExpressionValueIsNotNull(jvmMethodSignatureU, "signature.setter");
        return aVar4.c(bVar, jvmMethodSignatureU);
    }

    static /* synthetic */ n q(AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader, kotlin.reflect.jvm.internal.impl.protobuf.j jVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, AnnotatedCallableKind annotatedCallableKind, boolean z, int i, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationAndConstantLoader.p(jVar, bVar, eVar, annotatedCallableKind, (i & 16) != 0 ? false : z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getCallableSignature");
    }

    private final n r(ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, boolean z, boolean z2, boolean z3) {
        GeneratedMessageLite.f<ProtoBuf$Property, JvmProtoBuf.JvmPropertySignature> propertySignature = JvmProtoBuf.f9631d;
        Intrinsics.checkExpressionValueIsNotNull(propertySignature, "propertySignature");
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) ProtoBufUtilKt.getExtensionOrNull(protoBuf$Property, propertySignature);
        if (jvmPropertySignature != null) {
            if (z) {
                c.a aVarC = JvmProtoBufUtil.b.c(protoBuf$Property, bVar, eVar, z3);
                if (aVarC != null) {
                    return n.a.b(aVarC);
                }
                return null;
            }
            if (z2 && jvmPropertySignature.z()) {
                n.a aVar = n.a;
                JvmProtoBuf.JvmMethodSignature jvmMethodSignatureV = jvmPropertySignature.v();
                Intrinsics.checkExpressionValueIsNotNull(jvmMethodSignatureV, "signature.syntheticMethod");
                return aVar.c(bVar, jvmMethodSignatureV);
            }
        }
        return null;
    }

    static /* synthetic */ n s(AbstractBinaryClassAnnotationAndConstantLoader abstractBinaryClassAnnotationAndConstantLoader, ProtoBuf$Property protoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if (obj == null) {
            return abstractBinaryClassAnnotationAndConstantLoader.r(protoBuf$Property, bVar, eVar, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? true : z3);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPropertySignature");
    }

    private final k t(t tVar, boolean z, boolean z2, Boolean bool, boolean z3) {
        t.a aVarH;
        if (z) {
            if (bool == null) {
                throw new IllegalStateException(("isConst should not be null for property (container=" + tVar + ')').toString());
            }
            if (tVar instanceof t.a) {
                t.a aVar = (t.a) tVar;
                if (aVar.g() == ProtoBuf$Class.Kind.INTERFACE) {
                    j jVar = this.f9374d;
                    ClassId classIdD = aVar.e().d(Name.identifier("DefaultImpls"));
                    Intrinsics.checkExpressionValueIsNotNull(classIdD, "container.classId.create…EFAULT_IMPLS_CLASS_NAME))");
                    return KotlinClassFinderKt.findKotlinClass(jVar, classIdD);
                }
            }
            if (bool.booleanValue() && (tVar instanceof t.b)) {
                d0 d0VarC = tVar.c();
                if (!(d0VarC instanceof f)) {
                    d0VarC = null;
                }
                f fVar = (f) d0VarC;
                JvmClassName jvmClassNameE = fVar != null ? fVar.e() : null;
                if (jvmClassNameE != null) {
                    j jVar2 = this.f9374d;
                    String strC = jvmClassNameE.c();
                    Intrinsics.checkExpressionValueIsNotNull(strC, "facadeClassName.internalName");
                    ClassId classId = ClassId.topLevel(new FqName(StringsKt__StringsJVMKt.replace$default(strC, '/', '.', false, 4, (Object) null)));
                    Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(FqName(…lName.replace('/', '.')))");
                    return KotlinClassFinderKt.findKotlinClass(jVar2, classId);
                }
            }
        }
        if (z2 && (tVar instanceof t.a)) {
            t.a aVar2 = (t.a) tVar;
            if (aVar2.g() == ProtoBuf$Class.Kind.COMPANION_OBJECT && (aVarH = aVar2.h()) != null && (aVarH.g() == ProtoBuf$Class.Kind.CLASS || aVarH.g() == ProtoBuf$Class.Kind.ENUM_CLASS || (z3 && (aVarH.g() == ProtoBuf$Class.Kind.INTERFACE || aVarH.g() == ProtoBuf$Class.Kind.ANNOTATION_CLASS)))) {
                return A(aVarH);
            }
        }
        if (!(tVar instanceof t.b) || !(tVar.c() instanceof f)) {
            return null;
        }
        d0 d0VarC2 = tVar.c();
        if (d0VarC2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource");
        }
        f fVar2 = (f) d0VarC2;
        k kVarF = fVar2.f();
        return kVarF != null ? kVarF : KotlinClassFinderKt.findKotlinClass(this.f9374d, fVar2.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final k.a v(ClassId classId, d0 d0Var, List<A> list) {
        if (a.contains(classId)) {
            return null;
        }
        return u(classId, d0Var, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b<A, C> w(k kVar) {
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        kVar.b(new c(map, map2), o(kVar));
        return new b<>(map, map2);
    }

    private final List<A> y(t tVar, ProtoBuf$Property protoBuf$Property, PropertyRelatedElement propertyRelatedElement) {
        Boolean boolA = Flags.w.a(protoBuf$Property.M());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_CONST.get(proto.flags)");
        boolean zBooleanValue = boolA.booleanValue();
        boolean zIsMovedFromInterfaceCompanion = JvmProtoBufUtil.isMovedFromInterfaceCompanion(protoBuf$Property);
        if (propertyRelatedElement == PropertyRelatedElement.PROPERTY) {
            n nVarS = s(this, protoBuf$Property, tVar.b(), tVar.d(), false, true, false, 40, null);
            return nVarS != null ? m(this, tVar, nVarS, true, false, Boolean.valueOf(zBooleanValue), zIsMovedFromInterfaceCompanion, 8, null) : CollectionsKt__CollectionsKt.emptyList();
        }
        n nVarS2 = s(this, protoBuf$Property, tVar.b(), tVar.d(), true, false, false, 48, null);
        if (nVarS2 != null) {
            return StringsKt__StringsKt.contains$default((CharSequence) nVarS2.a(), (CharSequence) "$delegate", false, 2, (Object) null) != (propertyRelatedElement == PropertyRelatedElement.DELEGATE_FIELD) ? CollectionsKt__CollectionsKt.emptyList() : l(tVar, nVarS2, true, true, Boolean.valueOf(zBooleanValue), zIsMovedFromInterfaceCompanion);
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    protected abstract C B(C c2);

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> a(t container, kotlin.reflect.jvm.internal.impl.protobuf.j callableProto, AnnotatedCallableKind kind, int i, ProtoBuf$ValueParameter proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(callableProto, "callableProto");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        n nVarQ = q(this, callableProto, container.b(), container.d(), kind, false, 16, null);
        if (nVarQ == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        return m(this, container, n.a.e(nVarQ, i + k(container, callableProto)), false, false, null, false, 60, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> b(t.a container) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        k kVarA = A(container);
        if (kVarA != null) {
            ArrayList arrayList = new ArrayList(1);
            kVarA.d(new d(arrayList), o(kVarA));
            return arrayList;
        }
        throw new IllegalStateException(("Class for loading annotations is not found: " + container.a()).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> c(ProtoBuf$Type proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Object objP = proto.p(JvmProtoBuf.f9633f);
        Intrinsics.checkExpressionValueIsNotNull(objP, "proto.getExtension(JvmProtoBuf.typeAnnotation)");
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) objP;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
        for (ProtoBuf$Annotation it : iterable) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(z(it, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> d(t container, ProtoBuf$EnumEntry proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        n.a aVar = n.a;
        String string = container.b().getString(proto.z());
        String strC = ((t.a) container).e().c();
        Intrinsics.checkExpressionValueIsNotNull(strC, "(container as ProtoConta…Class).classId.asString()");
        return m(this, container, aVar.a(string, ClassMapperLite.mapClass(strC)), false, false, null, false, 60, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> e(t container, kotlin.reflect.jvm.internal.impl.protobuf.j proto, AnnotatedCallableKind kind) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        if (kind == AnnotatedCallableKind.PROPERTY) {
            return y(container, (ProtoBuf$Property) proto, PropertyRelatedElement.PROPERTY);
        }
        n nVarQ = q(this, proto, container.b(), container.d(), kind, false, 16, null);
        return nVarQ != null ? m(this, container, nVarQ, false, false, null, false, 60, null) : CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> f(ProtoBuf$TypeParameter proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Object objP = proto.p(JvmProtoBuf.h);
        Intrinsics.checkExpressionValueIsNotNull(objP, "proto.getExtension(JvmPr….typeParameterAnnotation)");
        Iterable<ProtoBuf$Annotation> iterable = (Iterable) objP;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
        for (ProtoBuf$Annotation it : iterable) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(z(it, nameResolver));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public C g(t container, ProtoBuf$Property proto, u expectedType) {
        C c2;
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(expectedType, "expectedType");
        k kVarN = n(container, t(container, true, true, Flags.w.a(proto.M()), JvmProtoBufUtil.isMovedFromInterfaceCompanion(proto)));
        if (kVarN != null) {
            n nVarP = p(proto, container.b(), container.d(), AnnotatedCallableKind.PROPERTY, kVarN.c().d().d(DeserializedDescriptorResolver.f9386f.a()));
            if (nVarP != null && (c2 = this.c.invoke(kVarN).b().get(nVarP)) != null) {
                return kotlin.reflect.jvm.internal.impl.builtins.e.f9061e.d(expectedType) ? B(c2) : c2;
            }
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> h(t container, ProtoBuf$Property proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        return y(container, proto, PropertyRelatedElement.BACKING_FIELD);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> i(t container, kotlin.reflect.jvm.internal.impl.protobuf.j proto, AnnotatedCallableKind kind) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(kind, "kind");
        n nVarQ = q(this, proto, container.b(), container.d(), kind, false, 16, null);
        return nVarQ != null ? m(this, container, n.a.e(nVarQ, 0), false, false, null, false, 60, null) : CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.b
    public List<A> j(t container, ProtoBuf$Property proto) {
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        return y(container, proto, PropertyRelatedElement.DELEGATE_FIELD);
    }

    protected byte[] o(k kotlinClass) {
        Intrinsics.checkParameterIsNotNull(kotlinClass, "kotlinClass");
        return null;
    }

    protected abstract k.a u(ClassId classId, d0 d0Var, List<A> list);

    protected abstract C x(String str, Object obj);

    protected abstract A z(ProtoBuf$Annotation protoBuf$Annotation, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar);
}
