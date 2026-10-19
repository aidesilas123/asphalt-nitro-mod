###### Class com.json.adqualitysdk.sdk.i.hu (com.ironsource.adqualitysdk.sdk.i.hu)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hu$b;,
        Lcom/ironsource/adqualitysdk/sdk/i/hu$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/hr;

.field private c:Lcom/ironsource/adqualitysdk/sdk/i/hi;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hi;)Lcom/ironsource/adqualitysdk/sdk/i/hi;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c:Lcom/ironsource/adqualitysdk/sdk/i/hi;

    return-object p1
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/hr;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->b:Lcom/ironsource/adqualitysdk/sdk/i/hr;

    return-object p1
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    return-object p0
.end method

.method private static d(II)Z
    .registers 2

    if-lt p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ﻐ()Lcom/ironsource/adqualitysdk/sdk/i/hi;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c:Lcom/ironsource/adqualitysdk/sdk/i/hi;

    return-object v0
.end method

.method public final ﻐ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method

.method public final ﻛ()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->b(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)Z

    move-result v0

    return v0
.end method

.method public final ﻛ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->q(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method

.method public final ｋ()I
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    return v0
.end method

.method public final ｋ(Ljava/lang/Class;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    return-object p1
.end method

.method public final ｋ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method

.method public final ﾇ(I)I
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->u(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hr;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->b:Lcom/ironsource/adqualitysdk/sdk/i/hr;

    return-object v0
.end method

.method public final ﾒ()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->o(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(I)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->d(II)Z

    move-result p1

    return p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.hu.a (com.ironsource.adqualitysdk.sdk.i.hu$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/hu$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/Class;

.field private c:Ljava/lang/Class;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f:I

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g:I

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h:I

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j:I

    iput v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j:I

    return p1
.end method

.method static synthetic b(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l:Z

    return p0
.end method

.method static synthetic c(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k:I

    return p0
.end method

.method static synthetic d(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i:I

    return p0
.end method

.method static synthetic e(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->e:I

    return p1
.end method

.method static synthetic f(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j:I

    return p0
.end method

.method static synthetic g(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g:I

    return p0
.end method

.method static synthetic h(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k:I

    return p1
.end method

.method static synthetic i(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic j(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic k(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->e:I

    return p0
.end method

.method static synthetic l(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i:I

    return p1
.end method

.method static synthetic m(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->b:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic n(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g:I

    return p1
.end method

.method static synthetic o(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic p(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l:Z

    return p1
.end method

.method static synthetic q(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f:I

    return p0
.end method

.method static synthetic r(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h:I

    return p1
.end method

.method static synthetic s(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->c:Ljava/lang/Class;

    return-object p1
.end method

.method static synthetic t(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic u(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h:I

    return p0
.end method

.method static synthetic v(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f:I

    return p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_a1

    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_11

    goto/16 :goto_a1

    :cond_11
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->e:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->e:I

    if-eq v2, v3, :cond_1a

    return v1

    :cond_1a
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f:I

    if-eq v2, v3, :cond_21

    return v1

    :cond_21
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g:I

    if-eq v2, v3, :cond_28

    return v1

    :cond_28
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h:I

    if-eq v2, v3, :cond_2f

    return v1

    :cond_2f
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i:I

    if-eq v2, v3, :cond_36

    return v1

    :cond_36
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j:I

    if-eq v2, v3, :cond_3d

    return v1

    :cond_3d
    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k:I

    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k:I

    if-eq v2, v3, :cond_44

    return v1

    :cond_44
    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l:Z

    iget-boolean v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l:Z

    if-eq v2, v3, :cond_4b

    return v1

    :cond_4b
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a:Ljava/lang/Class;

    if-eqz v2, :cond_58

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_5c

    :cond_58
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a:Ljava/lang/Class;

    if-eqz v2, :cond_5d

    :goto_5c
    return v1

    :cond_5d
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->b:Ljava/lang/Class;

    if-eqz v2, :cond_6a

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->b:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_6e

    :cond_6a
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->b:Ljava/lang/Class;

    if-eqz v2, :cond_6f

    :goto_6e
    return v1

    :cond_6f
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->c:Ljava/lang/Class;

    if-eqz v2, :cond_7c

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    goto :goto_80

    :cond_7c
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->c:Ljava/lang/Class;

    if-eqz v2, :cond_81

    :goto_80
    return v1

    :cond_81
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d:Ljava/util/List;

    if-eqz v2, :cond_8e

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_93

    goto :goto_92

    :cond_8e
    iget-object v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d:Ljava/util/List;

    if-eqz v2, :cond_93

    :goto_92
    return v1

    :cond_93
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->m:Ljava/lang/Object;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->m:Ljava/lang/Object;

    if-eqz v2, :cond_9e

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9e
    if-nez p1, :cond_a1

    return v0

    :cond_a1
    :goto_a1
    return v1
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->b:Ljava/lang/Class;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->c:Ljava/lang/Class;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->d:Ljava/util/List;

    if-eqz v2, :cond_30

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->k:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->m:Ljava/lang/Object;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_64
    add-int/2addr v0, v1

    return v0
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.hu.b (com.ironsource.adqualitysdk.sdk.i.hu$b)
.class public final Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hu;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;-><init>(B)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    return-void
.end method


# virtual methods
.method public final ﱡ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻐ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻐ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hi;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hi;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hu;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->b(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hr;)Lcom/ironsource/adqualitysdk/sdk/i/hr;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->a(Lcom/ironsource/adqualitysdk/sdk/i/hu;Lcom/ironsource/adqualitysdk/sdk/i/hi;)Lcom/ironsource/adqualitysdk/sdk/i/hi;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->j(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/util/List;)Ljava/util/List;

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object p3

    invoke-static {p3, p4}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->e(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    iget-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->m(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object p1

    if-eqz p2, :cond_36

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    :goto_37
    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->s(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Class;)Ljava/lang/Class;

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    return-object p1
.end method

.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/adqualitysdk/sdk/i/hr;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ironsource/adqualitysdk/sdk/i/hu;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hr;Lcom/ironsource/adqualitysdk/sdk/i/hi;Ljava/util/List;I)Lcom/ironsource/adqualitysdk/sdk/i/hu;

    move-result-object p1

    return-object p1
.end method

.method public final ﻛ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->h(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﻛ(Ljava/lang/Object;)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->t(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final ﻛ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->p(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;Z)Z

    return-object p0
.end method

.method public final ｋ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->n(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ｋ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->a(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾇ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->v(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾇ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->n(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾒ(I)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->r(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method

.method public final ﾒ(Z)Lcom/ironsource/adqualitysdk/sdk/i/hu$b;
    .registers 3

    if-eqz p1, :cond_4

    const/4 p1, -0x1

    goto :goto_7

    :cond_4
    const p1, 0x7fffffff

    :goto_7
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hu$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hu;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hu;->c(Lcom/ironsource/adqualitysdk/sdk/i/hu;)Lcom/ironsource/adqualitysdk/sdk/i/hu$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hu$a;->l(Lcom/ironsource/adqualitysdk/sdk/i/hu$a;I)I

    return-object p0
.end method
