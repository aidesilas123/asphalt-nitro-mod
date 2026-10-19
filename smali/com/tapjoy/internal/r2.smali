###### Class com.tapjoy.internal.r2 (com.tapjoy.internal.r2)
.class public final Lcom/tapjoy/internal/r2;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doubleValue()D
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    check-cast p1, Ljava/lang/Number;

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lcom/tapjoy/internal/r2;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/tapjoy/internal/r2;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return v0

    :cond_2f
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float p1, v1, p1

    if-nez p1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :goto_43
    return v0

    :cond_44
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_57

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    return v0

    :cond_59
    iget-object v0, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_64
    return v2
.end method

.method public final floatValue()F
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final intValue()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    :try_start_7
    iget-object v0, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d} :catch_f

    long-to-int v1, v0

    return v1

    :catch_f
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public final longValue()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    :catch_7
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/internal/r2;->a:Ljava/lang/String;

    return-object v0
.end method
