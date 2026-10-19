package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.protobuf.Internal;

/* JADX INFO: loaded from: classes5.dex */
public class Flags {
    public static final b A;
    public static final b B;
    public static final b C;
    public static final b D;
    public static final b E;
    public static final b F;
    public static final b G;
    public static final b H;
    public static final b I;
    public static final b J;
    public static final b K;
    public static final b a = FlagField.booleanFirst();
    public static final b b;
    public static final FlagField<ProtoBuf$Visibility> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final FlagField<ProtoBuf$Modality> f9619d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final FlagField<ProtoBuf$Class.Kind> f9620e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f9621f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final b f9622g;
    public static final b h;
    public static final b i;
    public static final b j;
    public static final b k;
    public static final FlagField<ProtoBuf$MemberKind> l;
    public static final b m;
    public static final b n;
    public static final b o;
    public static final b p;
    public static final b q;
    public static final b r;
    public static final b s;
    public static final b t;
    public static final b u;
    public static final b v;
    public static final b w;
    public static final b x;
    public static final b y;
    public static final b z;

    public static abstract class FlagField<E> {
        public final int a;
        public final int b;

        private FlagField(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        /* JADX WARN: Incorrect types in method signature: <E::Lkotlin/reflect/jvm/internal/impl/protobuf/Internal$a;>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField<*>;[TE;)Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField<TE;>; */
        public static FlagField after(FlagField flagField, Internal.a[] aVarArr) {
            return new c(flagField.a + flagField.b, aVarArr);
        }

        public static b booleanAfter(FlagField<?> flagField) {
            return new b(flagField.a + flagField.b);
        }

        public static b booleanFirst() {
            return new b(0);
        }

        public abstract E a(int i);

        public abstract int b(E e2);
    }

    public static class b extends FlagField<Boolean> {
        public b(int i) {
            super(i, 1);
        }

        private static /* synthetic */ void c(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$BooleanFlagField", "get"));
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.FlagField
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Boolean a(int i) {
            Boolean boolValueOf = Boolean.valueOf((i & (1 << this.a)) != 0);
            if (boolValueOf == null) {
                c(0);
            }
            return boolValueOf;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.FlagField
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public int b(Boolean bool) {
            if (bool.booleanValue()) {
                return 1 << this.a;
            }
            return 0;
        }
    }

    private static class c<E extends Internal.a> extends FlagField<E> {
        private final E[] c;

        public c(int i, E[] eArr) {
            super(i, d(eArr));
            this.c = eArr;
        }

        private static /* synthetic */ void c(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "enumEntries", "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$EnumLiteFlagField", "bitWidth"));
        }

