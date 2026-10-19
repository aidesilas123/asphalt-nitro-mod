package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: compiled from: ProtoEnumFlags.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class v {
    public static final v a = new v();

    private v() {
    }

    public final ClassKind a(ProtoBuf$Class.Kind kind) {
        if (kind != null) {
            switch (u.f9814f[kind.ordinal()]) {
                case 1:
                    return ClassKind.CLASS;
                case 2:
                    return ClassKind.INTERFACE;
                case 3:
                    return ClassKind.ENUM_CLASS;
                case 4:
                    return ClassKind.ENUM_ENTRY;
                case 5:
                    return ClassKind.ANNOTATION_CLASS;
                case 6:
                case 7:
                    return ClassKind.OBJECT;
            }
        }
        return ClassKind.CLASS;
    }

    public final CallableMemberDescriptor.Kind b(ProtoBuf$MemberKind protoBuf$MemberKind) {
        if (protoBuf$MemberKind != null) {
            int i = u.a[protoBuf$MemberKind.ordinal()];
            if (i == 1) {
                return CallableMemberDescriptor.Kind.DECLARATION;
            }
            if (i == 2) {
                return CallableMemberDescriptor.Kind.FAKE_OVERRIDE;
            }
            if (i == 3) {
                return CallableMemberDescriptor.Kind.DELEGATION;
            }
            if (i == 4) {
                return CallableMemberDescriptor.Kind.SYNTHESIZED;
            }
        }
        return CallableMemberDescriptor.Kind.DECLARATION;
    }

    public final Modality c(ProtoBuf$Modality protoBuf$Modality) {
        if (protoBuf$Modality != null) {
            int i = u.c[protoBuf$Modality.ordinal()];
            if (i == 1) {
                return Modality.FINAL;
            }
            if (i == 2) {
                return Modality.OPEN;
            }
            if (i == 3) {
                return Modality.ABSTRACT;
            }
            if (i == 4) {
                return Modality.SEALED;
            }
        }
        return Modality.FINAL;
    }

    public final Variance d(ProtoBuf$Type.Argument.Projection projection) {
        Intrinsics.checkParameterIsNotNull(projection, "projection");
        int i = u.i[projection.ordinal()];
        if (i == 1) {
            return Variance.IN_VARIANCE;
        }
        if (i == 2) {
            return Variance.OUT_VARIANCE;
        }
        if (i == 3) {
            return Variance.INVARIANT;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        throw new IllegalArgumentException("Only IN, OUT and INV are supported. Actual argument: " + projection);
    }

    public final Variance e(ProtoBuf$TypeParameter.Variance variance) {
        Intrinsics.checkParameterIsNotNull(variance, "variance");
        int i = u.h[variance.ordinal()];
        if (i == 1) {
            return Variance.IN_VARIANCE;
        }
        if (i == 2) {
            return Variance.OUT_VARIANCE;
        }
        if (i == 3) {
            return Variance.INVARIANT;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final kotlin.reflect.jvm.internal.impl.descriptors.m0 f(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility r2) {
        /*
            r1 = this;
            if (r2 != 0) goto L3
            goto L21
        L3:
            int[] r0 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.u.f9813e
            int r2 = r2.ordinal()
            r2 = r0[r2]
            switch(r2) {
                case 1: goto L1e;
                case 2: goto L1b;
                case 3: goto L18;
                case 4: goto L15;
                case 5: goto L12;
                case 6: goto Lf;
                default: goto Le;
            }
        Le:
            goto L21
        Lf:
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r2 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.f9101f
            goto L23
        L12:
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r2 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.f9100e
            goto L23
        L15:
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r2 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.c
            goto L23
        L18:
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r2 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.b
            goto L23
        L1b:
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r2 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.a
            goto L23
        L1e:
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r2 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.f9099d
            goto L23
        L21:
            kotlin.reflect.jvm.internal.impl.descriptors.m0 r2 = kotlin.reflect.jvm.internal.impl.descriptors.Visibilities.a
        L23:
            java.lang.String r0 = "when (visibility) {\n    …isibilities.PRIVATE\n    }"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r2, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.v.f(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility):kotlin.reflect.jvm.internal.impl.descriptors.m0");
    }
}
