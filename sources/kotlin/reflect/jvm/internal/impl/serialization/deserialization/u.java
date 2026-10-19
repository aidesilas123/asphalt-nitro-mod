package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class u {
    public static final /* synthetic */ int[] a;
    public static final /* synthetic */ int[] b;
    public static final /* synthetic */ int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int[] f9812d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int[] f9813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int[] f9814f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int[] f9815g;
    public static final /* synthetic */ int[] h;
    public static final /* synthetic */ int[] i;

    static {
        int[] iArr = new int[ProtoBuf$MemberKind.values().length];
        a = iArr;
        iArr[ProtoBuf$MemberKind.DECLARATION.ordinal()] = 1;
        iArr[ProtoBuf$MemberKind.FAKE_OVERRIDE.ordinal()] = 2;
        iArr[ProtoBuf$MemberKind.DELEGATION.ordinal()] = 3;
        iArr[ProtoBuf$MemberKind.SYNTHESIZED.ordinal()] = 4;
        int[] iArr2 = new int[CallableMemberDescriptor.Kind.values().length];
        b = iArr2;
        iArr2[CallableMemberDescriptor.Kind.DECLARATION.ordinal()] = 1;
        iArr2[CallableMemberDescriptor.Kind.FAKE_OVERRIDE.ordinal()] = 2;
        iArr2[CallableMemberDescriptor.Kind.DELEGATION.ordinal()] = 3;
        iArr2[CallableMemberDescriptor.Kind.SYNTHESIZED.ordinal()] = 4;
        int[] iArr3 = new int[ProtoBuf$Modality.values().length];
        c = iArr3;
        iArr3[ProtoBuf$Modality.FINAL.ordinal()] = 1;
        iArr3[ProtoBuf$Modality.OPEN.ordinal()] = 2;
        iArr3[ProtoBuf$Modality.ABSTRACT.ordinal()] = 3;
        iArr3[ProtoBuf$Modality.SEALED.ordinal()] = 4;
        int[] iArr4 = new int[Modality.values().length];
        f9812d = iArr4;
        iArr4[Modality.FINAL.ordinal()] = 1;
        iArr4[Modality.OPEN.ordinal()] = 2;
        iArr4[Modality.ABSTRACT.ordinal()] = 3;
        iArr4[Modality.SEALED.ordinal()] = 4;
        int[] iArr5 = new int[ProtoBuf$Visibility.values().length];
        f9813e = iArr5;
        iArr5[ProtoBuf$Visibility.INTERNAL.ordinal()] = 1;
        iArr5[ProtoBuf$Visibility.PRIVATE.ordinal()] = 2;
        iArr5[ProtoBuf$Visibility.PRIVATE_TO_THIS.ordinal()] = 3;
        iArr5[ProtoBuf$Visibility.PROTECTED.ordinal()] = 4;
        iArr5[ProtoBuf$Visibility.PUBLIC.ordinal()] = 5;
        iArr5[ProtoBuf$Visibility.LOCAL.ordinal()] = 6;
        int[] iArr6 = new int[ProtoBuf$Class.Kind.values().length];
        f9814f = iArr6;
        iArr6[ProtoBuf$Class.Kind.CLASS.ordinal()] = 1;
        iArr6[ProtoBuf$Class.Kind.INTERFACE.ordinal()] = 2;
        iArr6[ProtoBuf$Class.Kind.ENUM_CLASS.ordinal()] = 3;
        iArr6[ProtoBuf$Class.Kind.ENUM_ENTRY.ordinal()] = 4;
        iArr6[ProtoBuf$Class.Kind.ANNOTATION_CLASS.ordinal()] = 5;
        iArr6[ProtoBuf$Class.Kind.OBJECT.ordinal()] = 6;
        iArr6[ProtoBuf$Class.Kind.COMPANION_OBJECT.ordinal()] = 7;
        int[] iArr7 = new int[ClassKind.values().length];
        f9815g = iArr7;
        iArr7[ClassKind.CLASS.ordinal()] = 1;
        iArr7[ClassKind.INTERFACE.ordinal()] = 2;
        iArr7[ClassKind.ENUM_CLASS.ordinal()] = 3;
        iArr7[ClassKind.ENUM_ENTRY.ordinal()] = 4;
        iArr7[ClassKind.ANNOTATION_CLASS.ordinal()] = 5;
        iArr7[ClassKind.OBJECT.ordinal()] = 6;
        int[] iArr8 = new int[ProtoBuf$TypeParameter.Variance.values().length];
        h = iArr8;
        iArr8[ProtoBuf$TypeParameter.Variance.IN.ordinal()] = 1;
        iArr8[ProtoBuf$TypeParameter.Variance.OUT.ordinal()] = 2;
        iArr8[ProtoBuf$TypeParameter.Variance.INV.ordinal()] = 3;
        int[] iArr9 = new int[ProtoBuf$Type.Argument.Projection.values().length];
        i = iArr9;
        iArr9[ProtoBuf$Type.Argument.Projection.IN.ordinal()] = 1;
        iArr9[ProtoBuf$Type.Argument.Projection.OUT.ordinal()] = 2;
        iArr9[ProtoBuf$Type.Argument.Projection.INV.ordinal()] = 3;
        iArr9[ProtoBuf$Type.Argument.Projection.STAR.ordinal()] = 4;
    }
}
