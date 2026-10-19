package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.n;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: util.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UtilKt {
    public static final List<ValueParameterDescriptor> copyValueParameters(Collection<h> newValueParametersTypes, Collection<? extends ValueParameterDescriptor> oldValueParameters, kotlin.reflect.jvm.internal.impl.descriptors.a newOwner) {
        Intrinsics.checkParameterIsNotNull(newValueParametersTypes, "newValueParametersTypes");
        Intrinsics.checkParameterIsNotNull(oldValueParameters, "oldValueParameters");
        Intrinsics.checkParameterIsNotNull(newOwner, "newOwner");
        newValueParametersTypes.size();
        oldValueParameters.size();
        List<Pair> listZip = CollectionsKt___CollectionsKt.zip(newValueParametersTypes, oldValueParameters);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listZip, 10));
        for (Pair pair : listZip) {
            h hVar = (h) pair.c();
            ValueParameterDescriptor valueParameterDescriptor = (ValueParameterDescriptor) pair.d();
            int iH = valueParameterDescriptor.h();
            Annotations annotations = valueParameterDescriptor.getAnnotations();
            Name name = valueParameterDescriptor.getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "oldParameter.name");
            u uVarB = hVar.b();
            boolean zA = hVar.a();
            boolean zM0 = valueParameterDescriptor.m0();
            boolean zJ0 = valueParameterDescriptor.j0();
            u uVarL = valueParameterDescriptor.q0() != null ? DescriptorUtilsKt.getModule(newOwner).k().l(hVar.b()) : null;
            d0 source = valueParameterDescriptor.getSource();
            Intrinsics.checkExpressionValueIsNotNull(source, "oldParameter.source");
            arrayList.add(new ValueParameterDescriptorImpl(newOwner, null, iH, annotations, name, uVarB, zA, zM0, zJ0, uVarL, source));
        }
        return arrayList;
    }

    public static final a getDefaultValueFromAnnotation(ValueParameterDescriptor getDefaultValueFromAnnotation) {
        kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarFirstArgument;
        String strB;
        Intrinsics.checkParameterIsNotNull(getDefaultValueFromAnnotation, "$this$getDefaultValueFromAnnotation");
        Annotations annotations = getDefaultValueFromAnnotation.getAnnotations();
        FqName fqName = n.n;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "JvmAnnotationNames.DEFAULT_VALUE_FQ_NAME");
        AnnotationDescriptor annotationDescriptorB = annotations.b(fqName);
        if (annotationDescriptorB != null && (gVarFirstArgument = DescriptorUtilsKt.firstArgument(annotationDescriptorB)) != null) {
            if (!(gVarFirstArgument instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.u)) {
                gVarFirstArgument = null;
            }
            kotlin.reflect.jvm.internal.impl.resolve.constants.u uVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.u) gVarFirstArgument;
            if (uVar != null && (strB = uVar.b()) != null) {
                return new g(strB);
            }
        }
        Annotations annotations2 = getDefaultValueFromAnnotation.getAnnotations();
        FqName fqName2 = n.o;
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "JvmAnnotationNames.DEFAULT_NULL_FQ_NAME");
        if (annotations2.N(fqName2)) {
            return e.a;
        }
        return null;
    }

    public static final kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c getParentJavaStaticClassScope(kotlin.reflect.jvm.internal.impl.descriptors.d getParentJavaStaticClassScope) {
        Intrinsics.checkParameterIsNotNull(getParentJavaStaticClassScope, "$this$getParentJavaStaticClassScope");
        kotlin.reflect.jvm.internal.impl.descriptors.d superClassNotAny = DescriptorUtilsKt.getSuperClassNotAny(getParentJavaStaticClassScope);
        if (superClassNotAny == null) {
            return null;
        }
        MemberScope memberScopeF0 = superClassNotAny.f0();
        kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c) (memberScopeF0 instanceof kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.c ? memberScopeF0 : null);
        return cVar != null ? cVar : getParentJavaStaticClassScope(superClassNotAny);
    }
}
