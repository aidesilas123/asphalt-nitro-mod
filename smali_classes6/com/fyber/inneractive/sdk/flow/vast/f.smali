###### Class com.fyber.inneractive.sdk.flow.vast.f (com.fyber.inneractive.sdk.flow.vast.f)
.class public Lcom/fyber/inneractive/sdk/flow/vast/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/model/vast/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/flow/vast/f;->a:I

    iput p2, p0, Lcom/fyber/inneractive/sdk/flow/vast/f;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/model/vast/c;)Ljava/lang/Integer;
    .registers 3

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/model/vast/c;->a:Lcom/fyber/inneractive/sdk/model/vast/h;

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/h;->Html:Lcom/fyber/inneractive/sdk/model/vast/h;

    if-ne p1, v0, :cond_c

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/h;->Iframe:Lcom/fyber/inneractive/sdk/model/vast/h;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_16
    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/h;->Static:Lcom/fyber/inneractive/sdk/model/vast/h;

    if-ne p1, v0, :cond_20

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_20
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/fyber/inneractive/sdk/model/vast/c;

    check-cast p2, Lcom/fyber/inneractive/sdk/model/vast/c;

    iget v0, p1, Lcom/fyber/inneractive/sdk/model/vast/c;->c:I

    iget v1, p1, Lcom/fyber/inneractive/sdk/model/vast/c;->d:I

    mul-int v0, v0, v1

    iget v1, p2, Lcom/fyber/inneractive/sdk/model/vast/c;->c:I

    iget v2, p2, Lcom/fyber/inneractive/sdk/model/vast/c;->d:I

    mul-int v1, v1, v2

    iget v2, p0, Lcom/fyber/inneractive/sdk/flow/vast/f;->a:I

    iget v3, p0, Lcom/fyber/inneractive/sdk/flow/vast/f;->b:I

    mul-int v2, v2, v3

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_23

    goto :goto_7a

    :cond_23
    if-le v0, v1, :cond_26

    goto :goto_80

    :cond_26
    iget v0, p0, Lcom/fyber/inneractive/sdk/flow/vast/f;->a:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/flow/vast/f;->b:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p1, Lcom/fyber/inneractive/sdk/model/vast/c;->c:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p1, Lcom/fyber/inneractive/sdk/model/vast/c;->d:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p2, Lcom/fyber/inneractive/sdk/model/vast/c;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p2, Lcom/fyber/inneractive/sdk/model/vast/c;->d:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v2, v3

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v2, v1, v0

    if-gez v2, :cond_7c

    :goto_7a
    const/4 p1, -0x1

    goto :goto_92

    :cond_7c
    cmpl-float v0, v1, v0

    if-lez v0, :cond_82

    :goto_80
    const/4 p1, 0x1

    goto :goto_92

    :cond_82
    invoke-virtual {p0, p2}, Lcom/fyber/inneractive/sdk/flow/vast/f;->a(Lcom/fyber/inneractive/sdk/model/vast/c;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/flow/vast/f;->a(Lcom/fyber/inneractive/sdk/model/vast/c;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    if-eqz p1, :cond_91

    goto :goto_92

    :cond_91
    const/4 p1, 0x0

    :goto_92
    return p1
.end method
