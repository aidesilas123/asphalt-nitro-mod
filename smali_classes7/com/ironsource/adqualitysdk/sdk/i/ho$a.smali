###### Class com.ironsource.adqualitysdk.sdk.i.ho.a (com.ironsource.adqualitysdk.sdk.i.ho$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/ho$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/ho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

.field private b:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻐ(Lcom/ironsource/adqualitysdk/sdk/i/hn;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﮐ()I

    move-result p1

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->b:I

    return-void
.end method

.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hn;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    return-object v0
.end method

.method public final ﾇ(Ljava/lang/reflect/Method;)Z
    .registers 8

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    const/4 v1, 0x0

    if-eqz v0, :cond_b3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻐ()I

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻐ()I

    move-result v2

    if-ne v0, v2, :cond_b3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﾇ()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_27

    goto/16 :goto_b3

    :cond_27
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﻏ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    return v1

    :cond_38
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﭴ()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4f

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﭴ()I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_4f

    return v1

    :cond_4f
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﱟ()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    array-length v4, v0

    if-eq v3, v4, :cond_5f

    return v1

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_78

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    return v1

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_78
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﱡ()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﺙ()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﱡ()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_a8

    :cond_98
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->a:Lcom/ironsource/adqualitysdk/sdk/i/hn;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hn;->ﱡ()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    goto :goto_a8

    :cond_a7
    const/4 p1, 0x1

    :goto_a8
    if-eqz p1, :cond_b3

    iget p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->b:I

    if-nez p1, :cond_af

    return v2

    :cond_af
    sub-int/2addr p1, v2

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ho$a;->b:I

    nop

    :cond_b3
    :goto_b3
    return v1
.end method
