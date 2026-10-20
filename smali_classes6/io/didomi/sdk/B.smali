###### Class io.didomi.drawable.B (io.didomi.sdk.B)
.class public final Lio/didomi/sdk/B;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010 \n\u0002\u0008\u0002\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0004*\u00020\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\u0011\u0010\u0008\u001a\u00020\u0007*\u00020\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001a\u0011\u0010\u000b\u001a\u00020\n*\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\u0011\u0010\u000e\u001a\u00020\r*\u00020\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u001d\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0011*\u0008\u0012\u0004\u0012\u00020\u00000\u0010\u00a2\u0006\u0004\u0008\u0002\u0010\u0012\u001a\u001d\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011*\u0008\u0012\u0004\u0012\u00020\u00000\u0010\u00a2\u0006\u0004\u0008\u000e\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/didomi/sdk/A;",
        "Lio/didomi/sdk/models/DataCategory;",
        "a",
        "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/DataCategory;",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "c",
        "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/InternalPurpose;",
        "Lio/didomi/sdk/models/SpecialFeature;",
        "d",
        "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/SpecialFeature;",
        "Lio/didomi/sdk/models/SpecialPurpose;",
        "e",
        "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/SpecialPurpose;",
        "Lio/didomi/sdk/models/Feature;",
        "b",
        "(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/Feature;",
        "",
        "",
        "(Ljava/util/Collection;)Ljava/util/List;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/DataCategory;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/DataCategory;

    invoke-virtual {p0}, Lio/didomi/sdk/A;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_10

    move-object v1, v2

    :cond_10
    invoke-virtual {p0}, Lio/didomi/sdk/A;->f()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    move-object v3, v2

    :cond_17
    invoke-virtual {p0}, Lio/didomi/sdk/A;->a()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v2, p0

    :goto_1f
    invoke-direct {v0, v1, v3, v2}, Lio/didomi/sdk/models/DataCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final a(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/A;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/A;

    invoke-static {v1}, Lio/didomi/sdk/B;->c(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public static final b(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/Feature;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/Feature;

    invoke-virtual {p0}, Lio/didomi/sdk/A;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_11

    move-object v3, v2

    goto :goto_12

    :cond_11
    move-object v3, v1

    :goto_12
    invoke-virtual {p0}, Lio/didomi/sdk/A;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/A;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move-object v5, v2

    goto :goto_1f

    :cond_1e
    move-object v5, v1

    :goto_1f
    invoke-virtual {p0}, Lio/didomi/sdk/A;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move-object v6, v2

    goto :goto_28

    :cond_27
    move-object v6, v1

    :goto_28
    invoke-virtual {p0}, Lio/didomi/sdk/A;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lio/didomi/sdk/A;->e()Ljava/util/List;

    move-result-object p0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/models/Feature;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static final b(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/A;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/SpecialFeature;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/A;

    invoke-static {v1}, Lio/didomi/sdk/B;->d(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/SpecialFeature;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method public static final c(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 21

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/A;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_13

    move-object v4, v3

    goto :goto_14

    :cond_13
    move-object v4, v2

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/A;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/A;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    move-object v6, v3

    goto :goto_21

    :cond_20
    move-object v6, v2

    :goto_21
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/A;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    move-object v7, v3

    goto :goto_2a

    :cond_29
    move-object v7, v2

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/A;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    move-object/from16 v19, v3

    goto :goto_35

    :cond_33
    move-object/from16 v19, v2

    :goto_35
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/A;->e()Ljava/util/List;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/A;->g()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3dc0

    const/16 v18, 0x0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v19

    invoke-direct/range {v2 .. v18}, Lio/didomi/sdk/models/InternalPurpose;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public static final d(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/SpecialFeature;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/SpecialFeature;

    invoke-virtual {p0}, Lio/didomi/sdk/A;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_11

    move-object v3, v2

    goto :goto_12

    :cond_11
    move-object v3, v1

    :goto_12
    invoke-virtual {p0}, Lio/didomi/sdk/A;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/A;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move-object v5, v2

    goto :goto_1f

    :cond_1e
    move-object v5, v1

    :goto_1f
    invoke-virtual {p0}, Lio/didomi/sdk/A;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move-object v6, v2

    goto :goto_28

    :cond_27
    move-object v6, v1

    :goto_28
    invoke-virtual {p0}, Lio/didomi/sdk/A;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lio/didomi/sdk/A;->e()Ljava/util/List;

    move-result-object p0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/models/SpecialFeature;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static final e(Lio/didomi/sdk/A;)Lio/didomi/sdk/models/SpecialPurpose;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/SpecialPurpose;

    invoke-virtual {p0}, Lio/didomi/sdk/A;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_11

    move-object v3, v2

    goto :goto_12

    :cond_11
    move-object v3, v1

    :goto_12
    invoke-virtual {p0}, Lio/didomi/sdk/A;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/A;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move-object v5, v2

    goto :goto_1f

    :cond_1e
    move-object v5, v1

    :goto_1f
    invoke-virtual {p0}, Lio/didomi/sdk/A;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move-object v6, v2

    goto :goto_28

    :cond_27
    move-object v6, v1

    :goto_28
    invoke-virtual {p0}, Lio/didomi/sdk/A;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lio/didomi/sdk/A;->e()Ljava/util/List;

    move-result-object p0

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/models/SpecialPurpose;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
