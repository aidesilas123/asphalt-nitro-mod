package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;

/* JADX INFO: compiled from: TypeAliasExpansionReportStrategy.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface e0 {

    /* JADX INFO: compiled from: TypeAliasExpansionReportStrategy.kt */
    public static final class a implements e0 {
        public static final a a = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.e0
        public void a(kotlin.reflect.jvm.internal.impl.descriptors.h0 typeAlias) {
            Intrinsics.checkParameterIsNotNull(typeAlias, "typeAlias");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.e0
        public void b(u bound, u unsubstitutedArgument, u argument, kotlin.reflect.jvm.internal.impl.descriptors.i0 typeParameter) {
            Intrinsics.checkParameterIsNotNull(bound, "bound");
            Intrinsics.checkParameterIsNotNull(unsubstitutedArgument, "unsubstitutedArgument");
            Intrinsics.checkParameterIsNotNull(argument, "argument");
            Intrinsics.checkParameterIsNotNull(typeParameter, "typeParameter");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.e0
        public void c(AnnotationDescriptor annotation) {
            Intrinsics.checkParameterIsNotNull(annotation, "annotation");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.e0
        public void d(kotlin.reflect.jvm.internal.impl.descriptors.h0 typeAlias, kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var, u substitutedArgument) {
            Intrinsics.checkParameterIsNotNull(typeAlias, "typeAlias");
            Intrinsics.checkParameterIsNotNull(substitutedArgument, "substitutedArgument");
        }
    }

    void a(kotlin.reflect.jvm.internal.impl.descriptors.h0 h0Var);

    void b(u uVar, u uVar2, u uVar3, kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var);

    void c(AnnotationDescriptor annotationDescriptor);

    void d(kotlin.reflect.jvm.internal.impl.descriptors.h0 h0Var, kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var, u uVar);
}
