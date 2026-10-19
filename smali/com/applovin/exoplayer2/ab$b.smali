###### Class com.applovin.exoplayer2.ab.b (com.applovin.exoplayer2.ab$b)
.class public final Lcom/applovin/exoplayer2/ab$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private cb:Lcom/applovin/exoplayer2/ac;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private dZ:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ef:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private eg:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private eh:J

.field private ei:J

.field private ej:Z

.field private ek:Z

.field private el:Z

.field private em:Lcom/applovin/exoplayer2/ab$d$a;

.field private en:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private eo:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ep:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private eq:Lcom/applovin/exoplayer2/ab$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private er:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private es:Lcom/applovin/exoplayer2/ab$e$a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/applovin/exoplayer2/ab$b;->ei:J

    new-instance v0, Lcom/applovin/exoplayer2/ab$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/ab$d$a;-><init>(Lcom/applovin/exoplayer2/ab$1;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->em:Lcom/applovin/exoplayer2/ab$d$a;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->en:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->ep:Ljava/util/List;

    new-instance v0, Lcom/applovin/exoplayer2/ab$e$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/ab$e$a;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->es:Lcom/applovin/exoplayer2/ab$e$a;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/ab;)V
    .registers 5

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ab$b;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->ec:Lcom/applovin/exoplayer2/ab$c;

    iget-wide v1, v0, Lcom/applovin/exoplayer2/ab$c;->eu:J

    iput-wide v1, p0, Lcom/applovin/exoplayer2/ab$b;->ei:J

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/ab$c;->ev:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ab$b;->ej:Z

    iget-boolean v1, v0, Lcom/applovin/exoplayer2/ab$c;->ew:Z

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/ab$b;->ek:Z

    iget-wide v1, v0, Lcom/applovin/exoplayer2/ab$c;->et:J

    iput-wide v1, p0, Lcom/applovin/exoplayer2/ab$b;->eh:J

    iget-boolean v0, v0, Lcom/applovin/exoplayer2/ab$c;->ex:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/ab$b;->el:Z

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->dZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->dZ:Ljava/lang/String;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->cb:Lcom/applovin/exoplayer2/ac;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->cb:Lcom/applovin/exoplayer2/ac;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab;->eb:Lcom/applovin/exoplayer2/ab$e;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ab$e;->bZ()Lcom/applovin/exoplayer2/ab$e$a;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->es:Lcom/applovin/exoplayer2/ab$e$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ab;->ea:Lcom/applovin/exoplayer2/ab$f;

    if-eqz p1, :cond_5a

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$f;->eo:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->eo:Ljava/lang/String;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$f;->eg:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->eg:Ljava/lang/String;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$f;->ef:Landroid/net/Uri;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->ef:Landroid/net/Uri;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$f;->en:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->en:Ljava/util/List;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$f;->ep:Ljava/util/List;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->ep:Ljava/util/List;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$f;->er:Ljava/lang/Object;

    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->er:Ljava/lang/Object;

    iget-object v0, p1, Lcom/applovin/exoplayer2/ab$f;->eL:Lcom/applovin/exoplayer2/ab$d;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/ab$d;->bX()Lcom/applovin/exoplayer2/ab$d$a;

    move-result-object v0

    goto :goto_54

    :cond_4e
    new-instance v0, Lcom/applovin/exoplayer2/ab$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/ab$d$a;-><init>(Lcom/applovin/exoplayer2/ab$1;)V

    :goto_54
    iput-object v0, p0, Lcom/applovin/exoplayer2/ab$b;->em:Lcom/applovin/exoplayer2/ab$d$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/ab$f;->eq:Lcom/applovin/exoplayer2/ab$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$b;->eq:Lcom/applovin/exoplayer2/ab$a;

    :cond_5a
    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/ab;Lcom/applovin/exoplayer2/ab$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ab$b;-><init>(Lcom/applovin/exoplayer2/ab;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/net/Uri;)Lcom/applovin/exoplayer2/ab$b;
    .registers 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$b;->ef:Landroid/net/Uri;

    return-object p0
.end method

