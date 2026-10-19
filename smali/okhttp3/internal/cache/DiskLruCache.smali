###### Class okhttp3.internal.cache.DiskLruCache (okhttp3.internal.cache.DiskLruCache)
.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/DiskLruCache$d;,
        Lokhttp3/internal/cache/DiskLruCache$b;,
        Lokhttp3/internal/cache/DiskLruCache$c;,
        Lokhttp3/internal/cache/DiskLruCache$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010)\n\u0002\u0008\u0007*\u0001\u0014\u0018\u0000 [2\u00020\u00012\u00020\u0002:\u0004[\\]^B7\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u00108\u001a\u000209H\u0002J\u0008\u0010:\u001a\u000209H\u0016J!\u0010;\u001a\u0002092\n\u0010<\u001a\u00060=R\u00020\u00002\u0006\u0010>\u001a\u00020\u0010H\u0000\u00a2\u0006\u0002\u0008?J\u0006\u0010@\u001a\u000209J \u0010A\u001a\u0008\u0018\u00010=R\u00020\u00002\u0006\u0010B\u001a\u00020(2\u0008\u0008\u0002\u0010C\u001a\u00020\u000bH\u0007J\u0006\u0010D\u001a\u000209J\u0008\u0010E\u001a\u000209H\u0016J\u0017\u0010F\u001a\u0008\u0018\u00010GR\u00020\u00002\u0006\u0010B\u001a\u00020(H\u0086\u0002J\u0006\u0010H\u001a\u000209J\u0006\u0010I\u001a\u00020\u0010J\u0008\u0010J\u001a\u00020\u0010H\u0002J\u0008\u0010K\u001a\u00020%H\u0002J\u0008\u0010L\u001a\u000209H\u0002J\u0008\u0010M\u001a\u000209H\u0002J\u0010\u0010N\u001a\u0002092\u0006\u0010O\u001a\u00020(H\u0002J\r\u0010P\u001a\u000209H\u0000\u00a2\u0006\u0002\u0008QJ\u000e\u0010R\u001a\u00020\u00102\u0006\u0010B\u001a\u00020(J\u0019\u0010S\u001a\u00020\u00102\n\u0010T\u001a\u00060)R\u00020\u0000H\u0000\u00a2\u0006\u0002\u0008UJ\u0008\u0010V\u001a\u00020\u0010H\u0002J\u0006\u00105\u001a\u00020\u000bJ\u0010\u0010W\u001a\u000c\u0012\u0008\u0012\u00060GR\u00020\u00000XJ\u0006\u0010Y\u001a\u000209J\u0010\u0010Z\u001a\u0002092\u0006\u0010B\u001a\u00020(H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010&\u001a\u0012\u0012\u0004\u0012\u00020(\u0012\u0008\u0012\u00060)R\u00020\u00000\'X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R&\u0010\n\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u000b8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u000e\u00101\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107\u00a8\u0006_"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache;",
        "Ljava/io/Closeable;",
        "Ljava/io/Flushable;",
        "fileSystem",
        "Lokhttp3/internal/io/FileSystem;",
        "directory",
        "Ljava/io/File;",
        "appVersion",
        "",
        "valueCount",
        "maxSize",
        "",
        "taskRunner",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V",
        "civilizedFileSystem",
        "",
        "cleanupQueue",
        "Lokhttp3/internal/concurrent/TaskQueue;",
        "cleanupTask",
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Lokhttp3/internal/cache/DiskLruCache$cleanupTask$1;",
        "closed",
        "getClosed$okhttp",
        "()Z",
        "setClosed$okhttp",
        "(Z)V",
        "getDirectory",
        "()Ljava/io/File;",
        "getFileSystem$okhttp",
        "()Lokhttp3/internal/io/FileSystem;",
        "hasJournalErrors",
        "initialized",
        "journalFile",
        "journalFileBackup",
        "journalFileTmp",
        "journalWriter",
        "Lokio/BufferedSink;",
        "lruEntries",
        "Ljava/util/LinkedHashMap;",
        "",
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "getLruEntries$okhttp",
        "()Ljava/util/LinkedHashMap;",
        "value",
        "getMaxSize",
        "()J",
        "setMaxSize",
        "(J)V",
        "mostRecentRebuildFailed",
        "mostRecentTrimFailed",
        "nextSequenceNumber",
        "redundantOpCount",
        "size",
        "getValueCount$okhttp",
        "()I",
        "checkNotClosed",
        "",
        "close",
        "completeEdit",
        "editor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "success",
        "completeEdit$okhttp",
        "delete",
        "edit",
        "key",
        "expectedSequenceNumber",
        "evictAll",
        "flush",
        "get",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "initialize",
        "isClosed",
        "journalRebuildRequired",
        "newJournalWriter",
        "processJournal",
        "readJournal",
        "readJournalLine",
        "line",
        "rebuildJournal",
        "rebuildJournal$okhttp",
        "remove",
        "removeEntry",
        "entry",
        "removeEntry$okhttp",
        "removeOldestEntry",
        "snapshots",
        "",
        "trimToSize",
        "validateKey",
        "Companion",
        "Editor",
        "Entry",
        "Snapshot",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lokhttp3/internal/cache/DiskLruCache$a;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:J

.field public static final h:Lkotlin/text/Regex;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:J

.field private final F:Lokhttp3/internal/concurrent/TaskQueue;

.field private final G:Lokhttp3/internal/cache/DiskLruCache$e;

.field private final m:Lokhttp3/internal/d/a;

.field private final n:Ljava/io/File;

.field private final o:I

.field private final p:I

.field private q:J

.field private final r:Ljava/io/File;

.field private final s:Ljava/io/File;

.field private final t:Ljava/io/File;

.field private u:J

.field private v:Lokio/d;

.field private final w:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$c;",
            ">;"
        }
    .end annotation
.end field

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->a:Lokhttp3/internal/cache/DiskLruCache$a;

    const-string v0, "journal"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->b:Ljava/lang/String;

    const-string v0, "journal.tmp"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->c:Ljava/lang/String;

    const-string v0, "journal.bkp"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->d:Ljava/lang/String;

    const-string v0, "libcore.io.DiskLruCache"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->e:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->f:Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Lokhttp3/internal/cache/DiskLruCache;->g:J

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->h:Lkotlin/text/Regex;

    const-string v0, "CLEAN"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->i:Ljava/lang/String;

    const-string v0, "DIRTY"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->j:Ljava/lang/String;

    const-string v0, "REMOVE"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->k:Ljava/lang/String;

    const-string v0, "READ"

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/d/a;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V
    .registers 12

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskRunner"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    iput p3, p0, Lokhttp3/internal/cache/DiskLruCache;->o:I

    iput p4, p0, Lokhttp3/internal/cache/DiskLruCache;->p:I

    iput-wide p5, p0, Lokhttp3/internal/cache/DiskLruCache;->q:J

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 p3, 0x0

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p1, p3, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {p7}, Lokhttp3/internal/concurrent/TaskRunner;->g()Lokhttp3/internal/concurrent/TaskQueue;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Lokhttp3/internal/concurrent/TaskQueue;

    sget-object p1, Lokhttp3/internal/Util;->i:Ljava/lang/String;

    const-string p7, " Cache"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p7, Lokhttp3/internal/cache/DiskLruCache$e;

    invoke-direct {p7, p0, p1}, Lokhttp3/internal/cache/DiskLruCache$e;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    iput-object p7, p0, Lokhttp3/internal/cache/DiskLruCache;->G:Lokhttp3/internal/cache/DiskLruCache$e;

    const-wide/16 v2, 0x0

    cmp-long p1, p5, v2

    if-lez p1, :cond_44

    const/4 p1, 0x1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    if-eqz p1, :cond_74

    if-lez p4, :cond_4a

    const/4 p3, 0x1

    :cond_4a
    if-eqz p3, :cond_68

    new-instance p1, Ljava/io/File;

    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->b:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->c:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->s:Ljava/io/File;

    new-instance p1, Ljava/io/File;

    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->d:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:Ljava/io/File;

    return-void

    :cond_68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valueCount <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final I()Z
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->i()Z

    move-result v2

    if-nez v2, :cond_a

    const-string v0, "toEvict"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->x(Lokhttp3/internal/cache/DiskLruCache$c;)Z

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method private final K(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->h:Lkotlin/text/Regex;

    invoke-virtual {v0, p1}, Lkotlin/text/Regex;->e(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z
    .registers 1

    iget-boolean p0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z

    return p0
.end method

.method public static final synthetic access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z
    .registers 1

    iget-boolean p0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z

    return p0
.end method

.method public static final synthetic access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z
    .registers 1

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->q()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setHasJournalErrors$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->y:Z

    return-void
.end method

.method public static final synthetic access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/d;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    return-void
.end method

.method public static final synthetic access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->D:Z

    return-void
.end method

.method public static final synthetic access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->C:Z

    return-void
.end method

.method public static final synthetic access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    .registers 2

    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    return-void
.end method

.method private final declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    const-string v0, "cache is closed"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic edit$default(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JILjava/lang/Object;)Lokhttp3/internal/cache/DiskLruCache$b;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_6

    sget-wide p2, Lokhttp3/internal/cache/DiskLruCache;->g:J

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/cache/DiskLruCache;->g(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object p0

    return-object p0
.end method

.method private final q()Z
    .registers 3

    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private final r()Lokio/d;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->appendingSink(Ljava/io/File;)Lokio/w;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/cache/c;

    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$f;

    invoke-direct {v2, p0}, Lokhttp3/internal/cache/DiskLruCache$f;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    invoke-direct {v1, v0, v2}, Lokhttp3/internal/cache/c;-><init>(Lokio/w;Lkotlin/jvm/b/l;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v0

    return-object v0
.end method

.method private final s()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->s:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->delete(Ljava/io/File;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "i.next()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3c

    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->p:I

    :goto_2b
    if-ge v3, v2, :cond_11

    add-int/lit8 v4, v3, 0x1

    iget-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->e()[J

    move-result-object v7

    aget-wide v8, v7, v3

    add-long/2addr v5, v8

    iput-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    move v3, v4

    goto :goto_2b

    :cond_3c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$c;->l(Lokhttp3/internal/cache/DiskLruCache$b;)V

    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->p:I

    :goto_42
    if-ge v3, v2, :cond_66

    add-int/lit8 v4, v3, 0x1

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v5, v6}, Lokhttp3/internal/d/a;->delete(Ljava/io/File;)V

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v5, v3}, Lokhttp3/internal/d/a;->delete(Ljava/io/File;)V

    move v3, v4

    goto :goto_42

    :cond_66
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_6a
    return-void
.end method

.method private final t()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/d/a;->source(Ljava/io/File;)Lokio/y;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v1

    :try_start_e
    invoke-interface {v1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lokhttp3/internal/cache/DiskLruCache;->e:Ljava/lang/String;

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    sget-object v7, Lokhttp3/internal/cache/DiskLruCache;->f:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_84

    iget v7, p0, Lokhttp3/internal/cache/DiskLruCache;->o:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_b2

    const/4 v7, 0x0

    if-lez v4, :cond_55

    const/4 v4, 0x1

    goto :goto_56

    :cond_55
    const/4 v4, 0x0

    :goto_56
    if-nez v4, :cond_84

    :goto_58
    :try_start_58
    invoke-interface {v1}, Lokio/e;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->u(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/EOFException; {:try_start_58 .. :try_end_5f} :catch_62
    .catchall {:try_start_58 .. :try_end_5f} :catchall_b2

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :catch_62
    :try_start_62
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->m()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int/2addr v7, v0

    iput v7, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    invoke-interface {v1}, Lokio/e;->exhausted()Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->v()V

    goto :goto_7d

    :cond_77
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->r()Lokio/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    :goto_7d
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_b2

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_84
    :try_start_84
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b2
    .catchall {:try_start_84 .. :try_end_b2} :catchall_b2

    :catchall_b2
    move-exception v0

    :try_start_b3
    throw v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final u(Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    const-string v9, "unexpected journal line: "

    const/4 v10, -0x1

    if-eq v8, v10, :cond_c9

    add-int/lit8 v11, v8, 0x1

    const/16 v2, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v3, v11

    invoke-static/range {v1 .. v6}, Lkotlin/text/g;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const-string v2, "this as java.lang.String).substring(startIndex)"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v10, :cond_45

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lokhttp3/internal/cache/DiskLruCache;->k:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v8, v12, :cond_4e

    invoke-static {v7, v11, v5, v3, v4}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4e

    iget-object v1, v0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_45
    invoke-virtual {v7, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v11, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4e
    iget-object v11, v0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/internal/cache/DiskLruCache$c;

    if-nez v11, :cond_62

    new-instance v11, Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-direct {v11, v0, v6}, Lokhttp3/internal/cache/DiskLruCache$c;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    iget-object v12, v0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-interface {v12, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    if-eq v1, v10, :cond_95

    sget-object v6, Lokhttp3/internal/cache/DiskLruCache;->i:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v8, v12, :cond_95

    invoke-static {v7, v6, v5, v3, v4}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v13, v3, [C

    const/16 v1, 0x20

    aput-char v1, v13, v5

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/g;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v11, v3}, Lokhttp3/internal/cache/DiskLruCache$c;->o(Z)V

    invoke-virtual {v11, v4}, Lokhttp3/internal/cache/DiskLruCache$c;->l(Lokhttp3/internal/cache/DiskLruCache$b;)V

    invoke-virtual {v11, v1}, Lokhttp3/internal/cache/DiskLruCache$c;->m(Ljava/util/List;)V

    goto :goto_be

    :cond_95
    if-ne v1, v10, :cond_ae

    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v8, v6, :cond_ae

    invoke-static {v7, v2, v5, v3, v4}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$b;

    invoke-direct {v1, v0, v11}, Lokhttp3/internal/cache/DiskLruCache$b;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$c;)V

    invoke-virtual {v11, v1}, Lokhttp3/internal/cache/DiskLruCache$c;->l(Lokhttp3/internal/cache/DiskLruCache$b;)V

    goto :goto_be

    :cond_ae
    if-ne v1, v10, :cond_bf

    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v8, v2, :cond_bf

    invoke-static {v7, v1, v5, v3, v4}, Lkotlin/text/g;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    :goto_be
    return-void

    :cond_bf
    new-instance v1, Ljava/io/IOException;

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c9
    new-instance v1, Ljava/io/IOException;

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final J()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->q:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_f

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->C:Z

    return-void
.end method

.method public declared-synchronized close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z

    if-eqz v0, :cond_b

    goto :goto_53

    :cond_b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$c;

    array-length v3, v0

    :cond_22
    :goto_22
    if-ge v2, v3, :cond_39

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_22

    :cond_35
    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$b;->c()V

    goto :goto_22

    :cond_39
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->J()V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lokio/w;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_57

    monitor-exit p0

    return-void

    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    :goto_53
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_57

    monitor-exit p0

    return-void

    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lokhttp3/internal/cache/DiskLruCache$b;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    const/4 v1, 0x0

    if-eqz p2, :cond_5b

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->g()Z

    move-result v2

    if-nez v2, :cond_5b

    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->p:I

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_5b

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$b;->e()[Z

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_48

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-interface {v5, v3}, Lokhttp3/internal/d/a;->exists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_46

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$b;->a()V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_13f

    monitor-exit p0

    return-void

    :cond_46
    move v3, v4

    goto :goto_20

    :cond_48
    :try_start_48
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$b;->a()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->p:I

    :goto_5d
    if-ge v1, p1, :cond_aa

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz p2, :cond_a3

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->i()Z

    move-result v4

    if-nez v4, :cond_a3

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-interface {v4, v3}, Lokhttp3/internal/d/a;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_a8

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-interface {v5, v3, v4}, Lokhttp3/internal/d/a;->rename(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->e()[J

    move-result-object v3

    aget-wide v5, v3, v1

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-interface {v3, v4}, Lokhttp3/internal/d/a;->size(Ljava/io/File;)J

    move-result-wide v3

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->e()[J

    move-result-object v7

    aput-wide v3, v7, v1

    iget-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    iput-wide v7, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    goto :goto_a8

    :cond_a3
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-interface {v1, v3}, Lokhttp3/internal/d/a;->delete(Ljava/io/File;)V

    :cond_a8
    :goto_a8
    move v1, v2

    goto :goto_5d

    :cond_aa
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$c;->l(Lokhttp3/internal/cache/DiskLruCache$b;)V

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->i()Z

    move-result p1

    if-eqz p1, :cond_b9

    invoke-virtual {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->x(Lokhttp3/internal/cache/DiskLruCache$c;)Z
    :try_end_b7
    .catchall {:try_start_48 .. :try_end_b7} :catchall_13f

    monitor-exit p0

    return-void

    :cond_b9
    :try_start_b9
    iget p1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->g()Z

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-nez v2, :cond_f0

    if-eqz p2, :cond_d1

    goto :goto_f0

    :cond_d1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->m()Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lokhttp3/internal/cache/DiskLruCache;->k:Ljava/lang/String;

    invoke-interface {p1, p2}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object p2

    invoke-interface {p2, v4}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-interface {p1, v3}, Lokio/d;->writeByte(I)Lokio/d;

    goto :goto_115

    :cond_f0
    :goto_f0
    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$c;->o(Z)V

    sget-object v1, Lokhttp3/internal/cache/DiskLruCache;->i:Ljava/lang/String;

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    invoke-interface {v1, v4}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$c;->s(Lokio/d;)V

    invoke-interface {p1, v3}, Lokio/d;->writeByte(I)Lokio/d;

    if-eqz p2, :cond_115

    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->E:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->E:J

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/cache/DiskLruCache$c;->p(J)V

    :cond_115
    :goto_115
    invoke-interface {p1}, Lokio/d;->flush()V

    iget-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->q:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_126

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->q()Z

    move-result p1

    if-eqz p1, :cond_131

    :cond_126
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->G:Lokhttp3/internal/cache/DiskLruCache$e;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/a;JILjava/lang/Object;)V
    :try_end_131
    .catchall {:try_start_b9 .. :try_end_131} :catchall_13f

    :cond_131
    monitor-exit p0

    return-void

    :cond_133
    :try_start_133
    const-string p1, "Check failed."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_13f
    .catchall {:try_start_133 .. :try_end_13f} :catchall_13f

    :catchall_13f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->d()V

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->J()V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lokio/d;->flush()V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$b;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->p()V

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->d()V

    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->K(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$c;

    sget-wide v1, Lokhttp3/internal/cache/DiskLruCache;->g:J

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_2a

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->h()J

    move-result-wide v1
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_8f

    cmp-long v4, v1, p2

    if-eqz v4, :cond_2a

    :cond_28
    monitor-exit p0

    return-object v3

    :cond_2a
    if-nez v0, :cond_2e

    move-object p2, v3

    goto :goto_32

    :cond_2e
    :try_start_2e
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object p2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_8f

    :goto_32
    if-eqz p2, :cond_36

    monitor-exit p0

    return-object v3

    :cond_36
    if-eqz v0, :cond_40

    :try_start_38
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->f()I

    move-result p2
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_8f

    if-eqz p2, :cond_40

    monitor-exit p0

    return-object v3

    :cond_40
    :try_start_40
    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->C:Z

    if-nez p2, :cond_82

    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->D:Z

    if-eqz p2, :cond_49

    goto :goto_82

    :cond_49
    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object p3, Lokhttp3/internal/cache/DiskLruCache;->j:Ljava/lang/String;

    invoke-interface {p2, p3}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object p3

    const/16 v1, 0x20

    invoke-interface {p3, v1}, Lokio/d;->writeByte(I)Lokio/d;

    move-result-object p3

    invoke-interface {p3, p1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object p3

    const/16 v1, 0xa

    invoke-interface {p3, v1}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-interface {p2}, Lokio/d;->flush()V

    iget-boolean p2, p0, Lokhttp3/internal/cache/DiskLruCache;->y:Z
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_8f

    if-eqz p2, :cond_6c

    monitor-exit p0

    return-object v3

    :cond_6c
    if-nez v0, :cond_78

    :try_start_6e
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-direct {v0, p0, p1}, Lokhttp3/internal/cache/DiskLruCache$c;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    iget-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_78
    new-instance p1, Lokhttp3/internal/cache/DiskLruCache$b;

    invoke-direct {p1, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$b;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$c;)V

    invoke-virtual {v0, p1}, Lokhttp3/internal/cache/DiskLruCache$c;->l(Lokhttp3/internal/cache/DiskLruCache$b;)V
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_8f

    monitor-exit p0

    return-object p1

    :cond_82
    :goto_82
    :try_start_82
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->G:Lokhttp3/internal/cache/DiskLruCache$e;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/a;JILjava/lang/Object;)V
    :try_end_8d
    .catchall {:try_start_82 .. :try_end_8d} :catchall_8f

    monitor-exit p0

    return-object v3

    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$d;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->p()V

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->d()V

    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->K(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$c;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_57

    const/4 v1, 0x0

    if-nez v0, :cond_1c

    monitor-exit p0

    return-object v1

    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->r()Lokhttp3/internal/cache/DiskLruCache$d;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_57

    if-nez v0, :cond_24

    monitor-exit p0

    return-object v1

    :cond_24
    :try_start_24
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->l:Ljava/lang/String;

    invoke-interface {v1, v2}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/d;->writeByte(I)Lokio/d;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->q()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->G:Lokhttp3/internal/cache/DiskLruCache$e;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/a;JILjava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_24 .. :try_end_55} :catchall_57

    :cond_55
    monitor-exit p0

    return-object v0

    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final j()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z

    return v0
.end method

.method public final k()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    return-object v0
.end method

.method public final l()Lokhttp3/internal/d/a;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    return-object v0
.end method

.method public final m()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->p:I

    return v0
.end method

.method public final declared-synchronized p()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    if-eqz v0, :cond_33

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_33

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_33
    :goto_33
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_be

    if-eqz v0, :cond_39

    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->delete(Ljava/io/File;)V

    goto :goto_5e

    :cond_55
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/d/a;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:Ljava/io/File;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->isCivilized(Lokhttp3/internal/d/a;Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_70
    .catchall {:try_start_39 .. :try_end_70} :catchall_be

    const/4 v1, 0x1

    if-eqz v0, :cond_b7

    :try_start_73
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->t()V

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->s()V

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7b} :catch_7d
    .catchall {:try_start_73 .. :try_end_7b} :catchall_be

    monitor-exit p0

    return-void

    :catch_7d
    move-exception v0

    :try_start_7e
    sget-object v2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Lokhttp3/internal/platform/Platform$Companion;->f()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->n:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->j(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_ac
    .catchall {:try_start_7e .. :try_end_ac} :catchall_be

    const/4 v0, 0x0

    :try_start_ad
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->f()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b3

    :try_start_b0
    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z

    goto :goto_b7

    :catchall_b3
    move-exception v1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->B:Z

    throw v1

    :cond_b7
    :goto_b7
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->v()V

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->A:Z
    :try_end_bc
    .catchall {:try_start_b0 .. :try_end_bc} :catchall_be

    monitor-exit p0

    return-void

    :catchall_be
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized v()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    if-nez v0, :cond_6

    goto :goto_9

    :cond_6
    invoke-interface {v0}, Lokio/w;->close()V

    :goto_9
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->s:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->sink(Ljava/io/File;)Lokio/w;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_ca

    const/4 v1, 0x0

    :try_start_16
    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->e:Ljava/lang/String;

    invoke-interface {v0, v2}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lokio/d;->writeByte(I)Lokio/d;

    sget-object v2, Lokhttp3/internal/cache/DiskLruCache;->f:Ljava/lang/String;

    invoke-interface {v0, v2}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v2

    invoke-interface {v2, v3}, Lokio/d;->writeByte(I)Lokio/d;

    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->o:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v2

    invoke-interface {v2, v3}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result v2

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    move-result-object v2

    invoke-interface {v2, v3}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-interface {v0, v3}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->m()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v5

    const/16 v6, 0x20

    if-eqz v5, :cond_77

    sget-object v5, Lokhttp3/internal/cache/DiskLruCache;->j:Ljava/lang/String;

    invoke-interface {v0, v5}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-interface {v0, v3}, Lokio/d;->writeByte(I)Lokio/d;

    goto :goto_4f

    :cond_77
    sget-object v5, Lokhttp3/internal/cache/DiskLruCache;->i:Ljava/lang/String;

    invoke-interface {v0, v5}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    move-result-object v5

    invoke-interface {v5, v6}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-virtual {v4, v0}, Lokhttp3/internal/cache/DiskLruCache$c;->s(Lokio/d;)V

    invoke-interface {v0, v3}, Lokio/d;->writeByte(I)Lokio/d;

    goto :goto_4f

    :cond_8e
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_90
    .catchall {:try_start_16 .. :try_end_90} :catchall_c3

    :try_start_90
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a6

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->t:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/d/a;->rename(Ljava/io/File;Ljava/io/File;)V

    :cond_a6
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->s:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->r:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/d/a;->rename(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->t:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/d/a;->delete(Ljava/io/File;)V

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->r()Lokio/d;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->y:Z

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->D:Z
    :try_end_c1
    .catchall {:try_start_90 .. :try_end_c1} :catchall_ca

    monitor-exit p0

    return-void

    :catchall_c3
    move-exception v1

    :try_start_c4
    throw v1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v2

    :try_start_c6
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_ca

    :catchall_ca
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->p()V

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->d()V

    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->K(Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/cache/DiskLruCache$c;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2e

    const/4 v0, 0x0

    if-nez p1, :cond_1c

    monitor-exit p0

    return v0

    :cond_1c
    :try_start_1c
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->x(Lokhttp3/internal/cache/DiskLruCache$c;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->q:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2c

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->C:Z
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2e

    :cond_2c
    monitor-exit p0

    return p1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final x(Lokhttp3/internal/cache/DiskLruCache$c;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->z:Z

    const/16 v1, 0xa

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->f()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    if-nez v0, :cond_19

    goto :goto_2e

    :cond_19
    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->j:Ljava/lang/String;

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-interface {v0, v1}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-interface {v0}, Lokio/d;->flush()V

    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->f()I

    move-result v0

    if-gtz v0, :cond_3a

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v0

    if-eqz v0, :cond_3e

    :cond_3a
    invoke-virtual {p1, v3}, Lokhttp3/internal/cache/DiskLruCache$c;->q(Z)V

    return v3

    :cond_3e
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_48

    :cond_45
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$b;->c()V

    :goto_48
    const/4 v0, 0x0

    iget v4, p0, Lokhttp3/internal/cache/DiskLruCache;->p:I

    :goto_4b
    if-ge v0, v4, :cond_73

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->m:Lokhttp3/internal/d/a;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->a()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    invoke-interface {v6, v7}, Lokhttp3/internal/d/a;->delete(Ljava/io/File;)V

    iget-wide v6, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->e()[J

    move-result-object v8

    aget-wide v9, v8, v0

    sub-long/2addr v6, v9

    iput-wide v6, p0, Lokhttp3/internal/cache/DiskLruCache;->u:J

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->e()[J

    move-result-object v6

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v0

    move v0, v5

    goto :goto_4b

    :cond_73
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    add-int/2addr v0, v3

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->x:I

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->v:Lokio/d;

    if-nez v0, :cond_7d

    goto :goto_8f

    :cond_7d
    sget-object v4, Lokhttp3/internal/cache/DiskLruCache;->k:Ljava/lang/String;

    invoke-interface {v0, v4}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-interface {v0, v2}, Lokio/d;->writeByte(I)Lokio/d;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/d;->writeUtf8(Ljava/lang/String;)Lokio/d;

    invoke-interface {v0, v1}, Lokio/d;->writeByte(I)Lokio/d;

    :goto_8f
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->w:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$c;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->q()Z

    move-result p1

    if-eqz p1, :cond_a9

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->F:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->G:Lokhttp3/internal/cache/DiskLruCache$e;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lokhttp3/internal/concurrent/TaskQueue;->schedule$default(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/a;JILjava/lang/Object;)V

    :cond_a9
    return v3
.end method

###### Class okhttp3.internal.cache.DiskLruCache.a (okhttp3.internal.cache.DiskLruCache$a)
.class public final Lokhttp3/internal/cache/DiskLruCache$a;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00068\u0006X\u0087D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache$Companion;",
        "",
        "()V",
        "ANY_SEQUENCE_NUMBER",
        "",
        "CLEAN",
        "",
        "DIRTY",
        "JOURNAL_FILE",
        "JOURNAL_FILE_BACKUP",
        "JOURNAL_FILE_TEMP",
        "LEGAL_KEY_PATTERN",
        "Lkotlin/text/Regex;",
        "MAGIC",
        "READ",
        "REMOVE",
        "VERSION_1",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache$a;-><init>()V

    return-void
.end method

###### Class okhttp3.internal.cache.DiskLruCache.b (okhttp3.internal.cache.DiskLruCache$b)
.class public final Lokhttp3/internal/cache/DiskLruCache$b;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0018\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0008\u0000\u0012\n\u0010\u0002\u001a\u00060\u0003R\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\r\u0010\u0011\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008\u0012J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0002\u001a\u00060\u0003R\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "",
        "entry",
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V",
        "done",
        "",
        "getEntry$okhttp",
        "()Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "written",
        "",
        "getWritten$okhttp",
        "()[Z",
        "abort",
        "",
        "commit",
        "detach",
        "detach$okhttp",
        "newSink",
        "Lokio/Sink;",
        "index",
        "",
        "newSource",
        "Lokio/Source;",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lokhttp3/internal/cache/DiskLruCache$c;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/cache/DiskLruCache$c;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-virtual {p2}, Lokhttp3/internal/cache/DiskLruCache$c;->g()Z

    move-result p2

    if-eqz p2, :cond_19

    const/4 p1, 0x0

    goto :goto_1f

    :cond_19
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result p1

    new-array p1, p1, [Z

    :goto_1f
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->b:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->e(Lokhttp3/internal/cache/DiskLruCache$b;Z)V

    :cond_1b
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2d

    monitor-exit v0

    return-void

    :cond_21
    :try_start_21
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0, p0, v2}, Lokhttp3/internal/cache/DiskLruCache;->e(Lokhttp3/internal/cache/DiskLruCache$b;Z)V

    :cond_1a
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_2c

    monitor-exit v0

    return-void

    :cond_20
    :try_start_20
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lokhttp3/internal/cache/DiskLruCache;->e(Lokhttp3/internal/cache/DiskLruCache$b;Z)V

    goto :goto_21

    :cond_1b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$c;->q(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final d()Lokhttp3/internal/cache/DiskLruCache$c;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->a:Lokhttp3/internal/cache/DiskLruCache$c;

    return-object v0
.end method

.method public final e()[Z
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->b:[Z

    return-object v0
.end method

.method public final f(I)Lokio/w;
    .registers 5

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b;->d:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache$b;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->b()Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/w;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_64

    monitor-exit v0

    return-object p1

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->g()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->e()[Z

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-boolean v2, v1, p1

    :cond_30
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache$b;->d()Lokhttp3/internal/cache/DiskLruCache$c;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_3e
    .catchall {:try_start_1d .. :try_end_3e} :catchall_64

    :try_start_3e
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->l()Lokhttp3/internal/d/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lokhttp3/internal/d/a;->sink(Ljava/io/File;)Lokio/w;

    move-result-object p1
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_46} :catch_52
    .catchall {:try_start_3e .. :try_end_46} :catchall_64

    :try_start_46
    new-instance v1, Lokhttp3/internal/cache/c;

    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$b$a;

    invoke-direct {v2, v0, p0}, Lokhttp3/internal/cache/DiskLruCache$b$a;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$b;)V

    invoke-direct {v1, p1, v2}, Lokhttp3/internal/cache/c;-><init>(Lokio/w;Lkotlin/jvm/b/l;)V
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_64

    monitor-exit v0

    return-object v1

    :catch_52
    :try_start_52
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/w;

    move-result-object p1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_64

    monitor-exit v0

    return-object p1

    :cond_58
    :try_start_58
    const-string p1, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    monitor-exit v0

    throw p1
.end method

###### Class okhttp3.internal.cache.DiskLruCache.b.a (okhttp3.internal.cache.DiskLruCache$b$a)
.class final Lokhttp3/internal/cache/DiskLruCache$b$a;
.super Lkotlin/jvm/internal/t;
.source "DiskLruCache.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache$b;->f(I)Lokio/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/io/IOException;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/io/IOException;",
        "invoke"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/cache/DiskLruCache;

.field final synthetic b:Lokhttp3/internal/cache/DiskLruCache$b;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$b;)V
    .registers 3

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$b$a;->a:Lokhttp3/internal/cache/DiskLruCache;

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$b$a;->b:Lokhttp3/internal/cache/DiskLruCache$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$b$a;->a:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$b$a;->b:Lokhttp3/internal/cache/DiskLruCache$b;

    monitor-enter p1

    :try_start_a
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$b;->c()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    monitor-exit p1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$b$a;->a(Ljava/io/IOException;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class okhttp3.internal.cache.DiskLruCache.c (okhttp3.internal.cache.DiskLruCache$c)
.class public final Lokhttp3/internal/cache/DiskLruCache$c;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010.\u001a\u00020/2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000301H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\u001aH\u0002J\u001b\u00105\u001a\u0002062\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000301H\u0000\u00a2\u0006\u0002\u00087J\u0013\u00108\u001a\u0008\u0018\u000109R\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008:J\u0015\u0010;\u001a\u0002062\u0006\u0010<\u001a\u00020=H\u0000\u00a2\u0006\u0002\u0008>R\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\u0008\u0018\u00010\u000bR\u00020\u000cX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\tR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u0016X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020 X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\"\"\u0004\u0008-\u0010$\u00a8\u0006?"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache$Entry;",
        "",
        "key",
        "",
        "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V",
        "cleanFiles",
        "",
        "Ljava/io/File;",
        "getCleanFiles$okhttp",
        "()Ljava/util/List;",
        "currentEditor",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "getCurrentEditor$okhttp",
        "()Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "setCurrentEditor$okhttp",
        "(Lokhttp3/internal/cache/DiskLruCache$Editor;)V",
        "dirtyFiles",
        "getDirtyFiles$okhttp",
        "getKey$okhttp",
        "()Ljava/lang/String;",
        "lengths",
        "",
        "getLengths$okhttp",
        "()[J",
        "lockingSourceCount",
        "",
        "getLockingSourceCount$okhttp",
        "()I",
        "setLockingSourceCount$okhttp",
        "(I)V",
        "readable",
        "",
        "getReadable$okhttp",
        "()Z",
        "setReadable$okhttp",
        "(Z)V",
        "sequenceNumber",
        "",
        "getSequenceNumber$okhttp",
        "()J",
        "setSequenceNumber$okhttp",
        "(J)V",
        "zombie",
        "getZombie$okhttp",
        "setZombie$okhttp",
        "invalidLengths",
        "",
        "strings",
        "",
        "newSource",
        "Lokio/Source;",
        "index",
        "setLengths",
        "",
        "setLengths$okhttp",
        "snapshot",
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "snapshot$okhttp",
        "writeLengths",
        "writer",
        "Lokio/BufferedSink;",
        "writeLengths$okhttp",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Lokhttp3/internal/cache/DiskLruCache$b;

.field private h:I

.field private i:J

.field final synthetic j:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->b:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result p1

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, p1, :cond_73

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->c:Ljava/util/List;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->k()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->d:Ljava/util/List;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v4}, Lokhttp3/internal/cache/DiskLruCache;->k()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v1, v2

    goto :goto_3a

    :cond_73
    return-void
.end method

.method private final j(Ljava/util/List;)Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected journal line: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final k(I)Lokio/y;
    .registers 4

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->l()Lokhttp3/internal/d/a;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-interface {v0, p1}, Lokhttp3/internal/d/a;->source(Ljava/io/File;)Lokio/y;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-object p1

    :cond_1b
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->h:I

    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$c$a;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {v0, p1, v1, p0}, Lokhttp3/internal/cache/DiskLruCache$c$a;-><init>(Lokio/y;Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$c;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->c:Ljava/util/List;

    return-object v0
.end method

.method public final b()Lokhttp3/internal/cache/DiskLruCache$b;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->g:Lokhttp3/internal/cache/DiskLruCache$b;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()[J
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->b:[J

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->h:I

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->e:Z

    return v0
.end method

.method public final h()J
    .registers 3

    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->i:J

    return-wide v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->f:Z

    return v0
.end method

.method public final l(Lokhttp3/internal/cache/DiskLruCache$b;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->g:Lokhttp3/internal/cache/DiskLruCache$b;

    return-void
.end method

.method public final m(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "strings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result v1

    if-ne v0, v1, :cond_34

    const/4 v0, 0x0

    :try_start_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_16
    if-ge v0, v1, :cond_2a

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$c;->b:[J

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_28} :catch_2b

    move v0, v2

    goto :goto_16

    :cond_2a
    return-void

    :catch_2b
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$c;->j(Ljava/util/List;)Ljava/lang/Void;

    new-instance p1, Lkotlin/f;

    invoke-direct {p1}, Lkotlin/f;-><init>()V

    throw p1

    :cond_34
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$c;->j(Ljava/util/List;)Ljava/lang/Void;

    new-instance p1, Lkotlin/f;

    invoke-direct {p1}, Lkotlin/f;-><init>()V

    throw p1
.end method

.method public final n(I)V
    .registers 2

    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->h:I

    return-void
.end method

.method public final o(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->e:Z

    return-void
.end method

.method public final p(J)V
    .registers 3

    iput-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->i:J

    return-void
.end method

.method public final q(Z)V
    .registers 2

    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache$c;->f:Z

    return-void
.end method

.method public final r()Lokhttp3/internal/cache/DiskLruCache$d;
    .registers 11

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    sget-boolean v1, Lokhttp3/internal/Util;->h:Z

    if-eqz v1, :cond_34

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_34

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " MUST hold lock on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_34
    :goto_34
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    return-object v1

    :cond_3a
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getCivilizedFileSystem$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->g:Lokhttp3/internal/cache/DiskLruCache$b;

    if-nez v0, :cond_4a

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->f:Z

    if-eqz v0, :cond_4b

    :cond_4a
    return-object v1

    :cond_4b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$c;->b:[J

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [J

    const/4 v2, 0x0

    :try_start_5a
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v3}, Lokhttp3/internal/cache/DiskLruCache;->o()I

    move-result v3

    :goto_60
    if-ge v2, v3, :cond_6d

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v2}, Lokhttp3/internal/cache/DiskLruCache$c;->k(I)Lokio/y;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_60

    :cond_6d
    new-instance v9, Lokhttp3/internal/cache/DiskLruCache$d;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache$c;->a:Ljava/lang/String;

    iget-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache$c;->i:J

    move-object v2, v9

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Lokhttp3/internal/cache/DiskLruCache$d;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_7a} :catch_7b

    return-object v9

    :catch_7b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/y;

    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7f

    :cond_8f
    :try_start_8f
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->j:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v0, p0}, Lokhttp3/internal/cache/DiskLruCache;->x(Lokhttp3/internal/cache/DiskLruCache$c;)Z
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_94} :catch_94

    :catch_94
    return-object v1
.end method

.method public final s(Lokio/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    aget-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lokio/d;->writeByte(I)Lokio/d;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lokio/d;->writeDecimalLong(J)Lokio/d;

    goto :goto_9

    :cond_19
    return-void
.end method

###### Class okhttp3.internal.cache.DiskLruCache.c.a (okhttp3.internal.cache.DiskLruCache$c$a)
.class public final Lokhttp3/internal/cache/DiskLruCache$c$a;
.super Lokio/j;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache$c;->k(I)Lokio/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$Entry$newSource$1",
        "Lokio/ForwardingSource;",
        "closed",
        "",
        "close",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lokio/y;

.field final synthetic c:Lokhttp3/internal/cache/DiskLruCache;

.field final synthetic d:Lokhttp3/internal/cache/DiskLruCache$c;


# direct methods
.method constructor <init>(Lokio/y;Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$c;)V
    .registers 4

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->b:Lokio/y;

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->c:Lokhttp3/internal/cache/DiskLruCache;

    iput-object p3, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->d:Lokhttp3/internal/cache/DiskLruCache$c;

    invoke-direct {p0, p1}, Lokio/j;-><init>(Lokio/y;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    invoke-super {p0}, Lokio/j;->close()V

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->a:Z

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->a:Z

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->c:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$c$a;->d:Lokhttp3/internal/cache/DiskLruCache$c;

    monitor-enter v0

    :try_start_f
    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$c;->n(I)V

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->f()I

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v1}, Lokhttp3/internal/cache/DiskLruCache$c;->i()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->x(Lokhttp3/internal/cache/DiskLruCache$c;)Z

    :cond_27
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_2b

    monitor-exit v0

    goto :goto_2e

    :catchall_2b
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_2e
    :goto_2e
    return-void
.end method

###### Class okhttp3.internal.cache.DiskLruCache.d (okhttp3.internal.cache.DiskLruCache$d)
.class public final Lokhttp3/internal/cache/DiskLruCache$d;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B-\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u000c\u0010\u000e\u001a\u0008\u0018\u00010\u000fR\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
        "Ljava/io/Closeable;",
        "key",
        "",
        "sequenceNumber",
        "",
        "sources",
        "",
        "Lokio/Source;",
        "lengths",
        "",
        "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V",
        "close",
        "",
        "edit",
        "Lokhttp3/internal/cache/DiskLruCache$Editor;",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "getLength",
        "index",
        "",
        "getSource",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/y;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[J

.field final synthetic e:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method public constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "+",
            "Lokio/y;",
            ">;[J)V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sources"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lengths"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$d;->e:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$d;->a:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/internal/cache/DiskLruCache$d;->b:J

    iput-object p5, p0, Lokhttp3/internal/cache/DiskLruCache$d;->c:Ljava/util/List;

    iput-object p6, p0, Lokhttp3/internal/cache/DiskLruCache$d;->d:[J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/y;

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final d()Lokhttp3/internal/cache/DiskLruCache$b;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$d;->e:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$d;->a:Ljava/lang/String;

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache$d;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/cache/DiskLruCache;->g(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$b;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lokio/y;
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/y;

    return-object p1
.end method

###### Class okhttp3.internal.cache.DiskLruCache.e (okhttp3.internal.cache.DiskLruCache$e)
.class public final Lokhttp3/internal/cache/DiskLruCache$e;
.super Lokhttp3/internal/concurrent/a;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/d/a;Ljava/io/File;IIJLokhttp3/internal/concurrent/TaskRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/cache/DiskLruCache$cleanupTask$1",
        "Lokhttp3/internal/concurrent/Task;",
        "runOnce",
        "",
        "okhttp"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic e:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$e;->e:Lokhttp3/internal/cache/DiskLruCache;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v0, v1}, Lokhttp3/internal/concurrent/a;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public f()J
    .registers 6

    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$e;->e:Lokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    :try_start_3
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$getInitialized$p(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->j()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_3a

    if-eqz v1, :cond_12

    goto :goto_38

    :cond_12
    const/4 v1, 0x1

    :try_start_13
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->J()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_3a

    goto :goto_1a

    :catch_17
    :try_start_17
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentTrimFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_3a

    :goto_1a
    :try_start_1a
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$journalRebuildRequired(Lokhttp3/internal/cache/DiskLruCache;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache;->v()V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lokhttp3/internal/cache/DiskLruCache;->access$setRedundantOpCount$p(Lokhttp3/internal/cache/DiskLruCache;I)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_28
    .catchall {:try_start_1a .. :try_end_27} :catchall_3a

    goto :goto_36

    :catch_28
    :try_start_28
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setMostRecentRebuildFailed$p(Lokhttp3/internal/cache/DiskLruCache;Z)V

    invoke-static {}, Lokio/Okio;->blackhole()Lokio/w;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->access$setJournalWriter$p(Lokhttp3/internal/cache/DiskLruCache;Lokio/d;)V
    :try_end_36
    .catchall {:try_start_28 .. :try_end_36} :catchall_3a

    :cond_36
    :goto_36
    monitor-exit v0

    return-wide v2

    :cond_38
    :goto_38
    monitor-exit v0

    return-wide v2

    :catchall_3a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

###### Class okhttp3.internal.cache.DiskLruCache.f (okhttp3.internal.cache.DiskLruCache$f)
.class final Lokhttp3/internal/cache/DiskLruCache$f;
.super Lkotlin/jvm/internal/t;
.source "DiskLruCache.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;->r()Lokio/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/io/IOException;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/io/IOException;",
        "invoke"
    }
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 2

    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$f;->a:Lokhttp3/internal/cache/DiskLruCache;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .registers 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$f;->a:Lokhttp3/internal/cache/DiskLruCache;

    sget-boolean v0, Lokhttp3/internal/Util;->h:Z

    if-eqz v0, :cond_39

    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_39

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_39
    :goto_39
    iget-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$f;->a:Lokhttp3/internal/cache/DiskLruCache;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lokhttp3/internal/cache/DiskLruCache;->access$setHasJournalErrors$p(Lokhttp3/internal/cache/DiskLruCache;Z)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$f;->a(Ljava/io/IOException;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
