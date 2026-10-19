###### Class com.json.l (com.ironsource.l)
.class public Lcom/ironsource/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/l$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000f\u0008\u0016\u0018\u0000 \u00072\u00020\u0001:\u0001\u0005B\u009b\u0001\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u001c\u001a\u00020\u0018\u0012\u0006\u0010#\u001a\u00020\u001d\u0012\u0006\u0010&\u001a\u00020\u001d\u0012\u0006\u0010+\u001a\u00020\u0006\u0012\u0006\u0010-\u001a\u00020\u001d\u0012\u0006\u0010.\u001a\u00020\u001d\u0012\u0006\u00102\u001a\u00020/\u0012\u0006\u00104\u001a\u00020\u0006\u0012\u0006\u00109\u001a\u000205\u0012\u0006\u0010;\u001a\u00020\u0006\u0012\u0006\u0010=\u001a\u00020\u0006\u0012\u0006\u0010?\u001a\u00020\u0006\u0012\u0006\u0010@\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010A\u001a\u00020\u0006\u00a2\u0006\u0004\u0008B\u0010CJ\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0002R\u0017\u0010\r\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00128\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0019\u0010\u001bR\"\u0010#\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\u0005\u0010\"R\u0017\u0010&\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u001f\u001a\u0004\u0008%\u0010!R\"\u0010+\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\'\u0010(\u001a\u0004\u0008\u0013\u0010)\"\u0004\u0008\u0005\u0010*R\u0017\u0010-\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010\u001f\u001a\u0004\u0008\'\u0010!R\u0017\u0010.\u001a\u00020\u001d8\u0006\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u001f\u001a\u0004\u0008\u0005\u0010!R\u0017\u00102\u001a\u00020/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u00100\u001a\u0004\u0008,\u00101R\u0017\u00104\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u00083\u0010(\u001a\u0004\u0008\u001e\u0010)R\u0017\u00109\u001a\u0002058\u0006\u00a2\u0006\u000c\n\u0004\u00086\u00107\u001a\u0004\u0008$\u00108R\u0017\u0010;\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008:\u0010(\u001a\u0004\u00083\u0010)R\u0017\u0010=\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008%\u0010(\u001a\u0004\u0008<\u0010)R\u0017\u0010?\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008>\u0010(\u001a\u0004\u0008>\u0010)R\u0017\u0010@\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010(\u001a\u0004\u00086\u0010)R\"\u0010A\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010(\u001a\u0004\u0008:\u0010)\"\u0004\u0008\u000b\u0010*\u00a8\u0006D"
    }
    d2 = {
        "Lcom/ironsource/l;",
        "",
        "",
        "instanceName",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "a",
        "",
        "r",
        "s",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "b",
        "()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "adUnit",
        "Ljava/lang/String;",
        "p",
        "()Ljava/lang/String;",
        "userId",
        "",
        "c",
        "Ljava/util/List;",
        "j",
        "()Ljava/util/List;",
        "providerList",
        "Lcom/ironsource/mediationsdk/utils/a;",
        "d",
        "Lcom/ironsource/mediationsdk/utils/a;",
        "()Lcom/ironsource/mediationsdk/utils/a;",
        "auctionSettings",
        "",
        "e",
        "I",
        "i",
        "()I",
        "(I)V",
        "maxSmashesToLoad",
        "f",
        "n",
        "smashLoadTimeout",
        "g",
        "Z",
        "()Z",
        "(Z)V",
        "advancedLoading",
        "h",
        "delayLoadFailure",
        "adExpirationInMinutes",
        "Lcom/ironsource/y;",
        "Lcom/ironsource/y;",
        "()Lcom/ironsource/y;",
        "loadingData",
        "k",
        "collectBiddingDataAsyncEnabled",
        "",
        "l",
        "J",
        "()J",
        "collectBiddingDataTimeout",
        "m",
        "providersParallelInit",
        "q",
        "waitUntilAllProvidersFinishInit",
        "o",
        "threadPerManager",
        "sharedManagersThread",
        "showPriorityEnabled",
        "<init>",
        "(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/a;IIZIILcom/ironsource/y;ZJZZZZZ)V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final r:Lcom/ironsource/l$a;

.field public static final s:I = -0x1


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/ironsource/mediationsdk/utils/a;

.field private e:I

.field private final f:I

.field private g:Z

.field private final h:I

.field private final i:I

.field private final j:Lcom/ironsource/y;

.field private final k:Z

.field private final l:J

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/l$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/ironsource/l;->r:Lcom/ironsource/l$a;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/a;IIZIILcom/ironsource/y;ZJZZZZZ)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
            ">;",
            "Lcom/ironsource/mediationsdk/utils/a;",
            "IIZII",
            "Lcom/ironsource/y;",
            "ZJZZZZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p10

    const-string v4, "adUnit"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "auctionSettings"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "loadingData"

    invoke-static {p10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/ironsource/l;->a:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-object v1, p2

    iput-object v1, v0, Lcom/ironsource/l;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/ironsource/l;->c:Ljava/util/List;

    iput-object v2, v0, Lcom/ironsource/l;->d:Lcom/ironsource/mediationsdk/utils/a;

    move v1, p5

    iput v1, v0, Lcom/ironsource/l;->e:I

    move v1, p6

    iput v1, v0, Lcom/ironsource/l;->f:I

    move v1, p7

    iput-boolean v1, v0, Lcom/ironsource/l;->g:Z

    move v1, p8

    iput v1, v0, Lcom/ironsource/l;->h:I

    move v1, p9

    iput v1, v0, Lcom/ironsource/l;->i:I

    iput-object v3, v0, Lcom/ironsource/l;->j:Lcom/ironsource/y;

    move/from16 v1, p11

    iput-boolean v1, v0, Lcom/ironsource/l;->k:Z

    move-wide/from16 v1, p12

    iput-wide v1, v0, Lcom/ironsource/l;->l:J

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/ironsource/l;->m:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/ironsource/l;->n:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/ironsource/l;->o:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/ironsource/l;->p:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/ironsource/l;->q:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/a;IIZIILcom/ironsource/y;ZJZZZZZILkotlin/jvm/internal/n;)V
    .registers 41

    const/high16 v0, 0x10000

    and-int v0, p19, v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/16 v19, 0x0

    goto :goto_c

    :cond_a
    move/from16 v19, p18

    :goto_c
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    invoke-direct/range {v1 .. v19}, Lcom/ironsource/l;-><init>(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Ljava/lang/String;Ljava/util/List;Lcom/ironsource/mediationsdk/utils/a;IIZIILcom/ironsource/y;ZJZZZZZ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/ironsource/l;->i:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .registers 6

    const-string v0, "instanceName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/l;->j()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderInstanceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v1, v2

    :cond_28
    check-cast v1, Lcom/ironsource/mediationsdk/model/NetworkSettings;

    :cond_2a
    return-object v1
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/ironsource/l;->e:I

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/l;->g:Z

    return-void
.end method

.method public final b()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/l;->a:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/l;->q:Z

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/l;->g:Z

    return v0
.end method

.method public final d()Lcom/ironsource/mediationsdk/utils/a;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/l;->d:Lcom/ironsource/mediationsdk/utils/a;

    return-object v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/l;->k:Z

    return v0
.end method

.method public final f()J
    .registers 3

    iget-wide v0, p0, Lcom/ironsource/l;->l:J

    return-wide v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/ironsource/l;->h:I

    return v0
.end method

.method public final h()Lcom/ironsource/y;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/l;->j:Lcom/ironsource/y;

    return-object v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/ironsource/l;->e:I

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

    iget-object v0, p0, Lcom/ironsource/l;->c:Ljava/util/List;

    return-object v0
.end method

.method public final k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/l;->m:Z

    return v0
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/l;->p:Z

    return v0
.end method

.method public final m()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/l;->q:Z

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lcom/ironsource/l;->f:I

    return v0
.end method

.method public final o()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/l;->o:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ironsource/l;->n:Z

    return v0
.end method

.method public final r()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/l;->d:Lcom/ironsource/mediationsdk/utils/a;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/utils/a;->g()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final s()Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "parallelLoad"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/ironsource/l;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "bidderExclusive"

    aput-object v3, v1, v2

    iget-boolean v2, p0, Lcom/ironsource/l;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    const-string v3, "showPriorityEnabled"

    aput-object v3, v1, v2

    iget-boolean v2, p0, Lcom/ironsource/l;->q:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "%s: %d, %s: %b, %s: %b"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(\n        Locale.g\u2026showPriorityEnabled\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.json.l.Companion (com.ironsource.l$a)
.class public final Lcom/ironsource/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/ironsource/l$a;",
        "",
        "",
        "DISABLED",
        "I",
        "<init>",
        "()V",
        "mediationsdk_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/l$a;-><init>()V

    return-void
.end method
