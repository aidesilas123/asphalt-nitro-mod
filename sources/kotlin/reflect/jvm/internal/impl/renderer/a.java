package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt__ReversedViewsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;

/* JADX INFO: compiled from: ClassifierNamePolicy.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.renderer.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClassifierNamePolicy.kt */
    public static final class C0542a implements a {
        public static final C0542a a = new C0542a();

        private C0542a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.a
        public String a(kotlin.reflect.jvm.internal.impl.descriptors.f classifier, DescriptorRenderer renderer) {
            Intrinsics.checkParameterIsNotNull(classifier, "classifier");
            Intrinsics.checkParameterIsNotNull(renderer, "renderer");
            if (classifier instanceof i0) {
                Name name = ((i0) classifier).getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "classifier.name");
                return renderer.t(name, false);
            }
            FqNameUnsafe fqName = DescriptorUtils.getFqName(classifier);
            Intrinsics.checkExpressionValueIsNotNull(fqName, "DescriptorUtils.getFqName(classifier)");
            return renderer.s(fqName);
        }
    }

    /* JADX INFO: compiled from: ClassifierNamePolicy.kt */
    public static final class b implements a {
        public static final b a = new b();

        private b() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.f] */
        /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.i, kotlin.reflect.jvm.internal.impl.descriptors.r] */
        /* JADX WARN: Type inference failed for: r2v2, types: [kotlin.reflect.jvm.internal.impl.descriptors.i] */
        @Override // kotlin.reflect.jvm.internal.impl.renderer.a
        public String a(kotlin.reflect.jvm.internal.impl.descriptors.f classifier, DescriptorRenderer renderer) {
            Intrinsics.checkParameterIsNotNull(classifier, "classifier");
            Intrinsics.checkParameterIsNotNull(renderer, "renderer");
            if (classifier instanceof i0) {
                Name name = ((i0) classifier).getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "classifier.name");
                return renderer.t(name, false);
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(classifier.getName());
                classifier = classifier.b();
            } while (classifier instanceof kotlin.reflect.jvm.internal.impl.descriptors.d);
            return RenderingUtilsKt.renderFqName(CollectionsKt__ReversedViewsKt.asReversedMutable(arrayList));
        }
    }

    /* JADX INFO: compiled from: ClassifierNamePolicy.kt */
    public static final class c implements a {
        public static final c a = new c();

        private c() {
        }

        private final String b(kotlin.reflect.jvm.internal.impl.descriptors.f fVar) {
            Name name = fVar.getName();
            Intrinsics.checkExpressionValueIsNotNull(name, "descriptor.name");
            String strRender = RenderingUtilsKt.render(name);
            if (fVar instanceof i0) {
                return strRender;
            }
            i iVarB = fVar.b();
            Intrinsics.checkExpressionValueIsNotNull(iVarB, "descriptor.containingDeclaration");
            String strC = c(iVarB);
            if (strC == null || !(!Intrinsics.areEqual(strC, ""))) {
                return strRender;
            }
            return strC + "." + strRender;
        }

        private final String c(i iVar) {
            if (iVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                return b((kotlin.reflect.jvm.internal.impl.descriptors.f) iVar);
            }
            if (!(iVar instanceof s)) {
                return null;
            }
            FqNameUnsafe fqNameUnsafeJ = ((s) iVar).e().j();
            Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafeJ, "descriptor.fqName.toUnsafe()");
            return RenderingUtilsKt.render(fqNameUnsafeJ);
        }

        @Override // kotlin.reflect.jvm.internal.impl.renderer.a
        public String a(kotlin.reflect.jvm.internal.impl.descriptors.f classifier, DescriptorRenderer renderer) {
            Intrinsics.checkParameterIsNotNull(classifier, "classifier");
            Intrinsics.checkParameterIsNotNull(renderer, "renderer");
            return b(classifier);
        }
    }

    String a(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, DescriptorRenderer descriptorRenderer);
}
