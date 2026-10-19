package kotlin.reflect.jvm.internal.impl.load.kotlin;

import com.json.o2;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.FunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.SuspendFunctionTypesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;

/* JADX INFO: compiled from: typeSignatureMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeSignatureMappingKt {
    private static final <T> T a(h<T> hVar, T t, boolean z) {
        return z ? hVar.b(t) : t;
    }

    public static final String computeInternalName(kotlin.reflect.jvm.internal.impl.descriptors.d klass, TypeMappingConfiguration<?> typeMappingConfiguration) {
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        Intrinsics.checkParameterIsNotNull(typeMappingConfiguration, "typeMappingConfiguration");
        String strB = typeMappingConfiguration.b(klass);
        if (strB != null) {
            return strB;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = klass.b();
        Intrinsics.checkExpressionValueIsNotNull(iVarB, "klass.containingDeclaration");
        Name nameSafeIdentifier = SpecialNames.safeIdentifier(klass.getName());
        Intrinsics.checkExpressionValueIsNotNull(nameSafeIdentifier, "SpecialNames.safeIdentifier(klass.name)");
        String strG = nameSafeIdentifier.g();
        Intrinsics.checkExpressionValueIsNotNull(strG, "SpecialNames.safeIdentifier(klass.name).identifier");
        if (iVarB instanceof s) {
            FqName fqNameE = ((s) iVarB).e();
            if (fqNameE.d()) {
                return strG;
            }
            StringBuilder sb = new StringBuilder();
            String strB2 = fqNameE.b();
            Intrinsics.checkExpressionValueIsNotNull(strB2, "fqName.asString()");
            sb.append(StringsKt__StringsJVMKt.replace$default(strB2, '.', '/', false, 4, (Object) null));
            sb.append('/');
            sb.append(strG);
            return sb.toString();
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) (!(iVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) ? null : iVarB);
        if (dVar == null) {
            throw new IllegalArgumentException("Unexpected container: " + iVarB + " for " + klass);
        }
        String strC = typeMappingConfiguration.c(dVar);
        if (strC == null) {
            strC = computeInternalName(dVar, typeMappingConfiguration);
        }
        return strC + '$' + strG;
    }

    public static /* synthetic */ String computeInternalName$default(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, TypeMappingConfiguration typeMappingConfiguration, int i, Object obj) {
        if ((i & 2) != 0) {
            typeMappingConfiguration = p.a;
        }
        return computeInternalName(dVar, typeMappingConfiguration);
    }

    public static final boolean hasVoidReturnType(kotlin.reflect.jvm.internal.impl.descriptors.a descriptor) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        if (descriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.h) {
            return true;
        }
        u returnType = descriptor.getReturnType();
        if (returnType == null) {
            Intrinsics.throwNpe();
        }
        if (KotlinBuiltIns.isUnit(returnType)) {
            u returnType2 = descriptor.getReturnType();
            if (returnType2 == null) {
                Intrinsics.throwNpe();
            }
            if (!TypeUtils.isNullableType(returnType2) && !(descriptor instanceof z)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c4 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> T mapBuiltInType(kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext r5, kotlin.reflect.jvm.internal.impl.types.model.f r6, kotlin.reflect.jvm.internal.impl.load.kotlin.h<T> r7, kotlin.reflect.jvm.internal.impl.load.kotlin.q r8) {
        /*
            Method dump skipped, instruction units count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.TypeSignatureMappingKt.mapBuiltInType(kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext, kotlin.reflect.jvm.internal.impl.types.model.f, kotlin.reflect.jvm.internal.impl.load.kotlin.h, kotlin.reflect.jvm.internal.impl.load.kotlin.q):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11, types: [T, java.lang.Object] */
    public static final <T> T mapType(u kotlinType, h<T> factory, q mode, TypeMappingConfiguration<? extends T> typeMappingConfiguration, e<T> eVar, Function3<? super u, ? super T, ? super q, v> writeGenericType) {
        T t;
        u uVar;
        Object objMapType;
        Intrinsics.checkParameterIsNotNull(kotlinType, "kotlinType");
        Intrinsics.checkParameterIsNotNull(factory, "factory");
        Intrinsics.checkParameterIsNotNull(mode, "mode");
        Intrinsics.checkParameterIsNotNull(typeMappingConfiguration, "typeMappingConfiguration");
        Intrinsics.checkParameterIsNotNull(writeGenericType, "writeGenericType");
        u uVarD = typeMappingConfiguration.d(kotlinType);
        if (uVarD != null) {
            return (T) mapType(uVarD, factory, mode, typeMappingConfiguration, eVar, writeGenericType);
        }
        if (FunctionTypesKt.isSuspendFunctionType(kotlinType)) {
            return (T) mapType(SuspendFunctionTypesKt.transformSuspendFunctionToRuntimeFunctionType(kotlinType, typeMappingConfiguration.e()), factory, mode, typeMappingConfiguration, eVar, writeGenericType);
        }
        kotlin.reflect.jvm.internal.impl.types.checker.j jVar = kotlin.reflect.jvm.internal.impl.types.checker.j.a;
        Object objMapBuiltInType = mapBuiltInType(jVar, kotlinType, factory, mode);
        if (objMapBuiltInType != null) {
            ?? r11 = (Object) a(factory, objMapBuiltInType, mode.c());
            writeGenericType.invoke(kotlinType, r11, mode);
            return r11;
        }
        f0 f0VarH0 = kotlinType.H0();
        if (f0VarH0 instanceof t) {
            return (T) mapType(TypeUtilsKt.replaceArgumentsWithStarProjections(typeMappingConfiguration.g(((t) f0VarH0).h())), factory, mode, typeMappingConfiguration, eVar, writeGenericType);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = f0VarH0.q();
        if (fVarC == null) {
            throw new UnsupportedOperationException("no descriptor for type constructor of " + kotlinType);
        }
        Intrinsics.checkExpressionValueIsNotNull(fVarC, "constructor.declarationD…structor of $kotlinType\")");
        if (ErrorUtils.isError(fVarC)) {
            T t2 = (T) factory.d("error/NonExistentClass");
            typeMappingConfiguration.f(kotlinType, (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC);
            if (eVar == null) {
                return t2;
            }
            throw null;
        }
        boolean z = fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d;
        if (z && KotlinBuiltIns.isArray(kotlinType)) {
            if (kotlinType.G0().size() != 1) {
                throw new UnsupportedOperationException("arrays must have one type argument");
            }
            g0 g0Var = kotlinType.G0().get(0);
            u type = g0Var.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "memberProjection.type");
            if (g0Var.c() == Variance.IN_VARIANCE) {
                objMapType = factory.d("java/lang/Object");
                if (eVar != null) {
                    throw null;
                }
            } else {
                if (eVar != null) {
                    throw null;
                }
                Variance varianceC = g0Var.c();
                Intrinsics.checkExpressionValueIsNotNull(varianceC, "memberProjection.projectionKind");
                objMapType = mapType(type, factory, mode.e(varianceC), typeMappingConfiguration, eVar, writeGenericType);
                if (eVar != null) {
                    throw null;
                }
            }
            return (T) factory.a(o2.i.f6490d + factory.c(objMapType));
        }
        if (!z) {
            if (!(fVarC instanceof i0)) {
                throw new UnsupportedOperationException("Unknown type " + kotlinType);
            }
            T t3 = (T) mapType(TypeUtilsKt.getRepresentativeUpperBound((i0) fVarC), factory, mode, typeMappingConfiguration, null, FunctionsKt.getDO_NOTHING_3());
            if (eVar == null) {
                return t3;
            }
            Intrinsics.checkExpressionValueIsNotNull(fVarC.getName(), "descriptor.getName()");
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
        if (dVar.isInline() && !mode.b() && (uVar = (u) InlineClassMappingKt.computeExpandedTypeForInlineClass(jVar, kotlinType)) != null) {
            return (T) mapType(uVar, factory, mode.f(), typeMappingConfiguration, eVar, writeGenericType);
        }
        if (mode.d() && KotlinBuiltIns.isKClass(dVar)) {
            t = (Object) factory.e();
        } else {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = dVar.a();
            Intrinsics.checkExpressionValueIsNotNull(dVarA, "descriptor.original");
            T tA = typeMappingConfiguration.a(dVarA);
            if (tA != null) {
                t = (Object) tA;
            } else {
                if (dVar.getKind() == ClassKind.ENUM_ENTRY) {
                    kotlin.reflect.jvm.internal.impl.descriptors.i iVarB = dVar.b();
                    if (iVarB == null) {
                        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    }
                    dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) iVarB;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarA2 = dVar.a();
                Intrinsics.checkExpressionValueIsNotNull(dVarA2, "enumClassIfEnumEntry.original");
                t = (Object) factory.d(computeInternalName(dVarA2, typeMappingConfiguration));
            }
        }
        writeGenericType.invoke(kotlinType, t, mode);
        return t;
    }

    public static /* synthetic */ Object mapType$default(u uVar, h hVar, q qVar, TypeMappingConfiguration typeMappingConfiguration, e eVar, Function3 function3, int i, Object obj) {
        if ((i & 32) != 0) {
            function3 = FunctionsKt.getDO_NOTHING_3();
        }
        return mapType(uVar, hVar, qVar, typeMappingConfiguration, eVar, function3);
    }
}
