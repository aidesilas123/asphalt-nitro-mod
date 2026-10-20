###### Class com.json.InterstitialAdManagerData (com.ironsource.n7)
.class public final Lcom/ironsource/n7;
.super Lcom/ironsource/l;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003J\u0011\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u000c\u001a\u00020\u00002\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\r\u001a\u00020\u0002H\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u00d6\u0001J\u0013\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00048\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u000b\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/ironsource/n7;",
        "Lcom/ironsource/l;",
        "",
        "t",
        "",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "u",
        "Lcom/ironsource/p7;",
        "v",
        "userId",
        "providerList",
        "configs",
        "a",
        "toString",
        "",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "Ljava/lang/String;",
        "p",
        "()Ljava/lang/String;",
        "Ljava/util/List;",
        "j",
        "()Ljava/util/List;",
        "Lcom/ironsource/p7;",
        "w",
        "()Lcom/ironsource/p7;",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/p7;)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final t:Ljava/lang/String;

.field private final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Lcom/ironsource/p7;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/p7;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/p7;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v15, p3

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v1, "configs"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->g()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v5

    move-object v4, v5

    const-string v6, "configs.interstitialAuctionSettings"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->c()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->d()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->f()Z

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->b()I

    move-result v8

    new-instance v16, Lcom/ironsource/y;

    move-object/from16 v10, v16

    sget-object v17, Lcom/ironsource/y$a;->a:Lcom/ironsource/y$a;

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->g()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/a;->j()J

    move-result-wide v18

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->g()Lcom/ironsource/mediationsdk/utils/a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/mediationsdk/utils/a;->b()J

    move-result-wide v20

    const-wide/16 v22, -0x1

    invoke-direct/range {v16 .. v23}, Lcom/ironsource/y;-><init>(Lcom/ironsource/y$a;JJJ)V

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->h()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->i()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->l()Z

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->o()Z

    move-result v16

    move/from16 v15, v16

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->n()Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/ironsource/p7;->m()Z

    move-result v17

    const/16 v18, -0x1

    move/from16 v9, v18

    const/16 v18, 0x0

    const/high16 v19, 0x10000

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v20}, Lcom/ironsource/l;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/a;IIZIILcom/ironsource/y;ZJZZZZZILkotlin/jvm/internal/n;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/ironsource/n7;->t:Ljava/lang/String;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/ironsource/n7;->u:Ljava/util/List;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/n7;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/p7;ILjava/lang/Object;)Lcom/ironsource/n7;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_8

    invoke-virtual {p0}, Lcom/ironsource/n7;->p()Ljava/lang/String;

    move-result-object p1

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_10

    invoke-virtual {p0}, Lcom/ironsource/n7;->j()Ljava/util/List;

    move-result-object p2

    :cond_10
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_16

    iget-object p3, p0, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/n7;->a(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/p7;)Lcom/ironsource/n7;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/p7;)Lcom/ironsource/n7;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/p7;",
            ")",
            "Lcom/ironsource/n7;"
        }
    .end annotation

    const-string v0, "configs"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/n7;

    invoke-direct {v0, p1, p2, p3}, Lcom/ironsource/n7;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/ironsource/p7;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/ironsource/n7;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/n7;

    invoke-virtual {p0}, Lcom/ironsource/n7;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/n7;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    invoke-virtual {p0}, Lcom/ironsource/n7;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/n7;->j()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    iget-object p1, p1, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public hashCode()I
    .registers 4

    invoke-virtual {p0}, Lcom/ironsource/n7;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p0}, Lcom/ironsource/n7;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_11
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/ironsource/n7;->j()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1a

    goto :goto_22

    :cond_1a
    invoke-virtual {p0}, Lcom/ironsource/n7;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/n7;->u:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n7;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/n7;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterstitialAdManagerData(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/n7;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", providerList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/n7;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", configs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ironsource/n7;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/ironsource/p7;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    return-object v0
.end method

.method public final w()Lcom/ironsource/p7;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/n7;->v:Lcom/ironsource/p7;

    return-object v0
.end method
