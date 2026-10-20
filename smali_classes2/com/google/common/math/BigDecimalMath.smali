###### Class com.google.common.math.BigDecimalMath (com.google.common.math.BigDecimalMath)
.class public Lcom/google/common/math/BigDecimalMath;
.super Ljava/lang/Object;
.source "BigDecimalMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/BigDecimalMath$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static roundToDouble(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)D
    .registers 3

    sget-object v0, Lcom/google/common/math/BigDecimalMath$a;->a:Lcom/google/common/math/BigDecimalMath$a;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/math/d;->b(Ljava/lang/Number;Ljava/math/RoundingMode;)D

    move-result-wide p0

    return-wide p0
.end method
