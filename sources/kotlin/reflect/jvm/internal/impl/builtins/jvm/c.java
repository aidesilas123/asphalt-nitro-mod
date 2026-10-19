package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsSettings;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class c {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[JvmBuiltInsSettings.JDKMemberStatus.values().length];
        a = iArr;
        iArr[JvmBuiltInsSettings.JDKMemberStatus.BLACK_LIST.ordinal()] = 1;
        iArr[JvmBuiltInsSettings.JDKMemberStatus.NOT_CONSIDERED.ordinal()] = 2;
        iArr[JvmBuiltInsSettings.JDKMemberStatus.DROP.ordinal()] = 3;
        iArr[JvmBuiltInsSettings.JDKMemberStatus.WHITE_LIST.ordinal()] = 4;
    }
}
