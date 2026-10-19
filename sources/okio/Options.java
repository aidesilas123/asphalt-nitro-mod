package okio;

import java.io.IOException;
import java.util.List;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;

/* JADX INFO: compiled from: Options.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    public static final a b = new a(null);
    private final ByteString[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int[] f10855d;

    /* JADX INFO: compiled from: Options.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        private final void a(long j, Buffer buffer, int i, List<? extends ByteString> list, int i2, int i3, List<Integer> list2) throws IOException {
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            Buffer buffer2;
            int i9 = i;
            if (!(i2 < i3)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (i2 < i3) {
                int i10 = i2;
                while (true) {
                    int i11 = i10 + 1;
                    if (!(list.get(i10).F() >= i9)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    if (i11 >= i3) {
                        break;
                    } else {
                        i10 = i11;
                    }
                }
            }
            ByteString byteString = list.get(i2);
            ByteString byteString2 = list.get(i3 - 1);
            if (i9 == byteString.F()) {
                int iIntValue = list2.get(i2).intValue();
                int i12 = i2 + 1;
                ByteString byteString3 = list.get(i12);
                i4 = i12;
                i5 = iIntValue;
                byteString = byteString3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (byteString.j(i9) == byteString2.j(i9)) {
                int iMin = Math.min(byteString.F(), byteString2.F());
                if (i9 < iMin) {
                    int i13 = i9;
                    i6 = 0;
                    while (true) {
                        int i14 = i13 + 1;
                        if (byteString.j(i13) != byteString2.j(i13)) {
                            break;
                        }
                        i6++;
                        if (i14 >= iMin) {
                            break;
                        } else {
                            i13 = i14;
                        }
                    }
                } else {
                    i6 = 0;
                }
                long jC = j + c(buffer) + ((long) 2) + ((long) i6) + 1;
                buffer.writeInt(-i6);
                buffer.writeInt(i5);
                int i15 = i9 + i6;
                if (i9 < i15) {
                    while (true) {
                        int i16 = i9 + 1;
                        buffer.writeInt(byteString.j(i9) & 255);
                        if (i16 >= i15) {
                            break;
                        } else {
                            i9 = i16;
                        }
                    }
                }
                if (i4 + 1 == i3) {
                    if (!(i15 == list.get(i4).F())) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    buffer.writeInt(list2.get(i4).intValue());
                    return;
                } else {
                    Buffer buffer3 = new Buffer();
                    buffer.writeInt(((int) (c(buffer3) + jC)) * (-1));
                    a(jC, buffer3, i15, list, i4, i3, list2);
                    buffer.D(buffer3);
                    return;
                }
            }
            int i17 = i4 + 1;
            int i18 = 1;
            if (i17 < i3) {
                while (true) {
                    int i19 = i17 + 1;
                    if (list.get(i17 - 1).j(i9) != list.get(i17).j(i9)) {
                        i18++;
                    }
                    if (i19 >= i3) {
                        break;
                    } else {
                        i17 = i19;
                    }
                }
            }
            long jC2 = j + c(buffer) + ((long) 2) + ((long) (i18 * 2));
            buffer.writeInt(i18);
            buffer.writeInt(i5);
            if (i4 < i3) {
                int i20 = i4;
                while (true) {
                    int i21 = i20 + 1;
                    byte bJ = list.get(i20).j(i9);
                    if (i20 == i4 || bJ != list.get(i20 - 1).j(i9)) {
                        buffer.writeInt(bJ & 255);
                    }
                    if (i21 >= i3) {
                        break;
                    } else {
                        i20 = i21;
                    }
                }
            }
            Buffer buffer4 = new Buffer();
            while (i4 < i3) {
                byte bJ2 = list.get(i4).j(i9);
                int i22 = i4 + 1;
                if (i22 < i3) {
                    int i23 = i22;
                    while (true) {
                        int i24 = i23 + 1;
                        if (bJ2 != list.get(i23).j(i9)) {
                            i7 = i23;
                            break;
                        } else if (i24 >= i3) {
                            break;
                        } else {
                            i23 = i24;
                        }
                    }
                    i7 = i3;
                } else {
                    i7 = i3;
                }
                if (i22 == i7 && i9 + 1 == list.get(i4).F()) {
                    buffer.writeInt(list2.get(i4).intValue());
                    i8 = i7;
                    buffer2 = buffer4;
                } else {
                    buffer.writeInt(((int) (jC2 + c(buffer4))) * (-1));
                    i8 = i7;
                    buffer2 = buffer4;
                    a(jC2, buffer4, i9 + 1, list, i4, i7, list2);
                }
                buffer4 = buffer2;
                i4 = i8;
            }
            buffer.D(buffer4);
        }

        static /* synthetic */ void b(a aVar, long j, Buffer buffer, int i, List list, int i2, int i3, List list2, int i4, Object obj) throws IOException {
            aVar.a((i4 & 1) != 0 ? 0L : j, buffer, (i4 & 4) != 0 ? 0 : i, list, (i4 & 16) != 0 ? 0 : i2, (i4 & 32) != 0 ? list.size() : i3, list2);
        }

        private final long c(Buffer buffer) {
            return buffer.I() / ((long) 4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x00e4, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final okio.Options d(okio.ByteString... r17) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 316
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.a.d(okio.ByteString[]):okio.Options");
        }
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.c = byteStringArr;
        this.f10855d = iArr;
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, kotlin.jvm.internal.n nVar) {
        this(byteStringArr, iArr);
    }

    public static final Options of(ByteString... byteStringArr) {
        return b.d(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return f((ByteString) obj);
        }
        return false;
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: e */
    public int getF8865d() {
        return this.c.length;
    }

    public /* bridge */ boolean f(ByteString byteString) {
        return super.contains(byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public ByteString get(int i) {
        return this.c[i];
    }

    public final ByteString[] i() {
        return this.c;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return n((ByteString) obj);
        }
        return -1;
    }

    public final int[] j() {
        return this.f10855d;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return r((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ int n(ByteString byteString) {
        return super.indexOf(byteString);
    }

    public /* bridge */ int r(ByteString byteString) {
        return super.lastIndexOf(byteString);
    }
}
