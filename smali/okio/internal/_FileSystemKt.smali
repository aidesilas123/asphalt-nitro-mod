###### Class okio.internal._FileSystemKt (okio.internal._FileSystemKt)
.class public final Lokio/internal/_FileSystemKt;
.super Ljava/lang/Object;
.source "-FileSystem.kt"


# direct methods
.method public static final collectRecursively(Lkotlin/sequences/h;Lokio/FileSystem;Lkotlin/collections/j;Lokio/Path;ZZLkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/h<",
            "-",
            "Lokio/Path;",
            ">;",
            "Lokio/FileSystem;",
            "Lkotlin/collections/j<",
            "Lokio/Path;",
            ">;",
            "Lokio/Path;",
            "ZZ",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    move-object/from16 v3, p6

    instance-of v4, v3, Lokio/internal/_FileSystemKt$a;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, Lokio/internal/_FileSystemKt$a;

    iget v5, v4, Lokio/internal/_FileSystemKt$a;->i:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lokio/internal/_FileSystemKt$a;->i:I

    goto :goto_20

    :cond_1b
    new-instance v4, Lokio/internal/_FileSystemKt$a;

    invoke-direct {v4, v3}, Lokio/internal/_FileSystemKt$a;-><init>(Lkotlin/coroutines/d;)V

    :goto_20
    iget-object v3, v4, Lokio/internal/_FileSystemKt$a;->h:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Lokio/internal/_FileSystemKt$a;->i:I

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v6, :cond_7f

    if-eq v6, v10, :cond_61

    if-eq v6, v9, :cond_41

    if-ne v6, v8, :cond_39

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_145

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    iget-boolean v0, v4, Lokio/internal/_FileSystemKt$a;->g:Z

    iget-boolean v1, v4, Lokio/internal/_FileSystemKt$a;->f:Z

    iget-object v2, v4, Lokio/internal/_FileSystemKt$a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v6, v4, Lokio/internal/_FileSystemKt$a;->d:Ljava/lang/Object;

    check-cast v6, Lokio/Path;

    iget-object v11, v4, Lokio/internal/_FileSystemKt$a;->c:Ljava/lang/Object;

    check-cast v11, Lkotlin/collections/j;

    iget-object v12, v4, Lokio/internal/_FileSystemKt$a;->b:Ljava/lang/Object;

    check-cast v12, Lokio/FileSystem;

    iget-object v13, v4, Lokio/internal/_FileSystemKt$a;->a:Ljava/lang/Object;

    check-cast v13, Lkotlin/sequences/h;

    :try_start_59
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5e

    goto/16 :goto_e8

    :catchall_5e
    move-exception v0

    goto/16 :goto_127

    :cond_61
    iget-boolean v0, v4, Lokio/internal/_FileSystemKt$a;->g:Z

    iget-boolean v1, v4, Lokio/internal/_FileSystemKt$a;->f:Z

    iget-object v2, v4, Lokio/internal/_FileSystemKt$a;->d:Ljava/lang/Object;

    check-cast v2, Lokio/Path;

    iget-object v6, v4, Lokio/internal/_FileSystemKt$a;->c:Ljava/lang/Object;

    check-cast v6, Lkotlin/collections/j;

    iget-object v11, v4, Lokio/internal/_FileSystemKt$a;->b:Ljava/lang/Object;

    check-cast v11, Lokio/FileSystem;

    iget-object v12, v4, Lokio/internal/_FileSystemKt$a;->a:Ljava/lang/Object;

    check-cast v12, Lkotlin/sequences/h;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move v2, v0

    move v0, v1

    move-object/from16 v1, v16

    goto :goto_a8

    :cond_7f
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez v2, :cond_9f

    iput-object v0, v4, Lokio/internal/_FileSystemKt$a;->a:Ljava/lang/Object;

    move-object/from16 v3, p1

    iput-object v3, v4, Lokio/internal/_FileSystemKt$a;->b:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v4, Lokio/internal/_FileSystemKt$a;->c:Ljava/lang/Object;

    iput-object v1, v4, Lokio/internal/_FileSystemKt$a;->d:Ljava/lang/Object;

    move/from16 v11, p4

    iput-boolean v11, v4, Lokio/internal/_FileSystemKt$a;->f:Z

    iput-boolean v2, v4, Lokio/internal/_FileSystemKt$a;->g:Z

    iput v10, v4, Lokio/internal/_FileSystemKt$a;->i:I

    invoke-virtual {v0, v1, v4}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v5, :cond_a5

    return-object v5

    :cond_9f
    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move/from16 v11, p4

    :cond_a5
    move-object v12, v0

    move v0, v11

    move-object v11, v3

    :goto_a8
    invoke-virtual {v11, v1}, Lokio/FileSystem;->i(Lokio/Path;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_b2

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_b2
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v10

    if-eqz v13, :cond_12f

    move-object v13, v1

    const/4 v14, 0x0

    :goto_bb
    if-eqz v0, :cond_d0

    invoke-virtual {v6, v13}, Lkotlin/collections/j;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c4

    goto :goto_d0

    :cond_c4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "symlink cycle at "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d0
    :goto_d0
    invoke-static {v11, v13}, Lokio/internal/_FileSystemKt;->symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;

    move-result-object v15

    if-nez v15, :cond_12b

    if-nez v0, :cond_da

    if-nez v14, :cond_12f

    :cond_da
    invoke-virtual {v6, v13}, Lkotlin/collections/j;->addLast(Ljava/lang/Object;)V

    :try_start_dd
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_125

    move-object v13, v12

    move-object v12, v11

    move-object v11, v6

    move-object v6, v1

    move v1, v0

    move v0, v2

    move-object v2, v3

    :cond_e8
    :goto_e8
    :try_start_e8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/Path;

    if-eqz v0, :cond_f8

    const/4 v14, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v14, 0x0

    :goto_f9
    iput-object v13, v4, Lokio/internal/_FileSystemKt$a;->a:Ljava/lang/Object;

    iput-object v12, v4, Lokio/internal/_FileSystemKt$a;->b:Ljava/lang/Object;

    iput-object v11, v4, Lokio/internal/_FileSystemKt$a;->c:Ljava/lang/Object;

    iput-object v6, v4, Lokio/internal/_FileSystemKt$a;->d:Ljava/lang/Object;

    iput-object v2, v4, Lokio/internal/_FileSystemKt$a;->e:Ljava/lang/Object;

    iput-boolean v1, v4, Lokio/internal/_FileSystemKt$a;->f:Z

    iput-boolean v0, v4, Lokio/internal/_FileSystemKt$a;->g:Z

    iput v9, v4, Lokio/internal/_FileSystemKt$a;->i:I

    move-object/from16 p0, v13

    move-object/from16 p1, v12

    move-object/from16 p2, v11

    move-object/from16 p3, v3

    move/from16 p4, v1

    move/from16 p5, v14

    move-object/from16 p6, v4

    invoke-static/range {p0 .. p6}, Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/h;Lokio/FileSystem;Lkotlin/collections/j;Lokio/Path;ZZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3
    :try_end_11b
    .catchall {:try_start_e8 .. :try_end_11b} :catchall_5e

    if-ne v3, v5, :cond_e8

    return-object v5

    :cond_11e
    invoke-virtual {v11}, Lkotlin/collections/j;->removeLast()Ljava/lang/Object;

    move v2, v0

    move-object v1, v6

    move-object v12, v13

    goto :goto_12f

    :catchall_125
    move-exception v0

    move-object v11, v6

    :goto_127
    invoke-virtual {v11}, Lkotlin/collections/j;->removeLast()Ljava/lang/Object;

    throw v0

    :cond_12b
    add-int/lit8 v14, v14, 0x1

    move-object v13, v15

    goto :goto_bb

    :cond_12f
    :goto_12f
    if-eqz v2, :cond_148

    const/4 v0, 0x0

    iput-object v0, v4, Lokio/internal/_FileSystemKt$a;->a:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/_FileSystemKt$a;->b:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/_FileSystemKt$a;->c:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/_FileSystemKt$a;->d:Ljava/lang/Object;

    iput-object v0, v4, Lokio/internal/_FileSystemKt$a;->e:Ljava/lang/Object;

    iput v8, v4, Lokio/internal/_FileSystemKt$a;->i:I

    invoke-virtual {v12, v1, v4}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_145

    return-object v5

    :cond_145
    :goto_145
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0

    :cond_148
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public static final commonCopy(Lokio/FileSystem;Lokio/Path;Lokio/Path;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->q(Lokio/Path;)Lokio/y;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p0, p2}, Lokio/FileSystem;->o(Lokio/Path;)Lokio/w;

    move-result-object p0

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/w;)Lokio/d;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_47

    :try_start_1c
    invoke-interface {p0, p1}, Lokio/d;->D(Lokio/y;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_27

    move-object v1, p2

    move-object p2, v0

    goto :goto_29

    :catchall_27
    move-exception p2

    move-object v1, v0

    :goto_29
    if-nez p0, :cond_2c

    goto :goto_38

    :cond_2c
    :try_start_2c
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_38

    :catchall_30
    move-exception p0

    if-nez p2, :cond_35

    move-object p2, p0

    goto :goto_38

    :cond_35
    :try_start_35
    invoke-static {p2, p0}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_38
    if-nez p2, :cond_46

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_4b

    :cond_46
    throw p2
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_4b
    if-nez p1, :cond_4e

    goto :goto_5a

    :cond_4e
    :try_start_4e
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_5a

    :catchall_52
    move-exception p1

    if-nez v0, :cond_57

    move-object v0, p1

    goto :goto_5a

    :cond_57
    invoke-static {v0, p1}, Lkotlin/c;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5a
    if-nez v0, :cond_60

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-void

    :cond_60
    throw v0
.end method

.method public static final commonCreateDirectories(Lokio/FileSystem;Lokio/Path;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/collections/j;

    invoke-direct {v0}, Lkotlin/collections/j;-><init>()V

    move-object v1, p1

    :goto_10
    if-eqz v1, :cond_20

    invoke-virtual {p0, v1}, Lokio/FileSystem;->g(Lokio/Path;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v0, v1}, Lkotlin/collections/j;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokio/Path;->k()Lokio/Path;

    move-result-object v1

    goto :goto_10

    :cond_20
    if-eqz p2, :cond_40

    invoke-virtual {v0}, Lkotlin/collections/j;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_29

    goto :goto_40

    :cond_29
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lokio/Path;

    invoke-virtual {p0, p2}, Lokio/FileSystem;->c(Lokio/Path;)V

    goto :goto_44

    :cond_54
    return-void
.end method

.method public static final commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileOrDirectory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/internal/_FileSystemKt$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lokio/internal/_FileSystemKt$b;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/d;)V

    invoke-static {v0}, Lkotlin/sequences/i;->sequence(Lkotlin/jvm/b/p;)Lkotlin/sequences/f;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/Path;

    if-eqz p2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    invoke-virtual {p0, v0, v1}, Lokio/FileSystem;->e(Lokio/Path;Z)V

    goto :goto_18

    :cond_33
    return-void
.end method

.method public static final commonExists(Lokio/FileSystem;Lokio/Path;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->l(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static final commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Z)",
            "Lkotlin/sequences/f<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/internal/_FileSystemKt$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, p2, v1}, Lokio/internal/_FileSystemKt$c;-><init>(Lokio/Path;Lokio/FileSystem;ZLkotlin/coroutines/d;)V

    invoke-static {v0}, Lkotlin/sequences/i;->sequence(Lkotlin/jvm/b/p;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static final commonMetadata(Lokio/FileSystem;Lokio/Path;)Lokio/FileMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->l(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    if-eqz p0, :cond_11

    return-object p0

    :cond_11
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "no such file: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final symlinkTarget(Lokio/FileSystem;Lokio/Path;)Lokio/Path;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokio/FileSystem;->k(Lokio/Path;)Lokio/FileMetadata;

    move-result-object p0

    invoke-virtual {p0}, Lokio/FileMetadata;->d()Lokio/Path;

    move-result-object p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return-object p0

    :cond_16
    invoke-virtual {p1}, Lokio/Path;->k()Lokio/Path;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lokio/Path;->p(Lokio/Path;)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

###### Class okio.internal._FileSystemKt.a (okio.internal._FileSystemKt$a)
.class final Lokio/internal/_FileSystemKt$a;
.super Lkotlin/coroutines/jvm/internal/c;
.source "-FileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/h;Lokio/FileSystem;Lkotlin/collections/j;Lokio/Path;ZZLkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "okio.internal._FileSystemKt"
    f = "-FileSystem.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x71,
        0x84,
        0x8e
    }
    m = "collectRecursively"
    n = {
        "$this$collectRecursively",
        "fileSystem",
        "stack",
        "path",
        "followSymlinks",
        "postorder",
        "$this$collectRecursively",
        "fileSystem",
        "stack",
        "path",
        "followSymlinks",
        "postorder"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "Z$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "Z$0",
        "Z$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:Z

.field g:Z

.field synthetic h:Ljava/lang/Object;

.field i:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lokio/internal/_FileSystemKt$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iput-object p1, p0, Lokio/internal/_FileSystemKt$a;->h:Ljava/lang/Object;

    iget p1, p0, Lokio/internal/_FileSystemKt$a;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lokio/internal/_FileSystemKt$a;->i:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/h;Lokio/FileSystem;Lkotlin/collections/j;Lokio/Path;ZZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class okio.internal._FileSystemKt.b (okio.internal._FileSystemKt$b)
.class final Lokio/internal/_FileSystemKt$b;
.super Lkotlin/coroutines/jvm/internal/h;
.source "-FileSystem.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/_FileSystemKt;->commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/h;",
        "Lkotlin/jvm/b/p<",
        "Lkotlin/sequences/h<",
        "-",
        "Lokio/Path;",
        ">;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "okio.internal._FileSystemKt$commonDeleteRecursively$sequence$1"
    f = "-FileSystem.kt"
    i = {}
    l = {
        0x48
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lokio/FileSystem;

.field final synthetic d:Lokio/Path;


# direct methods
.method constructor <init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lokio/internal/_FileSystemKt$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/_FileSystemKt$b;->c:Lokio/FileSystem;

    iput-object p2, p0, Lokio/internal/_FileSystemKt$b;->d:Lokio/Path;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/h;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lokio/internal/_FileSystemKt$b;

    iget-object v1, p0, Lokio/internal/_FileSystemKt$b;->c:Lokio/FileSystem;

    iget-object v2, p0, Lokio/internal/_FileSystemKt$b;->d:Lokio/Path;

    invoke-direct {v0, v1, v2, p2}, Lokio/internal/_FileSystemKt$b;-><init>(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lokio/internal/_FileSystemKt$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$b;->invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/h<",
            "-",
            "Lokio/Path;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lokio/internal/_FileSystemKt$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lokio/internal/_FileSystemKt$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lokio/internal/_FileSystemKt$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/internal/_FileSystemKt$b;->b:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lkotlin/sequences/h;

    iget-object v4, p0, Lokio/internal/_FileSystemKt$b;->c:Lokio/FileSystem;

    new-instance v5, Lkotlin/collections/j;

    invoke-direct {v5}, Lkotlin/collections/j;-><init>()V

    iget-object v6, p0, Lokio/internal/_FileSystemKt$b;->d:Lokio/Path;

    const/4 v7, 0x0

    const/4 v8, 0x1

    iput v2, p0, Lokio/internal/_FileSystemKt$b;->a:I

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/h;Lokio/FileSystem;Lkotlin/collections/j;Lokio/Path;ZZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class okio.internal._FileSystemKt.c (okio.internal._FileSystemKt$c)
.class final Lokio/internal/_FileSystemKt$c;
.super Lkotlin/coroutines/jvm/internal/h;
.source "-FileSystem.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/_FileSystemKt;->commonListRecursively(Lokio/FileSystem;Lokio/Path;Z)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/h;",
        "Lkotlin/jvm/b/p<",
        "Lkotlin/sequences/h<",
        "-",
        "Lokio/Path;",
        ">;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "okio.internal._FileSystemKt$commonListRecursively$1"
    f = "-FileSystem.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x5d
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "stack"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field private synthetic d:Ljava/lang/Object;

.field final synthetic e:Lokio/Path;

.field final synthetic f:Lokio/FileSystem;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lokio/Path;Lokio/FileSystem;ZLkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Lokio/internal/_FileSystemKt$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    iput-object p2, p0, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iput-boolean p3, p0, Lokio/internal/_FileSystemKt$c;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/h;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lokio/internal/_FileSystemKt$c;

    iget-object v1, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    iget-object v2, p0, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iget-boolean v3, p0, Lokio/internal/_FileSystemKt$c;->g:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lokio/internal/_FileSystemKt$c;-><init>(Lokio/Path;Lokio/FileSystem;ZLkotlin/coroutines/d;)V

    iput-object p1, v0, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$c;->invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/h<",
            "-",
            "Lokio/Path;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/internal/_FileSystemKt$c;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lokio/internal/_FileSystemKt$c;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lokio/internal/_FileSystemKt$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lokio/internal/_FileSystemKt$c;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_26

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lokio/internal/_FileSystemKt$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lokio/internal/_FileSystemKt$c;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/j;

    iget-object v4, p0, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/h;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, p0

    move-object p1, v3

    move-object v10, v4

    goto :goto_47

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/h;

    new-instance v1, Lkotlin/collections/j;

    invoke-direct {v1}, Lkotlin/collections/j;-><init>()V

    iget-object v3, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    invoke-virtual {v1, v3}, Lkotlin/collections/j;->addLast(Ljava/lang/Object;)V

    iget-object v3, p0, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iget-object v4, p0, Lokio/internal/_FileSystemKt$c;->e:Lokio/Path;

    invoke-virtual {v3, v4}, Lokio/FileSystem;->h(Lokio/Path;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v11, p0

    move-object v10, p1

    move-object p1, v1

    move-object v1, v3

    :cond_47
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lokio/Path;

    iget-object v4, v11, Lokio/internal/_FileSystemKt$c;->f:Lokio/FileSystem;

    iget-boolean v7, v11, Lokio/internal/_FileSystemKt$c;->g:Z

    const/4 v8, 0x0

    iput-object v10, v11, Lokio/internal/_FileSystemKt$c;->d:Ljava/lang/Object;

    iput-object p1, v11, Lokio/internal/_FileSystemKt$c;->a:Ljava/lang/Object;

    iput-object v1, v11, Lokio/internal/_FileSystemKt$c;->b:Ljava/lang/Object;

    iput v2, v11, Lokio/internal/_FileSystemKt$c;->c:I

    move-object v3, v10

    move-object v5, p1

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lokio/internal/_FileSystemKt;->collectRecursively(Lkotlin/sequences/h;Lokio/FileSystem;Lkotlin/collections/j;Lokio/Path;ZZLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_47

    return-object v0

    :cond_6b
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
