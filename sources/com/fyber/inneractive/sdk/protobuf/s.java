package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite;
import com.fyber.inneractive.sdk.protobuf.f;
import com.fyber.inneractive.sdk.protobuf.q;
import com.fyber.inneractive.sdk.protobuf.r1;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class s extends r<GeneratedMessageLite.d> {

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[r1.b.values().length];
            a = iArr;
            try {
                iArr[r1.b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[r1.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[r1.b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[r1.b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[r1.b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[r1.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[r1.b.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[r1.b.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[r1.b.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[r1.b.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[r1.b.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[r1.b.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[r1.b.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[r1.b.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[r1.b.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[r1.b.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[r1.b.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                a[r1.b.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public int a(Map.Entry<?, ?> entry) {
        return ((GeneratedMessageLite.d) entry.getKey()).b;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public u<GeneratedMessageLite.d> a(Object obj) {
        return ((GeneratedMessageLite.ExtendableMessage) obj).extensions;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a7  */
    @Override // com.fyber.inneractive.sdk.protobuf.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <UT, UB> UB a(com.fyber.inneractive.sdk.protobuf.c1 r5, java.lang.Object r6, com.fyber.inneractive.sdk.protobuf.q r7, com.fyber.inneractive.sdk.protobuf.u<com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite.d> r8, UB r9, com.fyber.inneractive.sdk.protobuf.k1<UT, UB> r10) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 532
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.s.a(com.fyber.inneractive.sdk.protobuf.c1, java.lang.Object, com.fyber.inneractive.sdk.protobuf.q, com.fyber.inneractive.sdk.protobuf.u, java.lang.Object, com.fyber.inneractive.sdk.protobuf.k1):java.lang.Object");
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public Object a(q qVar, o0 o0Var, int i) {
        return qVar.a.get(new q.a(o0Var, i));
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public void a(c1 c1Var, Object obj, q qVar, u<GeneratedMessageLite.d> uVar) throws IOException {
        GeneratedMessageLite.e eVar = (GeneratedMessageLite.e) obj;
        uVar.c(eVar.f2656d, c1Var.b(eVar.c.getClass(), qVar));
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public void a(i iVar, Object obj, q qVar, u<GeneratedMessageLite.d> uVar) throws IOException {
        GeneratedMessageLite.e eVar = (GeneratedMessageLite.e) obj;
        GeneratedMessageLite generatedMessageLiteB = ((GeneratedMessageLite.b) eVar.c.newBuilderForType()).b();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(iVar.h());
        if (!byteBufferWrap.hasArray()) {
            throw new IllegalArgumentException("Direct buffers not yet supported");
        }
        f.b bVar = new f.b(byteBufferWrap, true);
        z0 z0Var = z0.c;
        z0Var.getClass();
        z0Var.a(generatedMessageLiteB.getClass()).a(generatedMessageLiteB, bVar, qVar);
        uVar.c(eVar.f2656d, generatedMessageLiteB);
        if (bVar.s() != Integer.MAX_VALUE) {
            throw z.a();
        }
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public void a(s1 s1Var, Map.Entry<?, ?> entry) throws IOException {
        GeneratedMessageLite.d dVar = (GeneratedMessageLite.d) entry.getKey();
        if (dVar.f2654d) {
            switch (a.a[dVar.c.ordinal()]) {
                case 1:
                    f1.b(dVar.b, (List<Double>) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 2:
                    f1.f(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 3:
                    f1.h(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 4:
                    f1.n(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 5:
                    f1.g(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 6:
                    f1.e(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 7:
                    f1.d(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 8:
                    f1.a(dVar.b, (List<Boolean>) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 9:
                    f1.m(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 10:
                    f1.i(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 11:
                    f1.j(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 12:
                    f1.k(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 13:
                    f1.l(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 14:
                    f1.g(dVar.b, (List) entry.getValue(), s1Var, dVar.f2655e);
                    break;
                case 15:
                    f1.a(dVar.b, (List<i>) entry.getValue(), s1Var);
                    break;
                case 16:
                    f1.b(dVar.b, (List<String>) entry.getValue(), s1Var);
                    break;
                case 17:
                    List list = (List) entry.getValue();
                    if (list != null && !list.isEmpty()) {
                        f1.a(dVar.b, (List<?>) entry.getValue(), s1Var, z0.c.a(list.get(0).getClass()));
                        break;
                    }
                    break;
                case 18:
                    List list2 = (List) entry.getValue();
                    if (list2 != null && !list2.isEmpty()) {
                        f1.b(dVar.b, (List<?>) entry.getValue(), s1Var, z0.c.a(list2.get(0).getClass()));
                        break;
                    }
                    break;
            }
        }
        switch (a.a[dVar.c.ordinal()]) {
            case 1:
                ((m) s1Var).a(dVar.b, ((Double) entry.getValue()).doubleValue());
                break;
            case 2:
                ((m) s1Var).a(dVar.b, ((Float) entry.getValue()).floatValue());
                break;
            case 3:
                ((m) s1Var).a.g(dVar.b, ((Long) entry.getValue()).longValue());
                break;
            case 4:
                ((m) s1Var).a.g(dVar.b, ((Long) entry.getValue()).longValue());
                break;
            case 5:
                ((m) s1Var).a.h(dVar.b, ((Integer) entry.getValue()).intValue());
                break;
            case 6:
                ((m) s1Var).a.f(dVar.b, ((Long) entry.getValue()).longValue());
                break;
            case 7:
                ((m) s1Var).a.g(dVar.b, ((Integer) entry.getValue()).intValue());
                break;
            case 8:
                ((m) s1Var).a.b(dVar.b, ((Boolean) entry.getValue()).booleanValue());
                break;
            case 9:
                ((m) s1Var).a.j(dVar.b, ((Integer) entry.getValue()).intValue());
                break;
            case 10:
                ((m) s1Var).a.g(dVar.b, ((Integer) entry.getValue()).intValue());
                break;
            case 11:
                ((m) s1Var).a.f(dVar.b, ((Long) entry.getValue()).longValue());
                break;
            case 12:
                ((m) s1Var).a(dVar.b, ((Integer) entry.getValue()).intValue());
                break;
            case 13:
                ((m) s1Var).a(dVar.b, ((Long) entry.getValue()).longValue());
                break;
            case 14:
                ((m) s1Var).a.h(dVar.b, ((Integer) entry.getValue()).intValue());
                break;
            case 15:
                ((m) s1Var).a.b(dVar.b, (i) entry.getValue());
                break;
            case 16:
                ((m) s1Var).a.b(dVar.b, (String) entry.getValue());
                break;
            case 17:
                ((m) s1Var).a(dVar.b, entry.getValue(), z0.c.a(entry.getValue().getClass()));
                break;
            case 18:
                ((m) s1Var).b(dVar.b, entry.getValue(), z0.c.a(entry.getValue().getClass()));
                break;
        }
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public boolean a(o0 o0Var) {
        return o0Var instanceof GeneratedMessageLite.ExtendableMessage;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public u<GeneratedMessageLite.d> b(Object obj) {
        return ((GeneratedMessageLite.ExtendableMessage) obj).ensureExtensionsAreMutable();
    }

    @Override // com.fyber.inneractive.sdk.protobuf.r
    public void c(Object obj) {
        ((GeneratedMessageLite.ExtendableMessage) obj).extensions.g();
    }
}