.method public bV()Lcom/applovin/exoplayer2/ab;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/ab$b;->em:Lcom/applovin/exoplayer2/ab$d$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ab$d$a;->a(Lcom/applovin/exoplayer2/ab$d$a;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/applovin/exoplayer2/ab$b;->em:Lcom/applovin/exoplayer2/ab$d$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/ab$d$a;->b(Lcom/applovin/exoplayer2/ab$d$a;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v3, v0, Lcom/applovin/exoplayer2/ab$b;->ef:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_43

    new-instance v12, Lcom/applovin/exoplayer2/ab$f;

    iget-object v4, v0, Lcom/applovin/exoplayer2/ab$b;->eg:Ljava/lang/String;

    iget-object v2, v0, Lcom/applovin/exoplayer2/ab$b;->em:Lcom/applovin/exoplayer2/ab$d$a;

    invoke-static {v2}, Lcom/applovin/exoplayer2/ab$d$a;->b(Lcom/applovin/exoplayer2/ab$d$a;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_30

    iget-object v1, v0, Lcom/applovin/exoplayer2/ab$b;->em:Lcom/applovin/exoplayer2/ab$d$a;

    invoke-virtual {v1}, Lcom/applovin/exoplayer2/ab$d$a;->bY()Lcom/applovin/exoplayer2/ab$d;

    move-result-object v1

    :cond_30
    move-object v5, v1

    iget-object v6, v0, Lcom/applovin/exoplayer2/ab$b;->eq:Lcom/applovin/exoplayer2/ab$a;

    iget-object v7, v0, Lcom/applovin/exoplayer2/ab$b;->en:Ljava/util/List;

    iget-object v8, v0, Lcom/applovin/exoplayer2/ab$b;->eo:Ljava/lang/String;

    iget-object v9, v0, Lcom/applovin/exoplayer2/ab$b;->ep:Ljava/util/List;

    iget-object v10, v0, Lcom/applovin/exoplayer2/ab$b;->er:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/applovin/exoplayer2/ab$f;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/exoplayer2/ab$d;Lcom/applovin/exoplayer2/ab$a;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lcom/applovin/exoplayer2/ab$1;)V

    move-object/from16 v16, v12

    goto :goto_45

    :cond_43
    move-object/from16 v16, v1

    :goto_45
    new-instance v1, Lcom/applovin/exoplayer2/ab;

    iget-object v2, v0, Lcom/applovin/exoplayer2/ab$b;->dZ:Ljava/lang/String;

    if-eqz v2, :cond_4c

    goto :goto_4e

    :cond_4c
    const-string v2, ""

    :goto_4e
    move-object v14, v2

    new-instance v15, Lcom/applovin/exoplayer2/ab$c;

    iget-wide v3, v0, Lcom/applovin/exoplayer2/ab$b;->eh:J

    iget-wide v5, v0, Lcom/applovin/exoplayer2/ab$b;->ei:J

    iget-boolean v7, v0, Lcom/applovin/exoplayer2/ab$b;->ej:Z

    iget-boolean v8, v0, Lcom/applovin/exoplayer2/ab$b;->ek:Z

    iget-boolean v9, v0, Lcom/applovin/exoplayer2/ab$b;->el:Z

    const/4 v10, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lcom/applovin/exoplayer2/ab$c;-><init>(JJZZZLcom/applovin/exoplayer2/ab$1;)V

    iget-object v2, v0, Lcom/applovin/exoplayer2/ab$b;->es:Lcom/applovin/exoplayer2/ab$e$a;

    invoke-virtual {v2}, Lcom/applovin/exoplayer2/ab$e$a;->ca()Lcom/applovin/exoplayer2/ab$e;

    move-result-object v17

    iget-object v2, v0, Lcom/applovin/exoplayer2/ab$b;->cb:Lcom/applovin/exoplayer2/ac;

    if-eqz v2, :cond_6b

    goto :goto_6d

    :cond_6b
    sget-object v2, Lcom/applovin/exoplayer2/ac;->eM:Lcom/applovin/exoplayer2/ac;

    :goto_6d
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v19}, Lcom/applovin/exoplayer2/ab;-><init>(Ljava/lang/String;Lcom/applovin/exoplayer2/ab$c;Lcom/applovin/exoplayer2/ab$f;Lcom/applovin/exoplayer2/ab$e;Lcom/applovin/exoplayer2/ac;Lcom/applovin/exoplayer2/ab$1;)V

    return-object v1
.end method

.method public e(Ljava/lang/Object;)Lcom/applovin/exoplayer2/ab$b;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$b;->er:Ljava/lang/Object;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/applovin/exoplayer2/ab$b;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$b;->dZ:Ljava/lang/String;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/applovin/exoplayer2/ab$b;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/ab$b;->eo:Ljava/lang/String;

    return-object p0
.end method
