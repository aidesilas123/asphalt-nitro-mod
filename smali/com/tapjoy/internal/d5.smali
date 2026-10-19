###### Class com.tapjoy.internal.d5 (com.tapjoy.internal.d5)
.class public final Lcom/tapjoy/internal/d5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tapjoy/internal/d5;
    .registers 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    new-instance v0, Lcom/tapjoy/internal/d5;

    invoke-direct {v0}, Lcom/tapjoy/internal/d5;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x77

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2d

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lcom/tapjoy/internal/d5;->a:F

    iput v3, v0, Lcom/tapjoy/internal/d5;->b:I

    goto :goto_4f

    :cond_2d
    const/16 v3, 0x68

    if-ne v4, v3, :cond_43

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lcom/tapjoy/internal/d5;->a:F

    const/4 p0, 0x2

    iput p0, v0, Lcom/tapjoy/internal/d5;->b:I

    goto :goto_4f

    :cond_43
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iput p0, v0, Lcom/tapjoy/internal/d5;->a:F

    iput v6, v0, Lcom/tapjoy/internal/d5;->b:I
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_4f} :catch_50

    :goto_4f
    return-object v0

    :catch_50
    return-object v1
.end method


# virtual methods
.method public final a(FF)F
    .registers 6

    iget v0, p0, Lcom/tapjoy/internal/d5;->b:I

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    iget p2, p0, Lcom/tapjoy/internal/d5;->a:F

    mul-float p2, p2, p1

    div-float/2addr p2, v1

    return p2

    :cond_d
    const/4 p1, 0x2

    if-ne v0, p1, :cond_16

    iget p1, p0, Lcom/tapjoy/internal/d5;->a:F

    mul-float p1, p1, p2

    div-float/2addr p1, v1

    return p1

    :cond_16
    iget p1, p0, Lcom/tapjoy/internal/d5;->a:F

    return p1
.end method
