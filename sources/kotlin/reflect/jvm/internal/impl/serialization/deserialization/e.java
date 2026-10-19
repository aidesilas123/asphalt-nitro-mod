package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class e {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;

    static {
        int[] iArr = new int[ProtoBuf$Annotation.Argument.Value.Type.values().length];
        a = iArr;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.BYTE.ordinal()] = 1;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.CHAR.ordinal()] = 2;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.SHORT.ordinal()] = 3;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.INT.ordinal()] = 4;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.LONG.ordinal()] = 5;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.FLOAT.ordinal()] = 6;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.DOUBLE.ordinal()] = 7;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.BOOLEAN.ordinal()] = 8;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.STRING.ordinal()] = 9;
        ProtoBuf$Annotation.Argument.Value.Type type = ProtoBuf$Annotation.Argument.Value.Type.CLASS;
        iArr[type.ordinal()] = 10;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.ENUM.ordinal()] = 11;
        iArr[ProtoBuf$Annotation.Argument.Value.Type.ANNOTATION.ordinal()] = 12;
        ProtoBuf$Annotation.Argument.Value.Type type2 = ProtoBuf$Annotation.Argument.Value.Type.ARRAY;
        iArr[type2.ordinal()] = 13;
        int[] iArr2 = new int[ProtoBuf$Annotation.Argument.Value.Type.values().length];
        b = iArr2;
        iArr2[type.ordinal()] = 1;
        iArr2[type2.ordinal()] = 2;
    }
}
