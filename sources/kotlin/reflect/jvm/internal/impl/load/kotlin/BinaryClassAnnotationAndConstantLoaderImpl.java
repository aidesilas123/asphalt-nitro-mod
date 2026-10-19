package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.load.java.components.DescriptorResolverUtils;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.t;
import kotlin.reflect.jvm.internal.impl.resolve.constants.v;
import kotlin.reflect.jvm.internal.impl.resolve.constants.w;
import kotlin.reflect.jvm.internal.impl.resolve.constants.x;
import kotlin.reflect.jvm.internal.impl.resolve.constants.y;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: BinaryClassAnnotationAndConstantLoaderImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BinaryClassAnnotationAndConstantLoaderImpl extends AbstractBinaryClassAnnotationAndConstantLoader<AnnotationDescriptor, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.f f9377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ModuleDescriptor f9378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final NotFoundClasses f9379g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinaryClassAnnotationAndConstantLoaderImpl(ModuleDescriptor module, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.storage.h storageManager, j kotlinClassFinder) {
        super(storageManager, kotlinClassFinder);
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(kotlinClassFinder, "kotlinClassFinder");
        this.f9378f = module;
        this.f9379g = notFoundClasses;
        this.f9377e = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.f(module, notFoundClasses);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d E(ClassId classId) {
        return FindClassInModuleKt.findNonGenericClassAcrossDependencies(this.f9378f, classId, this.f9379g);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> x(String desc, Object initializer) {
        Intrinsics.checkParameterIsNotNull(desc, "desc");
        Intrinsics.checkParameterIsNotNull(initializer, "initializer");
        if (StringsKt__StringsKt.contains$default((CharSequence) "ZBCS", (CharSequence) desc, false, 2, (Object) null)) {
            int iIntValue = ((Integer) initializer).intValue();
            int iHashCode = desc.hashCode();
            if (iHashCode == 66) {
                if (desc.equals("B")) {
                    initializer = Byte.valueOf((byte) iIntValue);
                }
                throw new AssertionError(desc);
            }
            if (iHashCode == 67) {
                if (desc.equals("C")) {
                    initializer = Character.valueOf((char) iIntValue);
                }
                throw new AssertionError(desc);
            }
            if (iHashCode == 83) {
                if (desc.equals("S")) {
                    initializer = Short.valueOf((short) iIntValue);
                }
                throw new AssertionError(desc);
            }
            if (iHashCode == 90 && desc.equals("Z")) {
                initializer = Boolean.valueOf(iIntValue != 0);
            }
            throw new AssertionError(desc);
        }
        return kotlin.reflect.jvm.internal.impl.resolve.constants.h.a.c(initializer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public AnnotationDescriptor z(ProtoBuf$Annotation proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        return this.f9377e.a(proto, nameResolver);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> B(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> constant) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> xVar;
        Intrinsics.checkParameterIsNotNull(constant, "constant");
        if (constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.d) {
            xVar = new v(((kotlin.reflect.jvm.internal.impl.resolve.constants.d) constant).b().byteValue());
        } else if (constant instanceof t) {
            xVar = new y(((t) constant).b().shortValue());
        } else if (constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.m) {
            xVar = new w(((kotlin.reflect.jvm.internal.impl.resolve.constants.m) constant).b().intValue());
        } else {
            if (!(constant instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.r)) {
                return constant;
            }
            xVar = new x(((kotlin.reflect.jvm.internal.impl.resolve.constants.r) constant).b().longValue());
        }
        return xVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.AbstractBinaryClassAnnotationAndConstantLoader
    protected k.a u(ClassId annotationClassId, final d0 source, final List<AnnotationDescriptor> result) {
        Intrinsics.checkParameterIsNotNull(annotationClassId, "annotationClassId");
        Intrinsics.checkParameterIsNotNull(source, "source");
        Intrinsics.checkParameterIsNotNull(result, "result");
        final kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = E(annotationClassId);
        return new k.a() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1
            private final HashMap<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a = new HashMap<>();

            /* JADX INFO: compiled from: BinaryClassAnnotationAndConstantLoaderImpl.kt */
            public static final class a implements k.a {
                private final /* synthetic */ k.a a;
                final /* synthetic */ k.a c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                final /* synthetic */ Name f9382d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                final /* synthetic */ ArrayList f9383e;

                a(k.a aVar, Name name, ArrayList arrayList) {
                    this.c = aVar;
                    this.f9382d = name;
                    this.f9383e = arrayList;
                    this.a = aVar;
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
                public void a() {
                    this.c.a();
                    BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1.this.a.put(this.f9382d, new kotlin.reflect.jvm.internal.impl.resolve.constants.a((AnnotationDescriptor) kotlin.collections.p.single((List) this.f9383e)));
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
                public void b(Name name, ClassId enumClassId, Name enumEntryName) {
                    Intrinsics.checkParameterIsNotNull(name, "name");
                    Intrinsics.checkParameterIsNotNull(enumClassId, "enumClassId");
                    Intrinsics.checkParameterIsNotNull(enumEntryName, "enumEntryName");
                    this.a.b(name, enumClassId, enumEntryName);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
                public k.a c(Name name, ClassId classId) {
                    Intrinsics.checkParameterIsNotNull(name, "name");
                    Intrinsics.checkParameterIsNotNull(classId, "classId");
                    return this.a.c(name, classId);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
                public void d(Name name, kotlin.reflect.jvm.internal.impl.resolve.constants.f value) {
                    Intrinsics.checkParameterIsNotNull(name, "name");
                    Intrinsics.checkParameterIsNotNull(value, "value");
                    this.a.d(name, value);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
                public void e(Name name, Object obj) {
                    this.a.e(name, obj);
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
                public k.b f(Name name) {
                    Intrinsics.checkParameterIsNotNull(name, "name");
                    return this.a.f(name);
                }
            }

            /* JADX INFO: compiled from: BinaryClassAnnotationAndConstantLoaderImpl.kt */
            public static final class b implements k.b {
                private final ArrayList<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a = new ArrayList<>();
                final /* synthetic */ Name c;

                b(Name name) {
                    this.c = name;
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
                public void a() {
                    ValueParameterDescriptor annotationParameterByName = DescriptorResolverUtils.getAnnotationParameterByName(this.c, dVarE);
                    if (annotationParameterByName != null) {
                        HashMap map = BinaryClassAnnotationAndConstantLoaderImpl$loadAnnotation$1.this.a;
                        Name name = this.c;
                        kotlin.reflect.jvm.internal.impl.resolve.constants.h hVar = kotlin.reflect.jvm.internal.impl.resolve.constants.h.a;
                        List<? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> listCompact = CollectionsKt.compact(this.a);
                        u type = annotationParameterByName.getType();
                        Intrinsics.checkExpressionValueIsNotNull(type, "parameter.type");
                        map.put(name, hVar.b(listCompact, type));
                    }
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
                public void b(Object obj) {
                    this.a.add(g(this.c, obj));
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
                public void c(ClassId enumClassId, Name enumEntryName) {
                    Intrinsics.checkParameterIsNotNull(enumClassId, "enumClassId");
                    Intrinsics.checkParameterIsNotNull(enumEntryName, "enumEntryName");
                    this.a.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.j(enumClassId, enumEntryName));
                }

                @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.b
                public void d(kotlin.reflect.jvm.internal.impl.resolve.constants.f value) {
                    Intrinsics.checkParameterIsNotNull(value, "value");
                    this.a.add(new kotlin.reflect.jvm.internal.impl.resolve.constants.q(value));
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> g(Name name, Object obj) {
                kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarC = kotlin.reflect.jvm.internal.impl.resolve.constants.h.a.c(obj);
                if (gVarC != null) {
                    return gVarC;
                }
                return kotlin.reflect.jvm.internal.impl.resolve.constants.k.b.a("Unsupported annotation argument: " + name);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
            public void a() {
                result.add(new kotlin.reflect.jvm.internal.impl.descriptors.annotations.c(dVarE.n(), this.a, source));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
            public void b(Name name, ClassId enumClassId, Name enumEntryName) {
                Intrinsics.checkParameterIsNotNull(name, "name");
                Intrinsics.checkParameterIsNotNull(enumClassId, "enumClassId");
                Intrinsics.checkParameterIsNotNull(enumEntryName, "enumEntryName");
                this.a.put(name, new kotlin.reflect.jvm.internal.impl.resolve.constants.j(enumClassId, enumEntryName));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
            public k.a c(Name name, ClassId classId) {
                Intrinsics.checkParameterIsNotNull(name, "name");
                Intrinsics.checkParameterIsNotNull(classId, "classId");
                ArrayList arrayList = new ArrayList();
                BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl = this.b;
                d0 d0Var = d0.a;
                Intrinsics.checkExpressionValueIsNotNull(d0Var, "SourceElement.NO_SOURCE");
                k.a aVarU = binaryClassAnnotationAndConstantLoaderImpl.u(classId, d0Var, arrayList);
                if (aVarU == null) {
                    Intrinsics.throwNpe();
                }
                return new a(aVarU, name, arrayList);
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
            public void d(Name name, kotlin.reflect.jvm.internal.impl.resolve.constants.f value) {
                Intrinsics.checkParameterIsNotNull(name, "name");
                Intrinsics.checkParameterIsNotNull(value, "value");
                this.a.put(name, new kotlin.reflect.jvm.internal.impl.resolve.constants.q(value));
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
            public void e(Name name, Object obj) {
                if (name != null) {
                    this.a.put(name, g(name, obj));
                }
            }

            @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.k.a
            public k.b f(Name name) {
                Intrinsics.checkParameterIsNotNull(name, "name");
                return new b(name);
            }
        };
    }
}
