###### Class io.didomi.drawable.D (io.didomi.sdk.D)
.class public final Lio/didomi/sdk/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u001d\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005*\u0008\u0012\u0004\u0012\u00020\u00000\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006\u001a\u0013\u0010\u0002\u001a\u00020\u0008*\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\t\u001a\u001f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0005*\u0008\u0012\u0004\u0012\u00020\n0\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0006\u001a\u0013\u0010\u0002\u001a\u00020\u000b*\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/didomi/sdk/C;",
        "Lio/didomi/sdk/models/InternalVendor;",
        "a",
        "(Lio/didomi/sdk/C;)Lio/didomi/sdk/models/InternalVendor;",
        "",
        "",
        "(Ljava/util/Collection;)Ljava/util/List;",
        "Lio/didomi/sdk/C$a;",
        "Lio/didomi/sdk/models/InternalVendor$a;",
        "(Lio/didomi/sdk/C$a;)Lio/didomi/sdk/models/InternalVendor$a;",
        "Lio/didomi/sdk/C$c;",
        "Lio/didomi/sdk/Vendor$Url;",
        "b",
        "(Lio/didomi/sdk/C$c;)Lio/didomi/sdk/Vendor$Url;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private static final a(Lio/didomi/sdk/C$c;)Lio/didomi/sdk/Vendor$Url;
    .registers 4

    new-instance v0, Lio/didomi/sdk/Vendor$Url;

    invoke-virtual {p0}, Lio/didomi/sdk/C$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/C$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/C$c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lio/didomi/sdk/Vendor$Url;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final a(Lio/didomi/sdk/C$a;)Lio/didomi/sdk/models/InternalVendor$a;
    .registers 4

    new-instance v0, Lio/didomi/sdk/models/InternalVendor$a;

    invoke-virtual {p0}, Lio/didomi/sdk/C$a;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lio/didomi/sdk/C$a;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/C$a;->b()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lio/didomi/sdk/models/InternalVendor$a;-><init>(Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public static final a(Lio/didomi/sdk/C;)Lio/didomi/sdk/models/InternalVendor;
    .registers 25

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->k()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-nez v0, :cond_11

    move-object v4, v2

    goto :goto_12

    :cond_11
    move-object v4, v0

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->j()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    move-object v0, v2

    :cond_1d
    invoke-static {v0}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move-object v7, v2

    goto :goto_32

    :cond_31
    move-object v7, v0

    :goto_32
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->o()Lio/didomi/sdk/C$b;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    invoke-static {v0}, Lio/didomi/sdk/E;->a(Lio/didomi/sdk/C$b;)Lio/didomi/sdk/Vendor$Namespaces;

    move-result-object v0

    move-object v8, v0

    goto :goto_40

    :cond_3f
    move-object v8, v2

    :goto_40
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->q()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4a

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_4a
    invoke-static {v0}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_58

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_58
    move-object v12, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->s()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_63

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_63
    move-object v13, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->l()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6e

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_6e
    invoke-static {v0}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7c

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_7c
    move-object v14, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->r()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_87

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_87
    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->a()Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->u()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->e()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->b()Ljava/util/Set;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->c()Lio/didomi/sdk/C$a;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-static {v0}, Lio/didomi/sdk/D;->a(Lio/didomi/sdk/C$a;)Lio/didomi/sdk/models/InternalVendor$a;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_ad

    :cond_ab
    move-object/from16 v20, v2

    :goto_ad
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ba

    invoke-static {v0}, Lio/didomi/sdk/D;->b(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_bc

    :cond_ba
    move-object/from16 v21, v2

    :goto_bc
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->f()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->d()Ljava/lang/String;

    move-result-object v23

    new-instance v0, Lio/didomi/sdk/models/InternalVendor;

    move-object v3, v0

    invoke-direct/range {v3 .. v23}, Lio/didomi/sdk/models/InternalVendor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;Ljava/util/Set;Lio/didomi/sdk/models/InternalVendor$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/C;->g()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_d4

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_d4
    invoke-static {v1}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/models/InternalVendor;->setEssentialPurposeIds(Ljava/util/List;)V

    return-object v0
.end method

.method public static final a(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/C;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalVendor;",
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

    check-cast v1, Lio/didomi/sdk/C;

    invoke-static {v1}, Lio/didomi/sdk/D;->a(Lio/didomi/sdk/C;)Lio/didomi/sdk/models/InternalVendor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object v0
.end method

.method private static final b(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/C$c;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/Vendor$Url;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/C$c;

    invoke-static {v1}, Lio/didomi/sdk/D;->a(Lio/didomi/sdk/C$c;)Lio/didomi/sdk/Vendor$Url;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    return-object v0
.end method