        private static <E> int d(E[] eArr) {
            if (eArr == null) {
                c(0);
            }
            int length = eArr.length - 1;
            if (length == 0) {
                return 1;
            }
            for (int i = 31; i >= 0; i--) {
                if (((1 << i) & length) != 0) {
                    return i + 1;
                }
            }
            throw new IllegalStateException("Empty enum: " + eArr.getClass());
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.FlagField
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public E a(int i) {
            int i2 = (1 << this.b) - 1;
            int i3 = this.a;
            int i4 = (i & (i2 << i3)) >> i3;
            for (E e2 : this.c) {
                if (e2.getNumber() == i4) {
                    return e2;
                }
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.FlagField
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public int b(E e2) {
            return e2.getNumber() << this.a;
        }
    }

    static {
        b bVarBooleanFirst = FlagField.booleanFirst();
        b = bVarBooleanFirst;
        FlagField<ProtoBuf$Visibility> flagFieldAfter = FlagField.after(bVarBooleanFirst, ProtoBuf$Visibility.values());
        c = flagFieldAfter;
        FlagField<ProtoBuf$Modality> flagFieldAfter2 = FlagField.after(flagFieldAfter, ProtoBuf$Modality.values());
        f9619d = flagFieldAfter2;
        FlagField<ProtoBuf$Class.Kind> flagFieldAfter3 = FlagField.after(flagFieldAfter2, ProtoBuf$Class.Kind.values());
        f9620e = flagFieldAfter3;
        b bVarBooleanAfter = FlagField.booleanAfter(flagFieldAfter3);
        f9621f = bVarBooleanAfter;
        b bVarBooleanAfter2 = FlagField.booleanAfter(bVarBooleanAfter);
        f9622g = bVarBooleanAfter2;
        b bVarBooleanAfter3 = FlagField.booleanAfter(bVarBooleanAfter2);
        h = bVarBooleanAfter3;
        b bVarBooleanAfter4 = FlagField.booleanAfter(bVarBooleanAfter3);
        i = bVarBooleanAfter4;
        j = FlagField.booleanAfter(bVarBooleanAfter4);
        k = FlagField.booleanAfter(flagFieldAfter);
        FlagField<ProtoBuf$MemberKind> flagFieldAfter4 = FlagField.after(flagFieldAfter2, ProtoBuf$MemberKind.values());
        l = flagFieldAfter4;
        b bVarBooleanAfter5 = FlagField.booleanAfter(flagFieldAfter4);
        m = bVarBooleanAfter5;
        b bVarBooleanAfter6 = FlagField.booleanAfter(bVarBooleanAfter5);
        n = bVarBooleanAfter6;
        b bVarBooleanAfter7 = FlagField.booleanAfter(bVarBooleanAfter6);
        o = bVarBooleanAfter7;
        b bVarBooleanAfter8 = FlagField.booleanAfter(bVarBooleanAfter7);
        p = bVarBooleanAfter8;
        b bVarBooleanAfter9 = FlagField.booleanAfter(bVarBooleanAfter8);
        q = bVarBooleanAfter9;
        b bVarBooleanAfter10 = FlagField.booleanAfter(bVarBooleanAfter9);
        r = bVarBooleanAfter10;
        s = FlagField.booleanAfter(bVarBooleanAfter10);
        b bVarBooleanAfter11 = FlagField.booleanAfter(flagFieldAfter4);
        t = bVarBooleanAfter11;
        b bVarBooleanAfter12 = FlagField.booleanAfter(bVarBooleanAfter11);
        u = bVarBooleanAfter12;
        b bVarBooleanAfter13 = FlagField.booleanAfter(bVarBooleanAfter12);
        v = bVarBooleanAfter13;
        b bVarBooleanAfter14 = FlagField.booleanAfter(bVarBooleanAfter13);
        w = bVarBooleanAfter14;
        b bVarBooleanAfter15 = FlagField.booleanAfter(bVarBooleanAfter14);
        x = bVarBooleanAfter15;
        b bVarBooleanAfter16 = FlagField.booleanAfter(bVarBooleanAfter15);
        y = bVarBooleanAfter16;
        b bVarBooleanAfter17 = FlagField.booleanAfter(bVarBooleanAfter16);
        z = bVarBooleanAfter17;
        b bVarBooleanAfter18 = FlagField.booleanAfter(bVarBooleanAfter17);
        A = bVarBooleanAfter18;
        B = FlagField.booleanAfter(bVarBooleanAfter18);
        b bVarBooleanAfter19 = FlagField.booleanAfter(bVarBooleanFirst);
        C = bVarBooleanAfter19;
        b bVarBooleanAfter20 = FlagField.booleanAfter(bVarBooleanAfter19);
        D = bVarBooleanAfter20;
        E = FlagField.booleanAfter(bVarBooleanAfter20);
        b bVarBooleanAfter21 = FlagField.booleanAfter(flagFieldAfter2);
        F = bVarBooleanAfter21;
        b bVarBooleanAfter22 = FlagField.booleanAfter(bVarBooleanAfter21);
        G = bVarBooleanAfter22;
        H = FlagField.booleanAfter(bVarBooleanAfter22);
        b bVarBooleanFirst2 = FlagField.booleanFirst();
        I = bVarBooleanFirst2;
        J = FlagField.booleanAfter(bVarBooleanFirst2);
        K = FlagField.booleanFirst();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void a(int r5) {
        /*
            r0 = 3
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r1 = 1
            r2 = 0
            r3 = 2
            if (r5 == r1) goto L2b
            if (r5 == r3) goto L26
            r4 = 5
            if (r5 == r4) goto L2b
            r4 = 6
            if (r5 == r4) goto L21
            r4 = 8
            if (r5 == r4) goto L2b
            r4 = 9
            if (r5 == r4) goto L21
            r4 = 11
            if (r5 == r4) goto L2b
            java.lang.String r4 = "visibility"
            r0[r2] = r4
            goto L2f
        L21:
            java.lang.String r4 = "memberKind"
            r0[r2] = r4
            goto L2f
        L26:
            java.lang.String r4 = "kind"
            r0[r2] = r4
            goto L2f
        L2b:
            java.lang.String r4 = "modality"
            r0[r2] = r4
        L2f:
            java.lang.String r2 = "kotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags"
            r0[r1] = r2
            switch(r5) {
                case 3: goto L4a;
                case 4: goto L45;
                case 5: goto L45;
                case 6: goto L45;
                case 7: goto L40;
                case 8: goto L40;
                case 9: goto L40;
                case 10: goto L3b;
                case 11: goto L3b;
                default: goto L36;
            }
        L36:
            java.lang.String r5 = "getClassFlags"
            r0[r3] = r5
            goto L4e
        L3b:
            java.lang.String r5 = "getAccessorFlags"
            r0[r3] = r5
            goto L4e
        L40:
            java.lang.String r5 = "getPropertyFlags"
            r0[r3] = r5
            goto L4e
        L45:
            java.lang.String r5 = "getFunctionFlags"
            r0[r3] = r5
            goto L4e
        L4a:
            java.lang.String r5 = "getConstructorFlags"
            r0[r3] = r5
        L4e:
            java.lang.String r5 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            java.lang.String r5 = java.lang.String.format(r5, r0)
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r0.<init>(r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags.a(int):void");
    }

    public static int getAccessorFlags(boolean z2, ProtoBuf$Visibility protoBuf$Visibility, ProtoBuf$Modality protoBuf$Modality, boolean z3, boolean z4, boolean z5) {
        if (protoBuf$Visibility == null) {
            a(10);
        }
        if (protoBuf$Modality == null) {
            a(11);
        }
        return b.b(Boolean.valueOf(z2)) | f9619d.b(protoBuf$Modality) | c.b(protoBuf$Visibility) | F.b(Boolean.valueOf(z3)) | G.b(Boolean.valueOf(z4)) | H.b(Boolean.valueOf(z5));
    }
}
