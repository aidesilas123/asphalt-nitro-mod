package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.x;
import kotlin.reflect.jvm.internal.impl.resolve.constants.y;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;

/* JADX INFO: compiled from: AnnotationDeserializer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f {
    private final ModuleDescriptor a;
    private final NotFoundClasses b;

    public f(ModuleDescriptor module, NotFoundClasses notFoundClasses) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        this.a = module;
        this.b = notFoundClasses;
    }

    private final boolean b(kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar, kotlin.reflect.jvm.internal.impl.types.u uVar, ProtoBuf$Annotation.Argument.Value value) {
        ProtoBuf$Annotation.Argument.Value.Type typeM = value.M();
        if (typeM != null) {
            int i = e.b[typeM.ordinal()];
            if (i == 1) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = uVar.H0().q();
                if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                    fVarQ = null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ;
                if (dVar != null && !KotlinBuiltIns.isKClass(dVar)) {
                    return false;
                }
            } else if (i == 2) {
                if (!((gVar instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.b) && ((kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar).b().size() == value.E().size())) {
                    throw new IllegalStateException(("Deserialized ArrayValue should have the same number of elements as the original array value: " + gVar).toString());
                }
                kotlin.reflect.jvm.internal.impl.types.u uVarL = c().l(uVar);
                Intrinsics.checkExpressionValueIsNotNull(uVarL, "builtIns.getArrayElementType(expectedType)");
                kotlin.reflect.jvm.internal.impl.resolve.constants.b bVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.b) gVar;
                Iterable indices = CollectionsKt__CollectionsKt.getIndices(bVar.b());
                if (!(indices instanceof Collection) || !((Collection) indices).isEmpty()) {
                    Iterator it = indices.iterator();
                    while (it.hasNext()) {
                        int iNextInt = ((IntIterator) it).nextInt();
                        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVar2 = bVar.b().get(iNextInt);
                        ProtoBuf$Annotation.Argument.Value valueC = value.C(iNextInt);
                        Intrinsics.checkExpressionValueIsNotNull(valueC, "value.getArrayElement(i)");
                        if (!b(gVar2, uVarL, valueC)) {
                            return false;
                        }
                    }
                }
            }
            return true;
        }
        return Intrinsics.areEqual(gVar.a(this.a), uVar);
    }

    private final KotlinBuiltIns c() {
        return this.a.k();
    }

    private final Pair<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> d(ProtoBuf$Annotation.Argument argument, Map<Name, ? extends ValueParameterDescriptor> map, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar) {
        ValueParameterDescriptor valueParameterDescriptor = map.get(NameResolverUtilKt.getName(bVar, argument.q()));
        if (valueParameterDescriptor == null) {
            return null;
        }
        Name name = NameResolverUtilKt.getName(bVar, argument.q());
        kotlin.reflect.jvm.internal.impl.types.u type = valueParameterDescriptor.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "parameter.type");
        ProtoBuf$Annotation.Argument.Value valueR = argument.r();
        Intrinsics.checkExpressionValueIsNotNull(valueR, "proto.value");
        return new Pair<>(name, g(type, valueR, bVar));
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d e(ClassId classId) {
        return FindClassInModuleKt.findNonGenericClassAcrossDependencies(this.a, classId, this.b);
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> g(kotlin.reflect.jvm.internal.impl.types.u uVar, ProtoBuf$Annotation.Argument.Value value, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVar) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarF = f(uVar, value, bVar);
        if (!b(gVarF, uVar, value)) {
            gVarF = null;
        }
        if (gVarF != null) {
            return gVarF;
        }
        return kotlin.reflect.jvm.internal.impl.resolve.constants.k.b.a("Unexpected argument value: actual type " + value.M() + " != expected type " + uVar);
    }

    public final AnnotationDescriptor a(ProtoBuf$Annotation proto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver) {
        Intrinsics.checkParameterIsNotNull(proto, "proto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = e(NameResolverUtilKt.getClassId(nameResolver, proto.u()));
        Map mapEmptyMap = MapsKt__MapsKt.emptyMap();
        if (proto.s() != 0 && !ErrorUtils.isError(dVarE) && DescriptorUtils.isAnnotationClass(dVarE)) {
            Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionF = dVarE.f();
            Intrinsics.checkExpressionValueIsNotNull(collectionF, "annotationClass.constructors");
            kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) kotlin.collections.p.singleOrNull(collectionF);
            if (cVar != null) {
                List<ValueParameterDescriptor> listG = cVar.g();
                Intrinsics.checkExpressionValueIsNotNull(listG, "constructor.valueParameters");
                LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG, 10)), 16));
                for (Object obj : listG) {
                    ValueParameterDescriptor it = (ValueParameterDescriptor) obj;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    linkedHashMap.put(it.getName(), obj);
                }
                List<ProtoBuf$Annotation.Argument> listT = proto.t();
                Intrinsics.checkExpressionValueIsNotNull(listT, "proto.argumentList");
                ArrayList arrayList = new ArrayList();
                for (ProtoBuf$Annotation.Argument it2 : listT) {
                    Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                    Pair<Name, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> pairD = d(it2, linkedHashMap, nameResolver);
                    if (pairD != null) {
                        arrayList.add(pairD);
                    }
                }
                mapEmptyMap = MapsKt__MapsKt.toMap(arrayList);
            }
        }
        return new kotlin.reflect.jvm.internal.impl.descriptors.annotations.c(dVarE.n(), mapEmptyMap, d0.a);
    }

    public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> f(kotlin.reflect.jvm.internal.impl.types.u expectedType, ProtoBuf$Annotation.Argument.Value value, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> vVar;
        Intrinsics.checkParameterIsNotNull(expectedType, "expectedType");
        Intrinsics.checkParameterIsNotNull(value, "value");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Boolean boolA = Flags.K.a(value.I());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_UNSIGNED.get(value.flags)");
        boolean zBooleanValue = boolA.booleanValue();
        ProtoBuf$Annotation.Argument.Value.Type typeM = value.M();
        if (typeM != null) {
            switch (e.a[typeM.ordinal()]) {
                case 1:
                    byte bK = (byte) value.K();
                    vVar = zBooleanValue ? new kotlin.reflect.jvm.internal.impl.resolve.constants.v(bK) : new kotlin.reflect.jvm.internal.impl.resolve.constants.d(bK);
                    break;
                case 2:
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.e((char) value.K());
                case 3:
                    short sK = (short) value.K();
                    vVar = zBooleanValue ? new y(sK) : new kotlin.reflect.jvm.internal.impl.resolve.constants.t(sK);
                    break;
                case 4:
                    int iK = (int) value.K();
                    return zBooleanValue ? new kotlin.reflect.jvm.internal.impl.resolve.constants.w(iK) : new kotlin.reflect.jvm.internal.impl.resolve.constants.m(iK);
                case 5:
                    long jK = value.K();
                    return zBooleanValue ? new x(jK) : new kotlin.reflect.jvm.internal.impl.resolve.constants.r(jK);
                case 6:
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.l(value.J());
                case 7:
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.i(value.G());
                case 8:
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.c(value.K() != 0);
                case 9:
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.u(nameResolver.getString(value.L()));
                case 10:
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.q(NameResolverUtilKt.getClassId(nameResolver, value.F()), value.B());
                case 11:
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.j(NameResolverUtilKt.getClassId(nameResolver, value.F()), NameResolverUtilKt.getName(nameResolver, value.H()));
                case 12:
                    ProtoBuf$Annotation protoBuf$AnnotationA = value.A();
                    Intrinsics.checkExpressionValueIsNotNull(protoBuf$AnnotationA, "value.annotation");
                    return new kotlin.reflect.jvm.internal.impl.resolve.constants.a(a(protoBuf$AnnotationA, nameResolver));
                case 13:
                    kotlin.reflect.jvm.internal.impl.resolve.constants.h hVar = kotlin.reflect.jvm.internal.impl.resolve.constants.h.a;
                    List<ProtoBuf$Annotation.Argument.Value> listE = value.E();
                    Intrinsics.checkExpressionValueIsNotNull(listE, "value.arrayElementList");
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listE, 10));
                    for (ProtoBuf$Annotation.Argument.Value it : listE) {
                        kotlin.reflect.jvm.internal.impl.types.y yVarJ = c().j();
                        Intrinsics.checkExpressionValueIsNotNull(yVarJ, "builtIns.anyType");
                        Intrinsics.checkExpressionValueIsNotNull(it, "it");
                        arrayList.add(f(yVarJ, it, nameResolver));
                    }
                    return hVar.b(arrayList, expectedType);
            }
            return vVar;
        }
        throw new IllegalStateException(("Unsupported annotation argument type: " + value.M() + " (expected " + expectedType + ')').toString());
    }
}
