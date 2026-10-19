package okio;

import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import okio.internal._PathKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: Path.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Path implements Comparable<Path> {
    public static final Companion a = new Companion(null);
    public static final String b;
    private final ByteString c;

    /* JADX INFO: compiled from: Path.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.b(file, z);
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.d(str, z);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.f(path, z);
        }

        public final Path a(File file) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            return get$default(this, file, false, 1, (Object) null);
        }

        public final Path b(File file, boolean z) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            String string = file.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString()");
            return d(string, z);
        }

        public final Path c(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return get$default(this, str, false, 1, (Object) null);
        }

        public final Path d(String str, boolean z) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return _PathKt.commonToPath(str, z);
        }

        @IgnoreJRERequirement
        public final Path e(java.nio.file.Path path) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            return get$default(this, path, false, 1, (Object) null);
        }

        @IgnoreJRERequirement
        public final Path f(java.nio.file.Path path, boolean z) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            return d(path.toString(), z);
        }
    }

    static {
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        b = separator;
    }

    public Path(ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.c = bytes;
    }

    public static final Path get(File file) {
        return a.a(file);
    }

    public static final Path get(File file, boolean z) {
        return a.b(file, z);
    }

    public static final Path get(String str) {
        return a.c(str);
    }

    public static final Path get(String str, boolean z) {
        return a.d(str, z);
    }

    @IgnoreJRERequirement
    public static final Path get(java.nio.file.Path path) {
        return a.e(path);
    }

    @IgnoreJRERequirement
    public static final Path get(java.nio.file.Path path, boolean z) {
        return a.f(path, z);
    }

    public static /* synthetic */ Path resolve$default(Path path, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return path.n(str, z);
    }

    public static /* synthetic */ Path resolve$default(Path path, ByteString byteString, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return path.o(byteString, z);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return path.q(path2, z);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(Path other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return e().compareTo(other.e());
    }

    public final ByteString e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Path) && Intrinsics.areEqual(((Path) obj).e(), e());
    }

    public final Path f() {
        int iD = _PathKt.d(this);
        if (iD == -1) {
            return null;
        }
        return new Path(e().H(0, iD));
    }

    public final List<ByteString> g() {
        ArrayList arrayList = new ArrayList();
        int iD = _PathKt.d(this);
        if (iD == -1) {
            iD = 0;
        } else if (iD < e().F() && e().j(iD) == ((byte) 92)) {
            iD++;
        }
        int iF = e().F();
        if (iD < iF) {
            int i = iD;
            while (true) {
                int i2 = iD + 1;
                if (e().j(iD) == ((byte) 47) || e().j(iD) == ((byte) 92)) {
                    arrayList.add(e().H(i, iD));
                    i = i2;
                }
                if (i2 >= iF) {
                    break;
                }
                iD = i2;
            }
            iD = i;
        }
        if (iD < e().F()) {
            arrayList.add(e().H(iD, e().F()));
        }
        return arrayList;
    }

    public final boolean h() {
        return _PathKt.d(this) != -1;
    }

    public int hashCode() {
        return e().hashCode();
    }

    public final String i() {
        return j().K();
    }

    public final ByteString j() {
        int iA = _PathKt.a(this);
        return iA != -1 ? ByteString.substring$default(e(), iA + 1, 0, 2, null) : (u() == null || e().F() != 2) ? e() : ByteString.b;
    }

    public final Path k() {
        Path path;
        if (Intrinsics.areEqual(e(), _PathKt.f10882d) || Intrinsics.areEqual(e(), _PathKt.a) || Intrinsics.areEqual(e(), _PathKt.b) || _PathKt.c(this)) {
            return null;
        }
        int iA = _PathKt.a(this);
        if (iA != 2 || u() == null) {
            if (iA == 1 && e().G(_PathKt.b)) {
                return null;
            }
            if (iA != -1 || u() == null) {
                if (iA == -1) {
                    return new Path(_PathKt.f10882d);
                }
                if (iA != 0) {
                    return new Path(ByteString.substring$default(e(), 0, iA, 1, null));
                }
                path = new Path(ByteString.substring$default(e(), 0, 1, 1, null));
            } else {
                if (e().F() == 2) {
                    return null;
                }
                path = new Path(ByteString.substring$default(e(), 0, 2, 1, null));
            }
        } else {
            if (e().F() == 3) {
                return null;
            }
            path = new Path(ByteString.substring$default(e(), 0, 3, 1, null));
        }
        return path;
    }

    public final Path l(Path other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (!Intrinsics.areEqual(f(), other.f())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + other).toString());
        }
        List<ByteString> listG = g();
        List<ByteString> listG2 = other.g();
        int iMin = Math.min(listG.size(), listG2.size());
        int i = 0;
        while (i < iMin && Intrinsics.areEqual(listG.get(i), listG2.get(i))) {
            i++;
        }
        if (i == iMin && e().F() == other.e().F()) {
            return Companion.get$default(a, ".", false, 1, (Object) null);
        }
        if (!(listG2.subList(i, listG2.size()).indexOf(_PathKt.f10883e) == -1)) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString byteStringB = _PathKt.b(other);
        if (byteStringB == null && (byteStringB = _PathKt.b(this)) == null) {
            byteStringB = _PathKt.g(b);
        }
        int size = listG2.size();
        if (i < size) {
            int i2 = i;
            do {
                i2++;
                buffer.P(_PathKt.f10883e);
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
        return _PathKt.toPath(buffer, false);
    }

    public final Path m(String child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), false);
    }

    public final Path n(String child, boolean z) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), z);
    }

    public final Path o(ByteString child, boolean z) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().P(child), false), z);
    }

    public final Path p(Path child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, child, false);
    }

    public final Path q(Path child, boolean z) {
        Intrinsics.checkNotNullParameter(child, "child");
        return _PathKt.commonResolve(this, child, z);
    }

    public final File s() {
        return new File(toString());
    }

    @IgnoreJRERequirement
    public final java.nio.file.Path t() {
        java.nio.file.Path path = Paths.get(toString(), new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(toString())");
        return path;
    }

    public String toString() {
        return e().K();
    }

    public final Character u() {
        boolean z = false;
        if (ByteString.indexOf$default(e(), _PathKt.a, 0, 2, (Object) null) != -1 || e().F() < 2 || e().j(1) != ((byte) 58)) {
            return null;
        }
        char cJ = (char) e().j(0);
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
}
