package kotlin.io.path;

import java.nio.file.Path;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: kotlin.io.path.i, reason: from Kotlin metadata */
/* JADX INFO: compiled from: PathTreeWalk.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0000¢\u0006\u0002\u0010\u0006R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lkotlin/io/path/PathNode;", "", "path", "Ljava/nio/file/Path;", "key", "parent", "(Ljava/nio/file/Path;Ljava/lang/Object;Lkotlin/io/path/PathNode;)V", "contentIterator", "", "getContentIterator", "()Ljava/util/Iterator;", "setContentIterator", "(Ljava/util/Iterator;)V", "getKey", "()Ljava/lang/Object;", "getParent", "()Lkotlin/io/path/PathNode;", "getPath", "()Ljava/nio/file/Path;", "kotlin-stdlib-jdk7"}, mv = {1, 9, 0}, xi = 48)
final class PathNode {
    private final Path a;
    private final Object b;
    private final PathNode c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Iterator<PathNode> f8928d;

    public PathNode(Path path, Object obj, PathNode pathNode) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.a = path;
        this.b = obj;
        this.c = pathNode;
    }

    public final Iterator<PathNode> a() {
        return this.f8928d;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Object getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final PathNode getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final Path getA() {
        return this.a;
    }

    public final void e(Iterator<PathNode> it) {
        this.f8928d = it;
    }
}
