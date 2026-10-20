###### Class okio.internal.ZipKt (okio.internal.ZipKt)
.class public final Lokio/internal/ZipKt;
.super Ljava/lang/Object;
.source "zip.kt"


# direct methods
.method private static final a(Ljava/util/List;)Ljava/util/Map;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokio/internal/c;",
            ">;)",
            "Ljava/util/Map<",
            "Lokio/Path;",
            "Lokio/internal/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Lokio/internal/ZipKt$a;

    invoke-direct {v1}, Lokio/internal/ZipKt$a;-><init>()V

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/collections/p;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/internal/c;

    invoke-virtual {v2}, Lokio/internal/c;->a()Lokio/Path;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/internal/c;

    if-eqz v3, :cond_2d

    goto :goto_14

    :cond_2d
    :goto_2d
    invoke-virtual {v2}, Lokio/internal/c;->a()Lokio/Path;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Path;->k()Lokio/Path;

    move-result-object v3

    if-nez v3, :cond_38

    goto :goto_14

    :cond_38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/internal/c;

    if-eqz v4, :cond_4c

    invoke-virtual {v4}, Lokio/internal/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lokio/internal/c;->a()Lokio/Path;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_4c
    new-instance v15, Lokio/internal/c;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x1fc

    const/16 v20, 0x0

    move-object v4, v15

    move-object v5, v3

    move-object/from16 v21, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-direct/range {v4 .. v19}, Lokio/internal/c;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;JILkotlin/jvm/internal/n;)V

    move-object/from16 v4, v21

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lokio/internal/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lokio/internal/c;->a()Lokio/Path;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_2d

    :cond_80
    return-object v0
.end method

.method private static final b(II)Ljava/lang/Long;
    .registers 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    shr-int/lit8 v0, p0, 0x9

    and-int/lit8 v0, v0, 0x7f

    add-int/lit16 v1, v0, 0x7bc

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 v3, p0, 0x1f

    shr-int/lit8 p0, p1, 0xb

    and-int/lit8 v4, p0, 0x1f

    shr-int/lit8 p0, p1, 0x5

    and-int/lit8 v5, p0, 0x3f

    and-int/lit8 p0, p1, 0x1f

    shl-int/lit8 v6, p0, 0x1

    add-int/lit8 v2, v0, -0x1

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static final c(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/a;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.Integer.toStri\u2026(this, checkRadix(radix))"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0x"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lokio/e;)Lokio/internal/a;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lokio/e;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-interface {p0}, Lokio/e;->readShortLe()S

    move-result v2

    and-int/2addr v2, v1

    invoke-interface {p0}, Lokio/e;->readShortLe()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v5, v3

    invoke-interface {p0}, Lokio/e;->readShortLe()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v3, v3

    cmp-long v7, v5, v3

    if-nez v7, :cond_3e

    if-nez v0, :cond_3e

    if-nez v2, :cond_3e

    const-wide/16 v2, 0x4

    invoke-interface {p0, v2, v3}, Lokio/e;->skip(J)V

    invoke-interface {p0}, Lokio/e;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    invoke-interface {p0}, Lokio/e;->readShortLe()S

    move-result p0

    and-int v9, p0, v1

    new-instance p0, Lokio/internal/a;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lokio/internal/a;-><init>(JJI)V

    return-object p0

    :cond_3e
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported zip: spanned"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final e(Lokio/e;ILkotlin/jvm/b/p;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/e;",
            "I",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    int-to-long v0, p1

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_74

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_6c

    invoke-interface {p0}, Lokio/e;->readShortLe()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    invoke-interface {p0}, Lokio/e;->readShortLe()S

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_64

    invoke-interface {p0, v4, v5}, Lokio/e;->require(J)V

    invoke-interface {p0}, Lokio/e;->y()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->I()J

    move-result-wide v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lokio/e;->y()Lokio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Buffer;->I()J

    move-result-wide v8

    add-long/2addr v8, v4

    sub-long/2addr v8, v6

    cmp-long v6, v8, v2

    if-ltz v6, :cond_54

    if-lez v6, :cond_52

    invoke-interface {p0}, Lokio/e;->y()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->skip(J)V

    :cond_52
    sub-long/2addr v0, v4

    goto :goto_1

    :cond_54
    new-instance p0, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "unsupported zip: too many bytes processed for "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
    return-void
.end method

