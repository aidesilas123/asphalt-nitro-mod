###### Class okio.ZipFileSystem (okio.ZipFileSystem)
.class public final Lokio/ZipFileSystem;
.super Lokio/FileSystem;
.source "ZipFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ZipFileSystem$a;
    }
.end annotation


# static fields
.field private static final e:Lokio/ZipFileSystem$a;

.field private static final f:Lokio/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final g:Lokio/Path;

.field private final h:Lokio/FileSystem;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/Path;",
            "Lokio/internal/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lokio/ZipFileSystem$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/ZipFileSystem$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lokio/ZipFileSystem;->e:Lokio/ZipFileSystem$a;

    sget-object v0, Lokio/Path;->a:Lokio/Path$Companion;

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    sput-object v0, Lokio/ZipFileSystem;->f:Lokio/Path;

    return-void
.end method

.method public constructor <init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Ljava/util/Map<",
            "Lokio/Path;",
            "Lokio/internal/c;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "zipPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entries"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokio/FileSystem;-><init>()V

    iput-object p1, p0, Lokio/ZipFileSystem;->g:Lokio/Path;

    iput-object p2, p0, Lokio/ZipFileSystem;->h:Lokio/FileSystem;

    iput-object p3, p0, Lokio/ZipFileSystem;->i:Ljava/util/Map;

    iput-object p4, p0, Lokio/ZipFileSystem;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getROOT$cp()Lokio/Path;
    .registers 1

    sget-object v0, Lokio/ZipFileSystem;->f:Lokio/Path;

    return-object v0
.end method

.method private final r(Lokio/Path;)Lokio/Path;
    .registers 4

    sget-object v0, Lokio/ZipFileSystem;->f:Lokio/Path;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lokio/Path;->q(Lokio/Path;Z)Lokio/Path;

    move-result-object p1

    return-object p1
.end method

