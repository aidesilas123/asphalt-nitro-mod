package kotlin.reflect.jvm.internal.impl.types;

import java.util.HashMap;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;

/* JADX INFO: loaded from: classes5.dex */
public class DescriptorSubstitutor {
    private static /* synthetic */ void a(int i) {
        String str = i != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 4 ? 3 : 2];
        switch (i) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String str2 = String.format(str, objArr);
        if (i == 4) {
            throw new IllegalStateException(str2);
        }
    }

    public static TypeSubstitutor substituteTypeParameters(List<kotlin.reflect.jvm.internal.impl.descriptors.i0> list, j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.i iVar, List<kotlin.reflect.jvm.internal.impl.descriptors.i0> list2) {
        if (list == null) {
            a(0);
        }
        if (j0Var == null) {
            a(1);
        }
        if (iVar == null) {
            a(2);
        }
        if (list2 == null) {
            a(3);
        }
        TypeSubstitutor typeSubstitutorSubstituteTypeParameters = substituteTypeParameters(list, j0Var, iVar, list2, null);
        if (typeSubstitutorSubstituteTypeParameters != null) {
            return typeSubstitutorSubstituteTypeParameters;
        }
        throw new AssertionError("Substitution failed");
    }

    public static TypeSubstitutor substituteTypeParameters(List<kotlin.reflect.jvm.internal.impl.descriptors.i0> list, j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.i iVar, List<kotlin.reflect.jvm.internal.impl.descriptors.i0> list2, boolean[] zArr) {
        if (list == null) {
            a(5);
        }
        if (j0Var == null) {
            a(6);
        }
        if (iVar == null) {
            a(7);
        }
        if (list2 == null) {
            a(8);
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        int i = 0;
        for (kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var : list) {
            TypeParameterDescriptorImpl typeParameterDescriptorImplCreateForFurtherModification = TypeParameterDescriptorImpl.createForFurtherModification(iVar, i0Var.getAnnotations(), i0Var.t(), i0Var.j(), i0Var.getName(), i, kotlin.reflect.jvm.internal.impl.descriptors.d0.a, i0Var.I());
            map.put(i0Var.i(), new i0(typeParameterDescriptorImplCreateForFurtherModification.n()));
            map2.put(i0Var, typeParameterDescriptorImplCreateForFurtherModification);
            list2.add(typeParameterDescriptorImplCreateForFurtherModification);
            i++;
        }
        TypeSubstitutor typeSubstitutorCreateChainedSubstitutor = TypeSubstitutor.createChainedSubstitutor(j0Var, TypeConstructorSubstitution.createByConstructorsMap(map));
        for (kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var2 : list) {
            TypeParameterDescriptorImpl typeParameterDescriptorImpl = (TypeParameterDescriptorImpl) map2.get(i0Var2);
            for (u uVar : i0Var2.getUpperBounds()) {
                u uVarI = typeSubstitutorCreateChainedSubstitutor.i(uVar, Variance.IN_VARIANCE);
                if (uVarI == null) {
                    return null;
                }
                if (uVarI != uVar && zArr != null) {
                    zArr[0] = true;
                }
                typeParameterDescriptorImpl.k0(uVarI);
            }
            typeParameterDescriptorImpl.H0();
        }
        return typeSubstitutorCreateChainedSubstitutor;
    }
}
