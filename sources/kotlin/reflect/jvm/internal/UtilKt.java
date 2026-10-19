package kotlin.reflect.jvm.internal;

import com.json.o2;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.g0;
import kotlin.reflect.KCallable;
import kotlin.reflect.KVisibility;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.i;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.constants.q;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: util.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UtilKt {
    private static final FqName a = new FqName("kotlin.jvm.JvmStatic");

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static final Class<?> a(ClassLoader classLoader, String str, String str2, int i) {
        if (Intrinsics.areEqual(str, "kotlin")) {
            switch (str2.hashCode()) {
                case -901856463:
                    if (str2.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (str2.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (str2.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (str2.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (str2.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (str2.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (str2.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (str2.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (str2.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        String str3 = str + '.' + StringsKt__StringsJVMKt.replace$default(str2, '.', '$', false, 4, (Object) null);
        if (i > 0) {
            str3 = StringsKt__StringsJVMKt.repeat(o2.i.f6490d, i) + 'L' + str3 + ';';
        }
        return ReflectJavaClassFinderKt.tryLoadClass(classLoader, str3);
    }

    public static final KCallableImpl<?> asKCallableImpl(Object obj) {
        KCallableImpl<?> kCallableImplAsKFunctionImpl = (KCallableImpl) (!(obj instanceof KCallableImpl) ? null : obj);
        if (kCallableImplAsKFunctionImpl == null) {
            kCallableImplAsKFunctionImpl = asKFunctionImpl(obj);
        }
        return kCallableImplAsKFunctionImpl != null ? kCallableImplAsKFunctionImpl : asKPropertyImpl(obj);
    }

    public static final KFunctionImpl asKFunctionImpl(Object obj) {
        KFunctionImpl kFunctionImpl = (KFunctionImpl) (!(obj instanceof KFunctionImpl) ? null : obj);
        if (kFunctionImpl != null) {
            return kFunctionImpl;
        }
        if (!(obj instanceof kotlin.jvm.internal.q)) {
            obj = null;
        }
        kotlin.jvm.internal.q qVar = (kotlin.jvm.internal.q) obj;
        KCallable kCallableCompute = qVar != null ? qVar.compute() : null;
        return (KFunctionImpl) (kCallableCompute instanceof KFunctionImpl ? kCallableCompute : null);
    }

    public static final KPropertyImpl<?> asKPropertyImpl(Object obj) {
        KPropertyImpl<?> kPropertyImpl = (KPropertyImpl) (!(obj instanceof KPropertyImpl) ? null : obj);
        if (kPropertyImpl != null) {
            return kPropertyImpl;
        }
        if (!(obj instanceof g0)) {
            obj = null;
        }
        g0 g0Var = (g0) obj;
        KCallable kCallableCompute = g0Var != null ? g0Var.compute() : null;
        return (KPropertyImpl) (kCallableCompute instanceof KPropertyImpl ? kCallableCompute : null);
    }

    private static final Class<?> b(ClassLoader classLoader, ClassId classId, int i) {
        JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.m;
        FqNameUnsafe fqNameUnsafeJ = classId.b().j();
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ, "kotlinClassId.asSingleFqName().toUnsafe()");
        ClassId classIdV = javaToKotlinClassMap.v(fqNameUnsafeJ);
        if (classIdV != null) {
            classId = classIdV;
        }
        String strB = classId.f().b();
        Intrinsics.checkExpressionValueIsNotNull(strB, "javaClassId.packageFqName.asString()");
        String strB2 = classId.g().b();
        Intrinsics.checkExpressionValueIsNotNull(strB2, "javaClassId.relativeClassName.asString()");
        return a(classLoader, strB, strB2, i);
    }

    static /* synthetic */ Class c(ClassLoader classLoader, ClassId classId, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return b(classLoader, classId, i);
    }

    public static final List<Annotation> computeAnnotations(kotlin.reflect.jvm.internal.impl.descriptors.annotations.a computeAnnotations) {
        Intrinsics.checkParameterIsNotNull(computeAnnotations, "$this$computeAnnotations");
        Annotations annotations = computeAnnotations.getAnnotations();
        ArrayList arrayList = new ArrayList();
        for (AnnotationDescriptor annotationDescriptor : annotations) {
            d0 source = annotationDescriptor.getSource();
            Annotation annotationD = null;
            if (source instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.b) {
                annotationD = ((kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.b) source).d();
            } else if (source instanceof i.a) {
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.j jVarC = ((i.a) source).c();
                if (!(jVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b)) {
                    jVarC = null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b bVar = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.b) jVarC;
                if (bVar != null) {
                    annotationD = bVar.l();
                }
            } else {
                annotationD = d(annotationDescriptor);
            }
            if (annotationD != null) {
                arrayList.add(annotationD);
            }
        }
        return arrayList;
    }

    private static final Annotation d(AnnotationDescriptor annotationDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.d annotationClass = DescriptorUtilsKt.getAnnotationClass(annotationDescriptor);
        Class<?> javaClass = annotationClass != null ? toJavaClass(annotationClass) : null;
        if (!(javaClass instanceof Class)) {
            javaClass = null;
        }
        if (javaClass == null) {
            return null;
        }
        Set<Map.Entry<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>> setEntrySet = annotationDescriptor.a().entrySet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Name name = (Name) entry.getKey();
            kotlin.reflect.jvm.internal.impl.resolve.constants.g gVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.g) entry.getValue();
            ClassLoader classLoader = javaClass.getClassLoader();
            Intrinsics.checkExpressionValueIsNotNull(classLoader, "annotationClass.classLoader");
            Object objE = e(gVar, classLoader);
            Pair pair = objE != null ? TuplesKt.to(name.e(), objE) : null;
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return (Annotation) AnnotationConstructorCallerKt.createAnnotationInstance$default(javaClass, MapsKt__MapsKt.toMap(arrayList), null, 4, null);
    }

    public static final <M extends kotlin.reflect.jvm.internal.impl.protobuf.j, D extends kotlin.reflect.jvm.internal.impl.descriptors.a> D deserializeToDescriptor(Class<?> moduleAnchor, M proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, Function2<? super MemberDeserializer, ? super M, ? extends D> createDescriptor) {
        List<ProtoBuf$TypeParameter> listY;
        Intrinsics.checkParameterIsNotNull(moduleAnchor, "moduleAnchor");
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        Intrinsics.checkParameterIsNotNull(createDescriptor, "createDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.h orCreateModule = ModuleByClassLoaderKt.getOrCreateModule(moduleAnchor);
        if (proto instanceof ProtoBuf$Function) {
            listY = ((ProtoBuf$Function) proto).X();
        } else {
            if (!(proto instanceof ProtoBuf$Property)) {
                throw new IllegalStateException(("Unsupported message: " + proto).toString());
            }
            listY = ((ProtoBuf$Property) proto).Y();
        }
        List<ProtoBuf$TypeParameter> typeParameters = listY;
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVarA = orCreateModule.a();
        ModuleDescriptor moduleDescriptorB = orCreateModule.b();
        VersionRequirementTable versionRequirementTableB = VersionRequirementTable.b.b();
        Intrinsics.checkExpressionValueIsNotNull(typeParameters, "typeParameters");
        return createDescriptor.invoke(new MemberDeserializer(new DeserializationContext(jVarA, nameResolver, moduleDescriptorB, typeTable, versionRequirementTableB, metadataVersion, null, null, typeParameters)), proto);
    }

    private static final Object e(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar, ClassLoader classLoader) {
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.a) {
            return d(((kotlin.reflect.jvm.internal.impl.resolve.constants.a) gVar).b());
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) {
            List<? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> listB = ((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).b();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB, 10));
            Iterator<T> it = listB.iterator();
            while (it.hasNext()) {
                arrayList.add(e((kotlin.reflect.jvm.internal.impl.resolve.constants.g) it.next(), classLoader));
            }
            Object[] array = arrayList.toArray(new Object[0]);
            if (array != null) {
                return array;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        if (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.j) {
            Pair<? extends ClassId, ? extends Name> pairB = ((kotlin.reflect.jvm.internal.impl.resolve.constants.j) gVar).b();
            ClassId classIdC = pairB.c();
            Name nameD = pairB.d();
            Class clsC = c(classLoader, classIdC, 0, 4, null);
            if (clsC != null) {
                return Util.getEnumConstantByName(clsC, nameD.e());
            }
            return null;
        }
        if (!(gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.q)) {
            if ((gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.k) || (gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.s)) {
                return null;
            }
            return gVar.b();
        }
        q.b bVarB = ((kotlin.reflect.jvm.internal.impl.resolve.constants.q) gVar).b();
        if (bVarB instanceof q.b.C0543b) {
            q.b.C0543b c0543b = (q.b.C0543b) bVarB;
            return b(classLoader, c0543b.b(), c0543b.a());
        }
        if (!(bVarB instanceof q.b.a)) {
            throw new NoWhenBranchMatchedException();
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((q.b.a) bVarB).a().H0().q();
        if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            fVarQ = null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ;
        if (dVar != null) {
            return toJavaClass(dVar);
        }
        return null;
    }

    public static final b0 getInstanceReceiverParameter(kotlin.reflect.jvm.internal.impl.descriptors.a instanceReceiverParameter) {
        Intrinsics.checkParameterIsNotNull(instanceReceiverParameter, "$this$instanceReceiverParameter");
        if (instanceReceiverParameter.H() == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = instanceReceiverParameter.b();
        if (iVarB != null) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB).E0();
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
    }

    public static final FqName getJVM_STATIC() {
        return a;
    }

    public static final Class<?> toJavaClass(kotlin.reflect.jvm.internal.impl.descriptors.d toJavaClass) {
        Intrinsics.checkParameterIsNotNull(toJavaClass, "$this$toJavaClass");
        d0 source = toJavaClass.getSource();
        Intrinsics.checkExpressionValueIsNotNull(source, "source");
        if (source instanceof kotlin.reflect.jvm.internal.impl.load.kotlin.m) {
            kotlin.reflect.jvm.internal.impl.load.kotlin.k kVarD = ((kotlin.reflect.jvm.internal.impl.load.kotlin.m) source).d();
            if (kVarD != null) {
                return ((kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e) kVarD).e();
            }
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass");
        }
        if (source instanceof i.a) {
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.j jVarC = ((i.a) source).c();
            if (jVarC != null) {
                return ((ReflectJavaClass) jVarC).c();
            }
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass");
        }
        ClassId classId = DescriptorUtilsKt.getClassId(toJavaClass);
        if (classId != null) {
            return b(ReflectClassUtilKt.getSafeClassLoader(toJavaClass.getClass()), classId, 0);
        }
        return null;
    }

    public static final KVisibility toKVisibility(m0 toKVisibility) {
        Intrinsics.checkParameterIsNotNull(toKVisibility, "$this$toKVisibility");
        if (Intrinsics.areEqual(toKVisibility, Visibilities.f9100e)) {
            return KVisibility.a;
        }
        if (Intrinsics.areEqual(toKVisibility, Visibilities.c)) {
            return KVisibility.b;
        }
        if (Intrinsics.areEqual(toKVisibility, Visibilities.f9099d)) {
            return KVisibility.c;
        }
        if (Intrinsics.areEqual(toKVisibility, Visibilities.a) || Intrinsics.areEqual(toKVisibility, Visibilities.b)) {
            return KVisibility.f8974d;
        }
        return null;
    }
}
