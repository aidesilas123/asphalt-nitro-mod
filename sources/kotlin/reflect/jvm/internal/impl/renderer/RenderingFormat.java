package kotlin.reflect.jvm.internal.impl.renderer;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: DescriptorRenderer.kt */
/* JADX INFO: loaded from: classes5.dex */
public enum RenderingFormat {
    PLAIN { // from class: kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat.b
        @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
        public String a(String string) {
            Intrinsics.checkParameterIsNotNull(string, "string");
            return string;
        }
    },
    HTML { // from class: kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat.a
        @Override // kotlin.reflect.jvm.internal.impl.renderer.RenderingFormat
        public String a(String string) {
            Intrinsics.checkParameterIsNotNull(string, "string");
            return StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(string, "<", "&lt;", false, 4, (Object) null), ">", "&gt;", false, 4, (Object) null);
        }
    };

    /* synthetic */ RenderingFormat(n nVar) {
        this();
    }

    public abstract String a(String str);
}
