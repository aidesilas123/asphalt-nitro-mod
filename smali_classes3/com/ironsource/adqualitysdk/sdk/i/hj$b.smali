###### Class com.ironsource.adqualitysdk.sdk.i.hj.b (com.ironsource.adqualitysdk.sdk.i.hj$b)
.class Lcom/ironsource/adqualitysdk/sdk/i/hj$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

.field private b:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    return-object v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/hl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﱟ()I

    move-result p1

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->b:I

    return-void
.end method

.method public ﾒ(Ljava/lang/reflect/Field;)Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻐ()I

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻐ()I

    move-result v2

    if-ne v0, v2, :cond_68

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﾇ()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_26

    goto :goto_68

    :cond_26
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﱡ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    return v1

    :cond_37
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﻏ()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﺙ()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_5c

    :cond_4e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﺙ()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    :goto_5c
    if-eqz p1, :cond_68

    iget p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->b:I

    const/4 v0, 0x1

    if-nez p1, :cond_64

    return v0

    :cond_64
    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->b:I

    nop

    :cond_68
    :goto_68
    return v1
.end method