.method private static final f(Lokio/e;Lokio/FileMetadata;)Lokio/FileMetadata;
    .registers 19

    move-object/from16 v0, p0

    new-instance v1, Lkotlin/jvm/internal/l0;

    invoke-direct {v1}, Lkotlin/jvm/internal/l0;-><init>()V

    const/4 v2, 0x0

    if-nez p1, :cond_c

    move-object v3, v2

    goto :goto_10

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->b()Ljava/lang/Long;

    move-result-object v3

    :goto_10
    iput-object v3, v1, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    new-instance v3, Lkotlin/jvm/internal/l0;

    invoke-direct {v3}, Lkotlin/jvm/internal/l0;-><init>()V

    new-instance v4, Lkotlin/jvm/internal/l0;

    invoke-direct {v4}, Lkotlin/jvm/internal/l0;-><init>()V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readIntLe()I

    move-result v5

    const v6, 0x4034b50

    if-ne v5, v6, :cond_93

    const-wide/16 v5, 0x2

    invoke-interface {v0, v5, v6}, Lokio/e;->skip(J)V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v5

    const v6, 0xffff

    and-int/2addr v5, v6

    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_83

    const-wide/16 v7, 0x12

    invoke-interface {v0, v7, v8}, Lokio/e;->skip(J)V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v5

    int-to-long v7, v5

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v5

    and-int/2addr v5, v6

    invoke-interface {v0, v7, v8}, Lokio/e;->skip(J)V

    if-nez p1, :cond_53

    int-to-long v3, v5

    invoke-interface {v0, v3, v4}, Lokio/e;->skip(J)V

    return-object v2

    :cond_53
    new-instance v2, Lokio/internal/ZipKt$d;

    invoke-direct {v2, v0, v1, v3, v4}, Lokio/internal/ZipKt$d;-><init>(Lokio/e;Lkotlin/jvm/internal/l0;Lkotlin/jvm/internal/l0;Lkotlin/jvm/internal/l0;)V

    invoke-static {v0, v5, v2}, Lokio/internal/ZipKt;->e(Lokio/e;ILkotlin/jvm/b/p;)V

    new-instance v0, Lokio/FileMetadata;

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->f()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->e()Z

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lokio/FileMetadata;->c()Ljava/lang/Long;

    move-result-object v10

    iget-object v2, v4, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Ljava/lang/Long;

    iget-object v1, v1, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Ljava/lang/Long;

    iget-object v1, v3, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Ljava/lang/Long;

    const/4 v14, 0x0

    const/16 v15, 0x80

    const/16 v16, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v16}, Lokio/FileMetadata;-><init>(ZZLokio/Path;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/n;)V

    return-object v0

    :cond_83
    new-instance v0, Ljava/io/IOException;

    invoke-static {v5}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final g(Lokio/e;Lokio/internal/a;)Lokio/internal/a;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xc

    invoke-interface {p0, v0, v1}, Lokio/e;->skip(J)V

    invoke-interface {p0}, Lokio/e;->readIntLe()I

    move-result v0

    invoke-interface {p0}, Lokio/e;->readIntLe()I

    move-result v1

    invoke-interface {p0}, Lokio/e;->readLongLe()J

    move-result-wide v3

    invoke-interface {p0}, Lokio/e;->readLongLe()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_31

    if-nez v0, :cond_31

    if-nez v1, :cond_31

    const-wide/16 v0, 0x8

    invoke-interface {p0, v0, v1}, Lokio/e;->skip(J)V

    invoke-interface {p0}, Lokio/e;->readLongLe()J

    move-result-wide v5

    new-instance p0, Lokio/internal/a;

    invoke-virtual {p1}, Lokio/internal/a;->b()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lokio/internal/a;-><init>(JJI)V

    return-object p0

    :cond_31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported zip: spanned"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/b/l;)Lokio/ZipFileSystem;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lokio/internal/c;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lokio/ZipFileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "zipPath"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fileSystem"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "predicate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lokio/FileSystem;->m(Lokio/Path;)Lokio/FileHandle;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :try_start_1d
    invoke-static {v3, v5, v6, v4, v7}, Lokio/FileHandle;->source$default(Lokio/FileHandle;JILjava/lang/Object;)Lokio/y;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v8
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_1bd

    :try_start_25
    invoke-interface {v8}, Lokio/e;->readIntLe()I

    move-result v9
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_1b4

    const-string v10, " but was "

    const v11, 0x6054b50

    const v12, 0x4034b50

    if-eq v9, v12, :cond_62

    if-ne v9, v11, :cond_3d

    :try_start_35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported zip: empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    sget-object v9, Lkotlin/v;->a:Lkotlin/v;
    :try_end_64
    .catchall {:try_start_35 .. :try_end_64} :catchall_1b4

    :try_start_64
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Lokio/FileHandle;->k()J

    move-result-wide v8

    const/16 v12, 0x16

    int-to-long v12, v12

    sub-long/2addr v8, v12

    cmp-long v12, v8, v5

    if-ltz v12, :cond_1a0

    const-wide/32 v12, 0x10000

    sub-long v12, v8, v12

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    :goto_7c
    invoke-virtual {v3, v8, v9}, Lokio/FileHandle;->l(J)Lokio/y;

    move-result-object v14

    invoke-static {v14}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v14
    :try_end_84
    .catchall {:try_start_64 .. :try_end_84} :catchall_1bd

    :try_start_84
    invoke-interface {v14}, Lokio/e;->readIntLe()I

    move-result v15

    if-ne v15, v11, :cond_187

    invoke-static {v14}, Lokio/internal/ZipKt;->d(Lokio/e;)Lokio/internal/a;

    move-result-object v11

    invoke-virtual {v11}, Lokio/internal/a;->b()I

    move-result v12

    int-to-long v12, v12

    invoke-interface {v14, v12, v13}, Lokio/e;->readUtf8(J)Ljava/lang/String;

    move-result-object v12
    :try_end_97
    .catchall {:try_start_84 .. :try_end_97} :catchall_19b

    :try_start_97
    invoke-interface {v14}, Lokio/y;->close()V

    const/16 v13, 0x14

    int-to-long v13, v13

    sub-long/2addr v8, v13

    cmp-long v13, v8, v5

    if-lez v13, :cond_124

    invoke-virtual {v3, v8, v9}, Lokio/FileHandle;->l(J)Lokio/y;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v8
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_1bd

    :try_start_aa
    invoke-interface {v8}, Lokio/e;->readIntLe()I

    move-result v9

    const v13, 0x7064b50

    if-ne v9, v13, :cond_115

    invoke-interface {v8}, Lokio/e;->readIntLe()I

    move-result v9

    invoke-interface {v8}, Lokio/e;->readLongLe()J

    move-result-wide v13

    invoke-interface {v8}, Lokio/e;->readIntLe()I

    move-result v15

    if-ne v15, v4, :cond_10d

    if-nez v9, :cond_10d

    invoke-virtual {v3, v13, v14}, Lokio/FileHandle;->l(J)Lokio/y;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v4
    :try_end_cb
    .catchall {:try_start_aa .. :try_end_cb} :catchall_11b

    :try_start_cb
    invoke-interface {v4}, Lokio/e;->readIntLe()I

    move-result v9

    const v13, 0x6064b50

    if-ne v9, v13, :cond_df

    invoke-static {v4, v11}, Lokio/internal/ZipKt;->g(Lokio/e;Lokio/internal/a;)Lokio/internal/a;

    move-result-object v9

    sget-object v10, Lkotlin/v;->a:Lkotlin/v;
    :try_end_da
    .catchall {:try_start_cb .. :try_end_da} :catchall_104

    :try_start_da
    invoke-static {v4, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_11b

    move-object v11, v9

    goto :goto_115

    :cond_df
    :try_start_df
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_104
    .catchall {:try_start_df .. :try_end_104} :catchall_104

    :catchall_104
    move-exception v0

    move-object v1, v0

    :try_start_106
    throw v1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_107

    :catchall_107
    move-exception v0

    move-object v2, v0

    :try_start_109
    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_10d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported zip: spanned"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    :goto_115
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;
    :try_end_117
    .catchall {:try_start_109 .. :try_end_117} :catchall_11b

    :try_start_117
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11a
    .catchall {:try_start_117 .. :try_end_11a} :catchall_1bd

    goto :goto_124

    :catchall_11b
    move-exception v0

    move-object v1, v0

    :try_start_11d
    throw v1
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11e

    :catchall_11e
    move-exception v0

    move-object v2, v0

    :try_start_120
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_124
    :goto_124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lokio/internal/a;->a()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lokio/FileHandle;->l(J)Lokio/y;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/y;)Lokio/e;

    move-result-object v8
    :try_end_135
    .catchall {:try_start_120 .. :try_end_135} :catchall_1bd

    :try_start_135
    invoke-virtual {v11}, Lokio/internal/a;->c()J

    move-result-wide v9

    cmp-long v13, v5, v9

    if-gez v13, :cond_16c

    :cond_13d
    const-wide/16 v13, 0x1

    add-long/2addr v5, v13

    invoke-static {v8}, Lokio/internal/ZipKt;->readEntry(Lokio/e;)Lokio/internal/c;

    move-result-object v13

    invoke-virtual {v13}, Lokio/internal/c;->f()J

    move-result-wide v14

    invoke-virtual {v11}, Lokio/internal/a;->a()J

    move-result-wide v16

    cmp-long v18, v14, v16

    if-gez v18, :cond_164

    invoke-interface {v2, v13}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_15f

    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15f
    cmp-long v13, v5, v9

    if-ltz v13, :cond_13d

    goto :goto_16c

    :cond_164
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16c
    :goto_16c
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_16e
    .catchall {:try_start_135 .. :try_end_16e} :catchall_17e

    :try_start_16e
    invoke-static {v8, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lokio/internal/ZipKt;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lokio/ZipFileSystem;

    invoke-direct {v4, v0, v1, v2, v12}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_17a
    .catchall {:try_start_16e .. :try_end_17a} :catchall_1bd

    invoke-static {v3, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    :catchall_17e
    move-exception v0

    move-object v1, v0

    :try_start_180
    throw v1
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_181

    :catchall_181
    move-exception v0

    move-object v2, v0

    :try_start_183
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_187
    invoke-interface {v14}, Lokio/y;->close()V

    const-wide/16 v14, -0x1

    add-long/2addr v8, v14

    cmp-long v14, v8, v12

    if-ltz v14, :cond_193

    goto/16 :goto_7c

    :cond_193
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_19b
    move-exception v0

    invoke-interface {v14}, Lokio/y;->close()V

    throw v0

    :cond_1a0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: size="

    invoke-virtual {v3}, Lokio/FileHandle;->k()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b4
    .catchall {:try_start_183 .. :try_end_1b4} :catchall_1bd

    :catchall_1b4
    move-exception v0

    move-object v1, v0

    :try_start_1b6
    throw v1
    :try_end_1b7
    .catchall {:try_start_1b6 .. :try_end_1b7} :catchall_1b7

    :catchall_1b7
    move-exception v0

    move-object v2, v0

    :try_start_1b9
    invoke-static {v8, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1bd
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_1bd

    :catchall_1bd
    move-exception v0

    move-object v1, v0

    :try_start_1bf
    throw v1
    :try_end_1c0
    .catchall {:try_start_1bf .. :try_end_1c0} :catchall_1c0

    :catchall_1c0
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static synthetic openZip$default(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/b/l;ILjava/lang/Object;)Lokio/ZipFileSystem;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_6

    sget-object p2, Lokio/internal/ZipKt$b;->a:Lokio/internal/ZipKt$b;

    :cond_6
    invoke-static {p0, p1, p2}, Lokio/internal/ZipKt;->openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/b/l;)Lokio/ZipFileSystem;

    move-result-object p0

    return-object p0
.end method

.method public static final readEntry(Lokio/e;)Lokio/internal/c;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    const-string v0, "<this>"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readIntLe()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_136

    const-wide/16 v0, 0x4

    invoke-interface {v8, v0, v1}, Lokio/e;->skip(J)V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_126

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v0

    and-int v12, v0, v1

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v0

    and-int/2addr v0, v1

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v2

    and-int/2addr v2, v1

    invoke-static {v2, v0}, Lokio/internal/ZipKt;->b(II)Ljava/lang/Long;

    move-result-object v13

    invoke-interface/range {p0 .. p0}, Lokio/e;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long v9, v2, v4

    new-instance v11, Lkotlin/jvm/internal/k0;

    invoke-direct {v11}, Lkotlin/jvm/internal/k0;-><init>()V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v11, Lkotlin/jvm/internal/k0;->a:J

    new-instance v14, Lkotlin/jvm/internal/k0;

    invoke-direct {v14}, Lkotlin/jvm/internal/k0;-><init>()V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v4

    iput-wide v2, v14, Lkotlin/jvm/internal/k0;->a:J

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v0

    and-int/2addr v0, v1

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v2

    and-int v15, v2, v1

    invoke-interface/range {p0 .. p0}, Lokio/e;->readShortLe()S

    move-result v2

    and-int v7, v2, v1

    const-wide/16 v1, 0x8

    invoke-interface {v8, v1, v2}, Lokio/e;->skip(J)V

    new-instance v6, Lkotlin/jvm/internal/k0;

    invoke-direct {v6}, Lkotlin/jvm/internal/k0;-><init>()V

    invoke-interface/range {p0 .. p0}, Lokio/e;->readIntLe()I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    iput-wide v1, v6, Lkotlin/jvm/internal/k0;->a:J

    int-to-long v0, v0

    invoke-interface {v8, v0, v1}, Lokio/e;->readUtf8(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-static {v2, v3, v3, v1, v0}, Lkotlin/text/g;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11e

    iget-wide v0, v14, Lkotlin/jvm/internal/k0;->a:J

    const-wide/16 v17, 0x0

    const/16 v3, 0x8

    cmp-long v19, v0, v4

    if-nez v19, :cond_9e

    int-to-long v0, v3

    add-long v0, v0, v17

    move/from16 v19, v12

    move-object/from16 v20, v13

    goto :goto_a4

    :cond_9e
    move/from16 v19, v12

    move-object/from16 v20, v13

    move-wide/from16 v0, v17

    :goto_a4
    iget-wide v12, v11, Lkotlin/jvm/internal/k0;->a:J

    cmp-long v21, v12, v4

    if-nez v21, :cond_ac

    int-to-long v12, v3

    add-long/2addr v0, v12

    :cond_ac
    iget-wide v12, v6, Lkotlin/jvm/internal/k0;->a:J

    cmp-long v21, v12, v4

    if-nez v21, :cond_b4

    int-to-long v3, v3

    add-long/2addr v0, v3

    :cond_b4
    move-wide v12, v0

    new-instance v5, Lkotlin/jvm/internal/h0;

    invoke-direct {v5}, Lkotlin/jvm/internal/h0;-><init>()V

    new-instance v4, Lokio/internal/ZipKt$c;

    const/4 v3, 0x0

    move-object v0, v4

    move-wide/from16 v21, v9

    const/4 v9, 0x2

    move-object v1, v5

    move-object v10, v2

    const/4 v9, 0x0

    move-wide v2, v12

    move-object v9, v4

    move-object v4, v14

    move-object/from16 v23, v14

    move-object v14, v5

    move-object/from16 v5, p0

    move-object/from16 v24, v6

    move-object v6, v11

    move-object/from16 v25, v11

    move v11, v7

    move-object/from16 v7, v24

    invoke-direct/range {v0 .. v7}, Lokio/internal/ZipKt$c;-><init>(Lkotlin/jvm/internal/h0;JLkotlin/jvm/internal/k0;Lokio/e;Lkotlin/jvm/internal/k0;Lkotlin/jvm/internal/k0;)V

    invoke-static {v8, v15, v9}, Lokio/internal/ZipKt;->e(Lokio/e;ILkotlin/jvm/b/p;)V

    cmp-long v0, v12, v17

    if-lez v0, :cond_eb

    iget-boolean v0, v14, Lkotlin/jvm/internal/h0;->a:Z

    if-eqz v0, :cond_e3

    goto :goto_eb

    :cond_e3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_eb
    :goto_eb
    int-to-long v0, v11

    invoke-interface {v8, v0, v1}, Lokio/e;->readUtf8(J)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lokio/Path;->a:Lokio/Path$Companion;

    const-string v1, "/"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v0

    invoke-virtual {v0, v10}, Lokio/Path;->m(Ljava/lang/String;)Lokio/Path;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v10, v1, v4, v2, v3}, Lkotlin/text/g;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    new-instance v1, Lokio/internal/c;

    move-object/from16 v2, v25

    iget-wide v8, v2, Lkotlin/jvm/internal/k0;->a:J

    move-object/from16 v2, v23

    iget-wide v10, v2, Lkotlin/jvm/internal/k0;->a:J

    move-object/from16 v2, v24

    iget-wide v14, v2, Lkotlin/jvm/internal/k0;->a:J

    move-object v2, v1

    move-object v3, v0

    move-wide/from16 v6, v21

    move/from16 v12, v19

    move-object/from16 v13, v20

    invoke-direct/range {v2 .. v15}, Lokio/internal/c;-><init>(Lokio/Path;ZLjava/lang/String;JJJILjava/lang/Long;J)V

    return-object v1

    :cond_11e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_126
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "unsupported zip: general purpose bit flag="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_136
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad zip: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lokio/internal/ZipKt;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final readLocalHeader(Lokio/e;Lokio/FileMetadata;)Lokio/FileMetadata;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "basicMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lokio/internal/ZipKt;->f(Lokio/e;Lokio/FileMetadata;)Lokio/FileMetadata;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final skipLocalHeader(Lokio/e;)V
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lokio/internal/ZipKt;->f(Lokio/e;Lokio/FileMetadata;)Lokio/FileMetadata;

    return-void
.end method
