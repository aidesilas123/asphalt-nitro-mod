package okio.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import okio.Path;

/* JADX INFO: compiled from: ZipEntry.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c {
    private final Path a;
    private final boolean b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f10884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f10885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f10886f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f10887g;
    private final Long h;
    private final long i;
    private final List<Path> j;

    public c(Path canonicalPath, boolean z, String comment, long j, long j2, long j3, int i, Long l, long j4) {
        Intrinsics.checkNotNullParameter(canonicalPath, "canonicalPath");
        Intrinsics.checkNotNullParameter(comment, "comment");
        this.a = canonicalPath;
        this.b = z;
        this.c = comment;
        this.f10884d = j;
        this.f10885e = j2;
        this.f10886f = j3;
        this.f10887g = i;
        this.h = l;
        this.i = j4;
        this.j = new ArrayList();
    }

    public /* synthetic */ c(Path path, boolean z, String str, long j, long j2, long j3, int i, Long l, long j4, int i2, n nVar) {
        this(path, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? "" : str, (i2 & 8) != 0 ? -1L : j, (i2 & 16) != 0 ? -1L : j2, (i2 & 32) != 0 ? -1L : j3, (i2 & 64) != 0 ? -1 : i, (i2 & 128) != 0 ? null : l, (i2 & 256) == 0 ? j4 : -1L);
    }

    public final Path a() {
        return this.a;
    }

    public final List<Path> b() {
        return this.j;
    }

    public final long c() {
        return this.f10885e;
    }

    public final int d() {
        return this.f10887g;
    }

    public final Long e() {
        return this.h;
    }

    public final long f() {
        return this.i;
    }

    public final long g() {
        return this.f10886f;
    }

    public final boolean h() {
        return this.b;
    }
}