.method private final s(Lokio/Path;Z)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Z)",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lokio/ZipFileSystem;->r(Lokio/Path;)Lokio/Path;

    move-result-object v0

    iget-object v1, p0, Lokio/ZipFileSystem;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/internal/c;

    if-nez v0, :cond_1e

    if-nez p2, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    new-instance p2, Ljava/io/IOException;

    const-string v0, "not a directory: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1e
    invoke-virtual {v0}, Lokio/internal/c;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lokio/Path;Z)Lokio/w;
    .registers 3

    const-string p2, "file"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Lokio/Path;Z)V
    .registers 3

    const-string p2, "dir"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lokio/Path;Z)V
    .registers 3

    const-string p2, "path"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Lokio/Path;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokio/ZipFileSystem;->s(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public i(Lokio/Path;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokio/ZipFileSystem;->s(Lokio/Path;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public l(Lokio/Path;)Lokio/FileMetadata;
    .registers 16

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/ZipFileSystem;->r(Lokio/Path;)Lokio/Path;

    move-result-object p1

    iget-object v0, p0, Lokio/ZipFileSystem;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/internal/c;

    const/4 v0, 0x0

    if-nez p1, :cond_15

    return-object v0

    :cond_15
    new-instance v12, Lokio/FileMetadata;

    invoke-virtual {p1}, Lokio/internal/c;->h()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Lokio/internal/c;->h()Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lokio/internal/c;->h()Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v5, v0

    goto :goto_33

    :cond_2a
    invoke-virtual {p1}, Lokio/internal/c;->g()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v5, v1

    :goto_33
    const/4 v6, 0x0

    invoke-virtual {p1}, Lokio/internal/c;->e()Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x80

    const/4 v11, 0x0

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/n;)V

    invoke-virtual {p1}, Lokio/internal/c;->f()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_4c

    return-object v12

    :cond_4c
    iget-object v1, p0, Lokio/ZipFileSystem;->h:Lokio/FileSystem;

    iget-object v2, p0, Lokio/ZipFileSystem;->g:Lokio/Path;

    invoke-virtual {v1, v2}, Lokio/FileSystem;->m(Lokio/Path;)Lokio/FileHandle;

    move-result-object v1

    :try_start_54
    invoke-virtual {p1}, Lokio/internal/c;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lokio/FileHandle;->l(J)Lokio/y;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object p1
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception p1

    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    :goto_65
    if-nez v1, :cond_68

    goto :goto_74

    :cond_68
    :try_start_68
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_74

    :catchall_6c
    move-exception v1

    if-nez v0, :cond_71

    move-object v0, v1

    goto :goto_74

    :cond_71
    invoke-static {v0, v1}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_74
    if-nez v0, :cond_7e

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1, v12}, Lokio/internal/ZipKt;->readLocalHeader(Lokio/e;Lokio/FileMetadata;)Lokio/FileMetadata;

    move-result-object p1

    return-object p1

    :cond_7e
    throw v0
.end method

.method public m(Lokio/Path;)Lokio/FileHandle;
    .registers 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Lokio/Path;ZZ)Lokio/FileHandle;
    .registers 4

    const-string p2, "file"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip entries are not writable"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Lokio/Path;Z)Lokio/w;
    .registers 3

    const-string p2, "file"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lokio/Path;)Lokio/y;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lokio/ZipFileSystem;->r(Lokio/Path;)Lokio/Path;

    move-result-object v0

    iget-object v1, p0, Lokio/ZipFileSystem;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/internal/c;

    if-eqz v0, :cond_75

    iget-object p1, p0, Lokio/ZipFileSystem;->h:Lokio/FileSystem;

    iget-object v1, p0, Lokio/ZipFileSystem;->g:Lokio/Path;

    invoke-virtual {p1, v1}, Lokio/FileSystem;->m(Lokio/Path;)Lokio/FileHandle;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {v0}, Lokio/internal/c;->f()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lokio/FileHandle;->l(J)Lokio/y;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_2d
    if-nez p1, :cond_30

    goto :goto_3c

    :cond_30
    :try_start_30
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_3c

    :catchall_34
    move-exception p1

    if-nez v1, :cond_39

    move-object v1, p1

    goto :goto_3c

    :cond_39
    invoke-static {v1, p1}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3c
    if-nez v1, :cond_74

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lokio/internal/ZipKt;->skipLocalHeader(Lokio/e;)V

    invoke-virtual {v0}, Lokio/internal/c;->d()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_55

    new-instance p1, Lokio/internal/b;

    invoke-virtual {v0}, Lokio/internal/c;->g()J

    move-result-wide v3

    invoke-direct {p1, v2, v3, v4, v1}, Lokio/internal/b;-><init>(Lokio/y;JZ)V

    goto :goto_73

    :cond_55
    new-instance p1, Lokio/n;

    new-instance v3, Lokio/internal/b;

    invoke-virtual {v0}, Lokio/internal/c;->c()J

    move-result-wide v4

    invoke-direct {v3, v2, v4, v5, v1}, Lokio/internal/b;-><init>(Lokio/y;JZ)V

    new-instance v2, Ljava/util/zip/Inflater;

    invoke-direct {v2, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p1, v3, v2}, Lokio/n;-><init>(Lokio/y;Ljava/util/zip/Inflater;)V

    new-instance v1, Lokio/internal/b;

    invoke-virtual {v0}, Lokio/internal/c;->g()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v3, v0}, Lokio/internal/b;-><init>(Lokio/y;JZ)V

    move-object p1, v1

    :goto_73
    return-object p1

    :cond_74
    throw v1

    :cond_75
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "no such file: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class okio.ZipFileSystem.a (okio.ZipFileSystem$a)
.class final Lokio/ZipFileSystem$a;
.super Ljava/lang/Object;
.source "ZipFileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/ZipFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lokio/ZipFileSystem$a;-><init>()V

    return-void
.end method
