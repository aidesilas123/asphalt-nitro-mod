package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[JvmBuiltIns.Kind.values().length];
        a = iArr;
        iArr[JvmBuiltIns.Kind.FROM_DEPENDENCIES.ordinal()] = 1;
        iArr[JvmBuiltIns.Kind.FROM_CLASS_LOADER.ordinal()] = 2;
        iArr[JvmBuiltIns.Kind.FALLBACK.ordinal()] = 3;
    }
}
