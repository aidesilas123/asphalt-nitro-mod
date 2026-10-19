package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.Set;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: DescriptorRenderer.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface DescriptorRendererOptions {

    /* JADX INFO: compiled from: DescriptorRenderer.kt */
    public static final class DefaultImpls {
        public static boolean getIncludeAnnotationArguments(DescriptorRendererOptions descriptorRendererOptions) {
            return descriptorRendererOptions.j().e();
        }

        public static boolean getIncludeEmptyAnnotationArguments(DescriptorRendererOptions descriptorRendererOptions) {
            return descriptorRendererOptions.j().f();
        }
    }

    void a(boolean z);

    void b(ParameterNameRenderingPolicy parameterNameRenderingPolicy);

    void c(boolean z);

    boolean d();

    void e(boolean z);

    void f(boolean z);

    void g(RenderingFormat renderingFormat);

    boolean getDebugMode();

    void h(AnnotationArgumentsRenderingPolicy annotationArgumentsRenderingPolicy);

    Set<FqName> i();

    AnnotationArgumentsRenderingPolicy j();

    void k(Set<FqName> set);

    void l(Set<? extends DescriptorRendererModifier> set);

    void m(a aVar);

    void n(boolean z);

    void o(boolean z);

    void setDebugMode(boolean z);
}
