package kotlin.reflect.jvm.internal.impl.types;

import com.json.o2;
import java.util.Iterator;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.text.StringsKt__StringBuilderKt;

/* JADX INFO: compiled from: KotlinType.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class y extends m0 implements kotlin.reflect.jvm.internal.impl.types.model.g, kotlin.reflect.jvm.internal.impl.types.model.h {
    public y() {
        super(null);
    }

    /* JADX INFO: renamed from: O0 */
    public abstract y L0(boolean z);

    /* JADX INFO: renamed from: P0 */
    public abstract y N0(Annotations annotations);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        Iterator<AnnotationDescriptor> it = getAnnotations().iterator();
        while (it.hasNext()) {
            StringsKt__StringBuilderKt.append(sb, o2.i.f6490d, DescriptorRenderer.renderAnnotation$default(DescriptorRenderer.i, it.next(), null, 2, null), "] ");
        }
        sb.append(H0());
        if (!G0().isEmpty()) {
            CollectionsKt___CollectionsKt.joinTo$default(G0(), sb, ", ", "<", ">", 0, null, null, 112, null);
        }
        if (I0()) {
            sb.append("?");
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
