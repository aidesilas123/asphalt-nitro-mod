package okio.internal;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Path;
import okio.w;
import okio.y;

/* JADX INFO: compiled from: ResourceFileSystem.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ResourceFileSystem extends FileSystem {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Companion f10866e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    private static final Path f10867f = Path.Companion.get$default(Path.a, "/", false, 1, (Object) null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f10868g;

    /* JADX INFO: compiled from: ResourceFileSystem.kt */
    private static final class Companion {

        /* JADX INFO: compiled from: ResourceFileSystem.kt */
        static final class a extends Lambda implements Function1<c, Boolean> {
            public static final a a = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke(c entry) {
                Intrinsics.checkNotNullParameter(entry, "entry");
                return Boolean.valueOf(ResourceFileSystem.f10866e.b(entry.a()));
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean b(Path path) {
            return !StringsKt__StringsJVMKt.endsWith(path.i(), ".class", true);
        }

        public final Path a() {
            return ResourceFileSystem.f10867f;
        }

        public final Path c(Path path, Path base) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            Intrinsics.checkNotNullParameter(base, "base");
            return a().m(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsKt.removePrefix(path.toString(), (CharSequence) base.toString()), '\\', '/', false, 4, (Object) null));
        }

        public final List<Pair<FileSystem, Path>> d(ClassLoader classLoader) throws IOException {
            Intrinsics.checkNotNullParameter(classLoader, "<this>");
            Enumeration<URL> resources = classLoader.getResources("");
            Intrinsics.checkNotNullExpressionValue(resources, "getResources(\"\")");
            ArrayList<URL> list = Collections.list(resources);
            Intrinsics.checkNotNullExpressionValue(list, "java.util.Collections.list(this)");
            ArrayList arrayList = new ArrayList();
            for (URL it : list) {
                Companion companion = ResourceFileSystem.f10866e;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Pair<FileSystem, Path> pairE = companion.e(it);
                if (pairE != null) {
                    arrayList.add(pairE);
                }
            }
            Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
            Intrinsics.checkNotNullExpressionValue(resources2, "getResources(\"META-INF/MANIFEST.MF\")");
            ArrayList<URL> list2 = Collections.list(resources2);
            Intrinsics.checkNotNullExpressionValue(list2, "java.util.Collections.list(this)");
            ArrayList arrayList2 = new ArrayList();
            for (URL it2 : list2) {
                Companion companion2 = ResourceFileSystem.f10866e;
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                Pair<FileSystem, Path> pairF = companion2.f(it2);
                if (pairF != null) {
                    arrayList2.add(pairF);
                }
            }
            return CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) arrayList2);
        }

        public final Pair<FileSystem, Path> e(URL url) {
            Intrinsics.checkNotNullParameter(url, "<this>");
            if (Intrinsics.areEqual(url.getProtocol(), "file")) {
                return TuplesKt.to(FileSystem.b, Path.Companion.get$default(Path.a, new File(url.toURI()), false, 1, (Object) null));
            }
            return null;
        }

        public final Pair<FileSystem, Path> f(URL url) {
            int iLastIndexOf$default;
            Intrinsics.checkNotNullParameter(url, "<this>");
            String string = url.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString()");
            if (!StringsKt__StringsJVMKt.startsWith$default(string, "jar:file:", false, 2, null) || (iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) string, "!", 0, false, 6, (Object) null)) == -1) {
                return null;
            }
            Path.Companion companion = Path.a;
            String strSubstring = string.substring(4, iLastIndexOf$default);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return TuplesKt.to(ZipKt.openZip(Path.Companion.get$default(companion, new File(URI.create(strSubstring)), false, 1, (Object) null), FileSystem.b, a.a), a());
        }
    }

    /* JADX INFO: compiled from: ResourceFileSystem.kt */
    static final class a extends Lambda implements Function0<List<? extends Pair<? extends FileSystem, ? extends Path>>> {
        final /* synthetic */ ClassLoader a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ClassLoader classLoader) {
            super(0);
            this.a = classLoader;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<Pair<FileSystem, Path>> invoke() {
            return ResourceFileSystem.f10866e.d(this.a);
        }
    }

    public ResourceFileSystem(ClassLoader classLoader, boolean z) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        this.f10868g = LazyKt__LazyJVMKt.lazy(new a(classLoader));
        if (z) {
            s().size();
        }
    }

    private final Path r(Path path) {
        return f10867f.q(path, true);
    }

    private final List<Pair<FileSystem, Path>> s() {
        return (List) this.f10868g.getValue();
    }

    private final String t(Path path) {
        return r(path).l(f10867f).toString();
    }

    @Override // okio.FileSystem
    public w a(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void d(Path dir, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void e(Path path, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public List<Path> h(Path dir) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(dir, "dir");
        String strT = t(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair<FileSystem, Path> pair : s()) {
            FileSystem fileSystemC = pair.c();
            Path pathD = pair.d();
            try {
                List<Path> listH = fileSystemC.h(pathD.m(strT));
                ArrayList arrayList = new ArrayList();
                for (Object obj : listH) {
                    if (f10866e.b((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(f10866e.c((Path) it.next(), pathD));
                }
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt___CollectionsKt.toList(linkedHashSet);
        }
        throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", dir));
    }

    @Override // okio.FileSystem
    public List<Path> i(Path dir) {
        Intrinsics.checkNotNullParameter(dir, "dir");
        String strT = t(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Pair<FileSystem, Path>> it = s().iterator();
        boolean z = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            Pair<FileSystem, Path> next = it.next();
            FileSystem fileSystemC = next.c();
            Path pathD = next.d();
            List<Path> listI = fileSystemC.i(pathD.m(strT));
            if (listI != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listI) {
                    if (f10866e.b((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(f10866e.c((Path) it2.next(), pathD));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, arrayList);
                z = true;
            }
        }
        if (z) {
            return CollectionsKt___CollectionsKt.toList(linkedHashSet);
        }
        return null;
    }

    @Override // okio.FileSystem
    public FileMetadata l(Path path) throws IOException {
        Intrinsics.checkNotNullParameter(path, "path");
        if (!f10866e.b(path)) {
            return null;
        }
        String strT = t(path);
        for (Pair<FileSystem, Path> pair : s()) {
            FileMetadata fileMetadataL = pair.c().l(pair.d().m(strT));
            if (fileMetadataL != null) {
                return fileMetadataL;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    public FileHandle m(Path file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!f10866e.b(file)) {
            throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
        }
        String strT = t(file);
        for (Pair<FileSystem, Path> pair : s()) {
            try {
                return pair.c().m(pair.d().m(strT));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
    }

    @Override // okio.FileSystem
    public FileHandle n(Path file, boolean z, boolean z2) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    public w p(Path file, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public y q(Path file) throws FileNotFoundException {
        Intrinsics.checkNotNullParameter(file, "file");
        if (!f10866e.b(file)) {
            throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
        }
        String strT = t(file);
        for (Pair<FileSystem, Path> pair : s()) {
            try {
                return pair.c().q(pair.d().m(strT));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(Intrinsics.stringPlus("file not found: ", file));
    }
}
