package okio.internal;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.Path;

/* JADX INFO: compiled from: -Path.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _PathKt {
    private static final ByteString a;
    private static final ByteString b;
    private static final ByteString c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ByteString f10882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ByteString f10883e;

    static {
        ByteString.Companion companion = ByteString.a;
        a = companion.d("/");
        b = companion.d("\\");
        c = companion.d("/\\");
        f10882d = companion.d(".");
        f10883e = companion.d("..");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int a(Path path) {
        int iLastIndexOf$default = ByteString.lastIndexOf$default(path.e(), a, 0, 2, (Object) null);
        return iLastIndexOf$default != -1 ? iLastIndexOf$default : ByteString.lastIndexOf$default(path.e(), b, 0, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString b(Path path) {
        ByteString byteStringE = path.e();
        ByteString byteString = a;
        if (ByteString.indexOf$default(byteStringE, byteString, 0, 2, (Object) null) != -1) {
            return byteString;
        }
        ByteString byteStringE2 = path.e();
        ByteString byteString2 = b;
        if (ByteString.indexOf$default(byteStringE2, byteString2, 0, 2, (Object) null) != -1) {
            return byteString2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(Path path) {
        return path.e().i(f10883e) && (path.e().F() == 2 || path.e().z(path.e().F() + (-3), a, 0, 1) || path.e().z(path.e().F() + (-3), b, 0, 1));
    }

    public static final int commonCompareTo(Path path, Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return path.e().compareTo(other.e());
    }

    public static final boolean commonEquals(Path path, Object obj) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return (obj instanceof Path) && Intrinsics.areEqual(((Path) obj).e(), path.e());
    }

    public static final int commonHashCode(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.e().hashCode();
    }

    public static final boolean commonIsAbsolute(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return d(path) != -1;
    }

    public static final boolean commonIsRelative(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return d(path) == -1;
    }

    public static final boolean commonIsRoot(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return d(path) == path.e().F();
    }

    public static final String commonName(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.j().K();
    }

    public static final ByteString commonNameBytes(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int iA = a(path);
        return iA != -1 ? ByteString.substring$default(path.e(), iA + 1, 0, 2, null) : (path.u() == null || path.e().F() != 2) ? path.e() : ByteString.b;
    }

    public static final Path commonNormalized(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return Path.a.d(path.toString(), true);
    }

    public static final Path commonParent(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        if (Intrinsics.areEqual(path.e(), f10882d) || Intrinsics.areEqual(path.e(), a) || Intrinsics.areEqual(path.e(), b) || c(path)) {
            return null;
        }
        int iA = a(path);
        if (iA == 2 && path.u() != null) {
            if (path.e().F() == 3) {
                return null;
            }
            return new Path(ByteString.substring$default(path.e(), 0, 3, 1, null));
        }
        if (iA == 1 && path.e().G(b)) {
            return null;
        }
        if (iA != -1 || path.u() == null) {
            return iA == -1 ? new Path(f10882d) : iA == 0 ? new Path(ByteString.substring$default(path.e(), 0, 1, 1, null)) : new Path(ByteString.substring$default(path.e(), 0, iA, 1, null));
        }
        if (path.e().F() == 2) {
            return null;
        }
        return new Path(ByteString.substring$default(path.e(), 0, 2, 1, null));
    }

    public static final Path commonRelativeTo(Path path, Path other) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (!Intrinsics.areEqual(path.f(), other.f())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + " and " + other).toString());
        }
        List<ByteString> listG = path.g();
        List<ByteString> listG2 = other.g();
        int iMin = Math.min(listG.size(), listG2.size());
        int i = 0;
        while (i < iMin && Intrinsics.areEqual(listG.get(i), listG2.get(i))) {
            i++;
        }
        if (i == iMin && path.e().F() == other.e().F()) {
            return Path.Companion.get$default(Path.a, ".", false, 1, (Object) null);
        }
        if (!(listG2.subList(i, listG2.size()).indexOf(f10883e) == -1)) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString byteStringB = b(other);
        if (byteStringB == null && (byteStringB = b(path)) == null) {
            byteStringB = g(Path.b);
        }
        int size = listG2.size();
        if (i < size) {
            int i2 = i;
            do {
                i2++;
                buffer.P(f10883e);
                buffer.P(byteStringB);
            } while (i2 < size);
        }
        int size2 = listG.size();
        if (i < size2) {
            while (true) {
                int i3 = i + 1;
                buffer.P(listG.get(i));
                buffer.P(byteStringB);
                if (i3 >= size2) {
                    break;
                }
                i = i3;
            }
        }
        return toPath(buffer, false);
    }

    public static final Path commonResolve(Path path, String child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z);
    }

    public static final Path commonResolve(Path path, Buffer child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(child, false), z);
    }

    public static final Path commonResolve(Path path, ByteString child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        return commonResolve(path, toPath(new Buffer().P(child), false), z);
    }

    public static final Path commonResolve(Path path, Path child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        if (child.h() || child.u() != null) {
            return child;
        }
        ByteString byteStringB = b(path);
        if (byteStringB == null && (byteStringB = b(child)) == null) {
            byteStringB = g(Path.b);
        }
        Buffer buffer = new Buffer();
        buffer.P(path.e());
        if (buffer.I() > 0) {
            buffer.P(byteStringB);
        }
        buffer.P(child.e());
        return toPath(buffer, z);
    }

    public static final Path commonRoot(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        int iD = d(path);
        if (iD == -1) {
            return null;
        }
        return new Path(path.e().H(0, iD));
    }

    public static final List<String> commonSegments(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iD = d(path);
        if (iD == -1) {
            iD = 0;
        } else if (iD < path.e().F() && path.e().j(iD) == ((byte) 92)) {
            iD++;
        }
        int iF = path.e().F();
        if (iD < iF) {
            int i = iD;
            while (true) {
                int i2 = iD + 1;
                if (path.e().j(iD) == ((byte) 47) || path.e().j(iD) == ((byte) 92)) {
                    arrayList.add(path.e().H(i, iD));
                    i = i2;
                }
                if (i2 >= iF) {
                    break;
                }
                iD = i2;
            }
            iD = i;
        }
        if (iD < path.e().F()) {
            arrayList.add(path.e().H(iD, path.e().F()));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).K());
        }
        return arrayList2;
    }

    public static final List<ByteString> commonSegmentsBytes(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iD = d(path);
        if (iD == -1) {
            iD = 0;
        } else if (iD < path.e().F() && path.e().j(iD) == ((byte) 92)) {
            iD++;
        }
        int iF = path.e().F();
        if (iD < iF) {
            int i = iD;
            while (true) {
                int i2 = iD + 1;
                if (path.e().j(iD) == ((byte) 47) || path.e().j(iD) == ((byte) 92)) {
                    arrayList.add(path.e().H(i, iD));
                    i = i2;
                }
                if (i2 >= iF) {
                    break;
                }
                iD = i2;
            }
            iD = i;
        }
        if (iD < path.e().F()) {
            arrayList.add(path.e().H(iD, path.e().F()));
        }
        return arrayList;
    }

    public static final Path commonToPath(String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z);
    }

    public static final String commonToString(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        return path.e().K();
    }

    public static final Character commonVolumeLetter(Path path) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        boolean z = false;
        if (ByteString.indexOf$default(path.e(), a, 0, 2, (Object) null) != -1 || path.e().F() < 2 || path.e().j(1) != ((byte) 58)) {
            return null;
        }
        char cJ = (char) path.e().j(0);
        if (!('a' <= cJ && cJ <= 'z')) {
            if ('A' <= cJ && cJ <= 'Z') {
                z = true;
            }
            if (!z) {
                return null;
            }
        }
        return Character.valueOf(cJ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int d(Path path) {
        if (path.e().F() == 0) {
            return -1;
        }
        boolean z = false;
        if (path.e().j(0) == ((byte) 47)) {
            return 1;
        }
        byte b2 = (byte) 92;
        if (path.e().j(0) == b2) {
            if (path.e().F() <= 2 || path.e().j(1) != b2) {
                return 1;
            }
            int iS = path.e().s(b, 2);
            return iS == -1 ? path.e().F() : iS;
        }
        if (path.e().F() <= 2 || path.e().j(1) != ((byte) 58) || path.e().j(2) != b2) {
            return -1;
        }
        char cJ = (char) path.e().j(0);
        if ('a' <= cJ && cJ <= 'z') {
            return 3;
        }
        if ('A' <= cJ && cJ <= 'Z') {
            z = true;
        }
        return !z ? -1 : 3;
    }

    private static final boolean e(Buffer buffer, ByteString byteString) {
        if (!Intrinsics.areEqual(byteString, b) || buffer.I() < 2 || buffer.m(1L) != ((byte) 58)) {
            return false;
        }
        char cM = (char) buffer.m(0L);
        if (!('a' <= cM && cM <= 'z')) {
            if (!('A' <= cM && cM <= 'Z')) {
                return false;
            }
        }
        return true;
    }

    private static final ByteString f(byte b2) {
        if (b2 == 47) {
            return a;
        }
        if (b2 == 92) {
            return b;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("not a directory separator: ", Byte.valueOf(b2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString g(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return a;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return b;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("not a directory separator: ", str));
    }

    public static final Path toPath(Buffer buffer, boolean z) throws EOFException {
        ByteString byteString;
        ByteString byteString2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        int i = 0;
        ByteString byteStringF = null;
        int i2 = 0;
        while (true) {
            if (!buffer.s(0L, a)) {
                byteString = b;
                if (!buffer.s(0L, byteString)) {
                    break;
                }
            }
            byte b2 = buffer.readByte();
            if (byteStringF == null) {
                byteStringF = f(b2);
            }
            i2++;
        }
        boolean z2 = i2 >= 2 && Intrinsics.areEqual(byteStringF, byteString);
        if (z2) {
            Intrinsics.checkNotNull(byteStringF);
            buffer2.P(byteStringF);
            buffer2.P(byteStringF);
        } else if (i2 > 0) {
            Intrinsics.checkNotNull(byteStringF);
            buffer2.P(byteStringF);
        } else {
            long jQ = buffer.q(c);
            if (byteStringF == null) {
                byteStringF = jQ == -1 ? g(Path.b) : f(buffer.m(jQ));
            }
            if (e(buffer, byteStringF)) {
                if (jQ == 2) {
                    buffer2.n(buffer, 3L);
                } else {
                    buffer2.n(buffer, 2L);
                }
            }
        }
        boolean z3 = buffer2.I() > 0;
        ArrayList arrayList = new ArrayList();
        while (!buffer.exhausted()) {
            long jQ2 = buffer.q(c);
            if (jQ2 == -1) {
                byteString2 = buffer.readByteString();
            } else {
                byteString2 = buffer.readByteString(jQ2);
                buffer.readByte();
            }
            ByteString byteString3 = f10883e;
            if (Intrinsics.areEqual(byteString2, byteString3)) {
                if (!z3 || !arrayList.isEmpty()) {
                    if (!z || (!z3 && (arrayList.isEmpty() || Intrinsics.areEqual(p.last((List) arrayList), byteString3)))) {
                        arrayList.add(byteString2);
                    } else if (!z2 || arrayList.size() != 1) {
                        p.removeLastOrNull(arrayList);
                    }
                }
            } else if (!Intrinsics.areEqual(byteString2, f10882d) && !Intrinsics.areEqual(byteString2, ByteString.b)) {
                arrayList.add(byteString2);
            }
        }
        int size = arrayList.size();
        if (size > 0) {
            while (true) {
                int i3 = i + 1;
                if (i > 0) {
                    buffer2.P(byteStringF);
                }
                buffer2.P((ByteString) arrayList.get(i));
                if (i3 >= size) {
                    break;
                }
                i = i3;
            }
        }
        if (buffer2.I() == 0) {
            buffer2.P(f10882d);
        }
        return new Path(buffer2.readByteString());
    }
}
