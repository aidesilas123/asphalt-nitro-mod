package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: RenderingUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class RenderingUtilsKt {
    private static final boolean a(Name name) {
        boolean z;
        if (name.h()) {
            return false;
        }
        String strE = name.e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "asString()");
        if (!g.a.contains(strE)) {
            int i = 0;
            while (true) {
                if (i >= strE.length()) {
                    z = false;
                    break;
                }
                char cCharAt = strE.charAt(i);
                if ((Character.isLetterOrDigit(cCharAt) || cCharAt == '_') ? false : true) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public static final String render(FqNameUnsafe render) {
        Intrinsics.checkParameterIsNotNull(render, "$this$render");
        List<Name> listH = render.h();
        Intrinsics.checkExpressionValueIsNotNull(listH, "pathSegments()");
        return renderFqName(listH);
    }

    public static final String render(Name render) {
        Intrinsics.checkParameterIsNotNull(render, "$this$render");
        if (!a(render)) {
            String strE = render.e();
            Intrinsics.checkExpressionValueIsNotNull(strE, "asString()");
            return strE;
        }
        StringBuilder sb = new StringBuilder();
        String strE2 = render.e();
        Intrinsics.checkExpressionValueIsNotNull(strE2, "asString()");
        sb.append(String.valueOf('`') + strE2);
        sb.append('`');
        return sb.toString();
    }

    public static final String renderFqName(List<Name> pathSegments) {
        Intrinsics.checkParameterIsNotNull(pathSegments, "pathSegments");
        StringBuilder sb = new StringBuilder();
        for (Name name : pathSegments) {
            if (sb.length() > 0) {
                sb.append(".");
            }
            sb.append(render(name));
        }
        String string = sb.toString();
        Intrinsics.checkExpressionValueIsNotNull(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
