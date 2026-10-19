package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.h0;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.l0;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import okio.e;

/* JADX INFO: compiled from: zip.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ZipKt {

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((okio.internal.c) t).a(), ((okio.internal.c) t2).a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: zip.kt */
    public static final class b extends Lambda implements Function1<okio.internal.c, Boolean> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(okio.internal.c it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: compiled from: zip.kt */
    static final class c extends Lambda implements Function2<Integer, Long, v> {
        final /* synthetic */ h0 a;
        final /* synthetic */ long b;
        final /* synthetic */ k0 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ e f10869d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ k0 f10870e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ k0 f10871f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(h0 h0Var, long j, k0 k0Var, e eVar, k0 k0Var2, k0 k0Var3) {
            super(2);
            this.a = h0Var;
            this.b = j;
            this.c = k0Var;
            this.f10869d = eVar;
            this.f10870e = k0Var2;
            this.f10871f = k0Var3;
        }

        public final void a(int i, long j) throws IOException {
            if (i == 1) {
                h0 h0Var = this.a;
                if (h0Var.a) {
                    throw new IOException("bad zip: zip64 extra repeated");
                }
                h0Var.a = true;
                if (j < this.b) {
                    throw new IOException("bad zip: zip64 extra too short");
                }
                k0 k0Var = this.c;
                long longLe = k0Var.a;
                if (longLe == 4294967295L) {
                    longLe = this.f10869d.readLongLe();
                }
                k0Var.a = longLe;
                k0 k0Var2 = this.f10870e;
                k0Var2.a = k0Var2.a == 4294967295L ? this.f10869d.readLongLe() : 0L;
                k0 k0Var3 = this.f10871f;
                k0Var3.a = k0Var3.a == 4294967295L ? this.f10869d.readLongLe() : 0L;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(Integer num, Long l) throws IOException {
            a(num.intValue(), l.longValue());
            return v.a;
        }
    }

    /* JADX INFO: compiled from: zip.kt */
    static final class d extends Lambda implements Function2<Integer, Long, v> {
        final /* synthetic */ e a;
        final /* synthetic */ l0<Long> b;
        final /* synthetic */ l0<Long> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ l0<Long> f10872d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(e eVar, l0<Long> l0Var, l0<Long> l0Var2, l0<Long> l0Var3) {
            super(2);
            this.a = eVar;
            this.b = l0Var;
            this.c = l0Var2;
            this.f10872d = l0Var3;
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r0v17, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r10v3, types: [T, java.lang.Long] */
        public final void a(int i, long j) throws IOException {
            if (i == 21589) {
                if (j < 1) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                int i2 = this.a.readByte() & 255;
                boolean z = (i2 & 1) == 1;
                boolean z2 = (i2 & 2) == 2;
                boolean z3 = (i2 & 4) == 4;
                e eVar = this.a;
                long j2 = z ? 5L : 1L;
                if (z2) {
                    j2 += 4;
                }
                if (z3) {
                    j2 += 4;
                }
                if (j < j2) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                if (z) {
                    this.b.a = Long.valueOf(((long) eVar.readIntLe()) * 1000);
                }
                if (z2) {
                    this.c.a = Long.valueOf(((long) this.a.readIntLe()) * 1000);
                }
                if (z3) {
                    this.f10872d.a = Long.valueOf(((long) this.a.readIntLe()) * 1000);
                }
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(Integer num, Long l) throws IOException {
            a(num.intValue(), l.longValue());
            return v.a;
        }
    }

    private static final Map<Path, okio.internal.c> a(List<okio.internal.c> list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (okio.internal.c cVar : CollectionsKt___CollectionsKt.sortedWith(list, new a())) {
            if (((okio.internal.c) linkedHashMap.put(cVar.a(), cVar)) == null) {
                while (true) {
                    Path pathK = cVar.a().k();
                    if (pathK != null) {
                        okio.internal.c cVar2 = (okio.internal.c) linkedHashMap.get(pathK);
                        if (cVar2 != null) {
                            cVar2.b().add(cVar.a());
                            break;
                        }
                        okio.internal.c cVar3 = new okio.internal.c(pathK, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                        linkedHashMap.put(pathK, cVar3);
                        cVar3.b().add(cVar.a());
                        cVar = cVar3;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static final Long b(int i, int i2) {
        if (i2 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i >> 9) & 127) + 1980, ((i >> 5) & 15) - 1, i & 31, (i2 >> 11) & 31, (i2 >> 5) & 63, (i2 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final String c(int i) {
        String string = Integer.toString(i, CharsKt__CharJVMKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        return Intrinsics.stringPlus("0x", string);
    }

    private static final okio.internal.a d(e eVar) throws IOException {
        int shortLe = eVar.readShortLe() & 65535;
        int shortLe2 = eVar.readShortLe() & 65535;
        long shortLe3 = eVar.readShortLe() & 65535;
        if (shortLe3 != (eVar.readShortLe() & 65535) || shortLe != 0 || shortLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        eVar.skip(4L);
        return new okio.internal.a(shortLe3, 4294967295L & ((long) eVar.readIntLe()), eVar.readShortLe() & 65535);
    }

    private static final void e(e eVar, int i, Function2<? super Integer, ? super Long, v> function2) throws IOException {
        long j = i;
        while (j != 0) {
            if (j < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int shortLe = eVar.readShortLe() & 65535;
            long shortLe2 = ((long) eVar.readShortLe()) & 65535;
            long j2 = j - ((long) 4);
            if (j2 < shortLe2) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            eVar.require(shortLe2);
            long jI = eVar.y().I();
            function2.invoke(Integer.valueOf(shortLe), Long.valueOf(shortLe2));
            long jI2 = (eVar.y().I() + shortLe2) - jI;
            if (jI2 < 0) {
                throw new IOException(Intrinsics.stringPlus("unsupported zip: too many bytes processed for ", Integer.valueOf(shortLe)));
            }
            if (jI2 > 0) {
                eVar.y().skip(jI2);
            }
            j = j2 - shortLe2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final FileMetadata f(e eVar, FileMetadata fileMetadata) throws IOException {
        l0 l0Var = new l0();
        l0Var.a = fileMetadata == null ? 0 : fileMetadata.b();
        l0 l0Var2 = new l0();
        l0 l0Var3 = new l0();
        int intLe = eVar.readIntLe();
        if (intLe != 67324752) {
            throw new IOException("bad zip: expected " + c(67324752) + " but was " + c(intLe));
        }
        eVar.skip(2L);
        int shortLe = eVar.readShortLe() & 65535;
        if ((shortLe & 1) != 0) {
            throw new IOException(Intrinsics.stringPlus("unsupported zip: general purpose bit flag=", c(shortLe)));
        }
        eVar.skip(18L);
        long shortLe2 = ((long) eVar.readShortLe()) & 65535;
        int shortLe3 = eVar.readShortLe() & 65535;
        eVar.skip(shortLe2);
        if (fileMetadata == null) {
            eVar.skip(shortLe3);
            return null;
        }
        e(eVar, shortLe3, new d(eVar, l0Var, l0Var2, l0Var3));
        return new FileMetadata(fileMetadata.f(), fileMetadata.e(), null, fileMetadata.c(), (Long) l0Var3.a, (Long) l0Var.a, (Long) l0Var2.a, null, 128, null);
    }

    private static final okio.internal.a g(e eVar, okio.internal.a aVar) throws IOException {
        eVar.skip(12L);
        int intLe = eVar.readIntLe();
        int intLe2 = eVar.readIntLe();
        long longLe = eVar.readLongLe();
        if (longLe != eVar.readLongLe() || intLe != 0 || intLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        eVar.skip(8L);
        return new okio.internal.a(longLe, eVar.readLongLe(), aVar.b());
    }

    public static final ZipFileSystem openZip(Path zipPath, FileSystem fileSystem, Function1<? super okio.internal.c, Boolean> predicate) throws IOException {
        e eVarBuffer;
        int intLe;
        e eVarBuffer2;
        Intrinsics.checkNotNullParameter(zipPath, "zipPath");
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        FileHandle fileHandleM = fileSystem.m(zipPath);
        long j = 0;
        try {
            eVarBuffer = Okio.buffer(FileHandle.source$default(fileHandleM, 0L, 1, null));
            try {
                intLe = eVarBuffer.readIntLe();
            } finally {
                try {
                    throw th;
                } finally {
                    CloseableKt.closeFinally(eVarBuffer, th);
                }
            }
        } finally {
        }
        if (intLe != 67324752) {
            if (intLe == 101010256) {
                throw new IOException("unsupported zip: empty");
            }
            throw new IOException("not a zip: expected " + c(67324752) + " but was " + c(intLe));
        }
        v vVar = v.a;
        CloseableKt.closeFinally(eVarBuffer, null);
        long jK = fileHandleM.k() - ((long) 22);
        if (jK < 0) {
            throw new IOException(Intrinsics.stringPlus("not a zip: size=", Long.valueOf(fileHandleM.k())));
        }
        long jMax = Math.max(jK - PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH, 0L);
        do {
            e eVarBuffer3 = Okio.buffer(fileHandleM.l(jK));
            try {
                if (eVarBuffer3.readIntLe() == 101010256) {
                    okio.internal.a aVarD = d(eVarBuffer3);
                    String utf8 = eVarBuffer3.readUtf8(aVarD.b());
                    eVarBuffer3.close();
                    long j2 = jK - ((long) 20);
                    if (j2 > 0) {
                        eVarBuffer2 = Okio.buffer(fileHandleM.l(j2));
                        try {
                            if (eVarBuffer2.readIntLe() == 117853008) {
                                int intLe2 = eVarBuffer2.readIntLe();
                                long longLe = eVarBuffer2.readLongLe();
                                if (eVarBuffer2.readIntLe() != 1 || intLe2 != 0) {
                                    throw new IOException("unsupported zip: spanned");
                                }
                                eVarBuffer2 = Okio.buffer(fileHandleM.l(longLe));
                                try {
                                    int intLe3 = eVarBuffer2.readIntLe();
                                    if (intLe3 != 101075792) {
                                        throw new IOException("bad zip: expected " + c(101075792) + " but was " + c(intLe3));
                                    }
                                    okio.internal.a aVarG = g(eVarBuffer2, aVarD);
                                    v vVar2 = v.a;
                                    CloseableKt.closeFinally(eVarBuffer2, null);
                                    aVarD = aVarG;
                                } finally {
                                }
                            }
                            v vVar3 = v.a;
                            CloseableKt.closeFinally(eVarBuffer2, null);
                        } finally {
                        }
                    }
                    ArrayList arrayList = new ArrayList();
                    eVarBuffer2 = Okio.buffer(fileHandleM.l(aVarD.a()));
                    try {
                        long jC = aVarD.c();
                        if (0 < jC) {
                            do {
                                j++;
                                okio.internal.c entry = readEntry(eVarBuffer2);
                                if (entry.f() >= aVarD.a()) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (predicate.invoke(entry).booleanValue()) {
                                    arrayList.add(entry);
                                }
                            } while (j < jC);
                        }
                        v vVar4 = v.a;
                        CloseableKt.closeFinally(eVarBuffer2, null);
                        ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, a(arrayList), utf8);
                        CloseableKt.closeFinally(fileHandleM, null);
                        return zipFileSystem;
                    } finally {
                        try {
                            throw th;
                        } finally {
                            CloseableKt.closeFinally(eVarBuffer2, th);
                        }
                    }
                }
                eVarBuffer3.close();
                jK--;
            } catch (Throwable th) {
                eVarBuffer3.close();
                throw th;
            }
        } while (jK >= jMax);
        throw new IOException("not a zip: end of central directory signature not found");
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, Function1 function1, int i, Object obj) throws IOException {
        if ((i & 4) != 0) {
            function1 = b.a;
        }
        return openZip(path, fileSystem, function1);
    }

    public static final okio.internal.c readEntry(e eVar) throws IOException {
        int i;
        Long l;
        long j;
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        int intLe = eVar.readIntLe();
        if (intLe != 33639248) {
            throw new IOException("bad zip: expected " + c(33639248) + " but was " + c(intLe));
        }
        eVar.skip(4L);
        int shortLe = eVar.readShortLe() & 65535;
        if ((shortLe & 1) != 0) {
            throw new IOException(Intrinsics.stringPlus("unsupported zip: general purpose bit flag=", c(shortLe)));
        }
        int shortLe2 = eVar.readShortLe() & 65535;
        Long lB = b(eVar.readShortLe() & 65535, eVar.readShortLe() & 65535);
        long intLe2 = ((long) eVar.readIntLe()) & 4294967295L;
        k0 k0Var = new k0();
        k0Var.a = ((long) eVar.readIntLe()) & 4294967295L;
        k0 k0Var2 = new k0();
        k0Var2.a = ((long) eVar.readIntLe()) & 4294967295L;
        int shortLe3 = eVar.readShortLe() & 65535;
        int shortLe4 = eVar.readShortLe() & 65535;
        int shortLe5 = eVar.readShortLe() & 65535;
        eVar.skip(8L);
        k0 k0Var3 = new k0();
        k0Var3.a = ((long) eVar.readIntLe()) & 4294967295L;
        String utf8 = eVar.readUtf8(shortLe3);
        if (StringsKt__StringsKt.contains$default((CharSequence) utf8, (char) 0, false, 2, (Object) null)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        if (k0Var2.a == 4294967295L) {
            j = ((long) 8) + 0;
            i = shortLe2;
            l = lB;
        } else {
            i = shortLe2;
            l = lB;
            j = 0;
        }
        if (k0Var.a == 4294967295L) {
            j += (long) 8;
        }
        if (k0Var3.a == 4294967295L) {
            j += (long) 8;
        }
        long j2 = j;
        h0 h0Var = new h0();
        e(eVar, shortLe4, new c(h0Var, j2, k0Var2, eVar, k0Var, k0Var3));
        if (j2 > 0 && !h0Var.a) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        return new okio.internal.c(Path.Companion.get$default(Path.a, "/", false, 1, (Object) null).m(utf8), StringsKt__StringsJVMKt.endsWith$default(utf8, "/", false, 2, null), eVar.readUtf8(shortLe5), intLe2, k0Var.a, k0Var2.a, i, l, k0Var3.a);
    }

    public static final FileMetadata readLocalHeader(e eVar, FileMetadata basicMetadata) throws IOException {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        Intrinsics.checkNotNullParameter(basicMetadata, "basicMetadata");
        FileMetadata fileMetadataF = f(eVar, basicMetadata);
        Intrinsics.checkNotNull(fileMetadataF);
        return fileMetadataF;
    }

    public static final void skipLocalHeader(e eVar) throws IOException {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        f(eVar, null);
    }
}
