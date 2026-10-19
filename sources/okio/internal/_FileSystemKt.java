package okio.internal;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.ResultKt;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlin.v;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.d;
import okio.y;

/* JADX INFO: compiled from: -FileSystem.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _FileSystemKt {

    /* JADX INFO: compiled from: -FileSystem.kt */
    @DebugMetadata(c = "okio.internal._FileSystemKt", f = "-FileSystem.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1}, l = {113, 132, 142}, m = "collectRecursively", n = {"$this$collectRecursively", "fileSystem", "stack", "path", "followSymlinks", "postorder", "$this$collectRecursively", "fileSystem", "stack", "path", "followSymlinks", "postorder"}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1"})
    static final class a extends ContinuationImpl {
        Object a;
        Object b;
        Object c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Object f10873d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Object f10874e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f10875f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f10876g;
        /* synthetic */ Object h;
        int i;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.h = obj;
            this.i |= Integer.MIN_VALUE;
            return _FileSystemKt.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    /* JADX INFO: compiled from: -FileSystem.kt */
    @DebugMetadata(c = "okio.internal._FileSystemKt$commonDeleteRecursively$sequence$1", f = "-FileSystem.kt", i = {}, l = {72}, m = "invokeSuspend", n = {}, s = {})
    static final class b extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super v>, Object> {
        int a;
        private /* synthetic */ Object b;
        final /* synthetic */ FileSystem c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Path f10877d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(FileSystem fileSystem, Path path, Continuation<? super b> continuation) {
            super(2, continuation);
            this.c = fileSystem;
            this.f10877d = path;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            b bVar = new b(this.c, this.f10877d, continuation);
            bVar.b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super v> continuation) {
            return ((b) create(sequenceScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SequenceScope sequenceScope = (SequenceScope) this.b;
                FileSystem fileSystem = this.c;
                ArrayDeque arrayDeque = new ArrayDeque();
                Path path = this.f10877d;
                this.a = 1;
                if (_FileSystemKt.collectRecursively(sequenceScope, fileSystem, arrayDeque, path, false, true, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    /* JADX INFO: compiled from: -FileSystem.kt */
    @DebugMetadata(c = "okio.internal._FileSystemKt$commonListRecursively$1", f = "-FileSystem.kt", i = {0, 0}, l = {93}, m = "invokeSuspend", n = {"$this$sequence", "stack"}, s = {"L$0", "L$1"})
    static final class c extends RestrictedSuspendLambda implements Function2<SequenceScope<? super Path>, Continuation<? super v>, Object> {
        Object a;
        Object b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ Object f10878d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Path f10879e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ FileSystem f10880f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ boolean f10881g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Path path, FileSystem fileSystem, boolean z, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f10879e = path;
            this.f10880f = fileSystem;
            this.f10881g = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            c cVar = new c(this.f10879e, this.f10880f, this.f10881g, continuation);
            cVar.f10878d = obj;
            return cVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super Path> sequenceScope, Continuation<? super v> continuation) {
            return ((c) create(sequenceScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            c cVar;
            SequenceScope sequenceScope;
            ArrayDeque arrayDeque;
            Iterator<Path> it;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.c;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SequenceScope sequenceScope2 = (SequenceScope) this.f10878d;
                ArrayDeque arrayDeque2 = new ArrayDeque();
                arrayDeque2.addLast(this.f10879e);
                cVar = this;
                sequenceScope = sequenceScope2;
                arrayDeque = arrayDeque2;
                it = this.f10880f.h(this.f10879e).iterator();
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.b;
                ArrayDeque arrayDeque3 = (ArrayDeque) this.a;
                SequenceScope sequenceScope3 = (SequenceScope) this.f10878d;
                ResultKt.throwOnFailure(obj);
                cVar = this;
                arrayDeque = arrayDeque3;
                sequenceScope = sequenceScope3;
            }
            while (it.hasNext()) {
                Path next = it.next();
                FileSystem fileSystem = cVar.f10880f;
                boolean z = cVar.f10881g;
                cVar.f10878d = sequenceScope;
                cVar.a = arrayDeque;
                cVar.b = it;
                cVar.c = 1;
                if (_FileSystemKt.collectRecursively(sequenceScope, fileSystem, arrayDeque, next, z, false, cVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return v.a;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d6, code lost:
    
        if (r0 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d8, code lost:
    
        if (r14 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00da, code lost:
    
        r6.addLast(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e1, code lost:
    
        r13 = r12;
        r12 = r11;
        r11 = r6;
        r6 = r1;
        r1 = r0;
        r0 = r2;
        r2 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0125, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0126, code lost:
    
        r11 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4, types: [kotlin.sequences.h] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v9 */
    /* JADX WARN: Type inference failed for: r17v0, types: [java.lang.Object, kotlin.sequences.h, kotlin.sequences.h<? super okio.Path>] */
    /* JADX WARN: Type inference failed for: r17v1, types: [kotlin.sequences.h] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object collectRecursively(kotlin.sequences.SequenceScope<? super okio.Path> r17, okio.FileSystem r18, kotlin.collections.ArrayDeque<okio.Path> r19, okio.Path r20, boolean r21, boolean r22, kotlin.coroutines.Continuation<? super kotlin.v> r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._FileSystemKt.collectRecursively(kotlin.sequences.h, okio.FileSystem, kotlin.collections.j, okio.Path, boolean, boolean, kotlin.coroutines.d):java.lang.Object");
    }

    public static final void commonCopy(FileSystem fileSystem, Path source, Path target) throws Throwable {
        Long lValueOf;
        Long lValueOf2;
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        y yVarQ = fileSystem.q(source);
        Throwable th = null;
        try {
            d dVarBuffer = Okio.buffer(fileSystem.o(target));
            try {
                lValueOf2 = Long.valueOf(dVarBuffer.D(yVarQ));
                th = null;
            } catch (Throwable th2) {
                th = th2;
                lValueOf2 = null;
            }
            if (dVarBuffer != null) {
                try {
                    dVarBuffer.close();
                } catch (Throwable th3) {
                    if (th == null) {
                        th = th3;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(th, th3);
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            lValueOf = null;
        }
        if (th != null) {
            throw th;
        }
        Intrinsics.checkNotNull(lValueOf2);
        lValueOf = Long.valueOf(lValueOf2.longValue());
        if (yVarQ != null) {
            try {
                yVarQ.close();
            } catch (Throwable th5) {
                if (th == null) {
                    th = th5;
                } else {
                    ExceptionsKt__ExceptionsKt.addSuppressed(th, th5);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        Intrinsics.checkNotNull(lValueOf);
    }

    public static final void commonCreateDirectories(FileSystem fileSystem, Path dir, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        ArrayDeque arrayDeque = new ArrayDeque();
        for (Path pathK = dir; pathK != null && !fileSystem.g(pathK); pathK = pathK.k()) {
            arrayDeque.addFirst(pathK);
        }
        if (z && arrayDeque.isEmpty()) {
            throw new IOException(dir + " already exist.");
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            fileSystem.c((Path) it.next());
        }
    }

    public static final void commonDeleteRecursively(FileSystem fileSystem, Path fileOrDirectory, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(fileOrDirectory, "fileOrDirectory");
        Iterator it = SequencesKt__SequenceBuilderKt.sequence(new b(fileSystem, fileOrDirectory, null)).iterator();
        while (it.hasNext()) {
            fileSystem.e((Path) it.next(), z && !it.hasNext());
        }
    }

    public static final boolean commonExists(FileSystem fileSystem, Path path) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        return fileSystem.l(path) != null;
    }

    public static final Sequence<Path> commonListRecursively(FileSystem fileSystem, Path dir, boolean z) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(dir, "dir");
        return SequencesKt__SequenceBuilderKt.sequence(new c(dir, fileSystem, z, null));
    }

    public static final FileMetadata commonMetadata(FileSystem fileSystem, Path path) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        FileMetadata fileMetadataL = fileSystem.l(path);
        if (fileMetadataL != null) {
            return fileMetadataL;
        }
        throw new FileNotFoundException(Intrinsics.stringPlus("no such file: ", path));
    }

    public static final Path symlinkTarget(FileSystem fileSystem, Path path) throws IOException {
        Intrinsics.checkNotNullParameter(fileSystem, "<this>");
        Intrinsics.checkNotNullParameter(path, "path");
        Path pathD = fileSystem.k(path).d();
        if (pathD == null) {
            return null;
        }
        Path pathK = path.k();
        Intrinsics.checkNotNull(pathK);
        return pathK.p(pathD);
    }
}
