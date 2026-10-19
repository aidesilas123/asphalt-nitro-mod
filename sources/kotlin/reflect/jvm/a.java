package kotlin.reflect.jvm;

import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class a {
    public static final /* synthetic */ int[] a;

    static {
        int[] iArr = new int[KotlinClassHeader.Kind.values().length];
        a = iArr;
        iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 1;
        iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS.ordinal()] = 2;
        iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 3;
    }
}
