###### Class com.fyber.inneractive.sdk.flow.vast.h (com.fyber.inneractive.sdk.flow.vast.h)
.class public Lcom/fyber/inneractive/sdk/flow/vast/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/model/vast/o;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/fyber/inneractive/sdk/flow/vast/h;->a:I

    iput p2, p0, Lcom/fyber/inneractive/sdk/flow/vast/h;->b:I

    iput p3, p0, Lcom/fyber/inneractive/sdk/flow/vast/h;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/model/vast/q;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/model/vast/q;

    move-result-object p1

    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/q;->MEDIA_TYPE_MP4:Lcom/fyber/inneractive/sdk/model/vast/q;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_e
    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/q;->MEDIA_TYPE_3GPP:Lcom/fyber/inneractive/sdk/model/vast/q;

    if-ne p1, v0, :cond_18

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_18
    sget-object v0, Lcom/fyber/inneractive/sdk/model/vast/q;->MEDIA_TYPE_WEBM:Lcom/fyber/inneractive/sdk/model/vast/q;

    if-ne p1, v0, :cond_22

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_22
    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    check-cast p1, Lcom/fyber/inneractive/sdk/model/vast/o;

    check-cast p2, Lcom/fyber/inneractive/sdk/model/vast/o;

    iget-object v0, p2, Lcom/fyber/inneractive/sdk/model/vast/o;->f:Ljava/lang/String;

    const-string v1, "VPAID"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    goto/16 :goto_93

    :cond_11
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/model/vast/o;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto/16 :goto_97

    :cond_1b
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/model/vast/o;->e:Ljava/lang/Integer;

    if-nez v0, :cond_21

    const/4 v0, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_25
    iget-object v1, p2, Lcom/fyber/inneractive/sdk/model/vast/o;->e:Ljava/lang/Integer;

    if-nez v1, :cond_2b

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2f
    iget v3, p0, Lcom/fyber/inneractive/sdk/flow/vast/h;->a:I

    if-le v1, v3, :cond_36

    if-gt v0, v3, :cond_36

    goto :goto_93

    :cond_36
    if-le v0, v3, :cond_3b

    if-gt v1, v3, :cond_3b

    goto :goto_97

    :cond_3b
    iget-object v3, p2, Lcom/fyber/inneractive/sdk/model/vast/o;->d:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/fyber/inneractive/sdk/flow/vast/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p1, Lcom/fyber/inneractive/sdk/model/vast/o;->d:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/fyber/inneractive/sdk/flow/vast/h;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v3

    if-eqz v3, :cond_4f

    move v2, v3

    goto :goto_98

    :cond_4f
    if-ge v0, v1, :cond_52

    goto :goto_97

    :cond_52
    if-le v0, v1, :cond_55

    goto :goto_93

    :cond_55
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/model/vast/o;->b:Ljava/lang/Integer;

    if-nez v0, :cond_5b

    const/4 v0, 0x0

    goto :goto_5f

    :cond_5b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_5f
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/model/vast/o;->c:Ljava/lang/Integer;

    if-nez p1, :cond_65

    const/4 p1, 0x0

    goto :goto_69

    :cond_65
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_69
    iget-object v1, p2, Lcom/fyber/inneractive/sdk/model/vast/o;->b:Ljava/lang/Integer;

    if-nez v1, :cond_6f

    const/4 v1, 0x0

    goto :goto_73

    :cond_6f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_73
    iget-object p2, p2, Lcom/fyber/inneractive/sdk/model/vast/o;->c:Ljava/lang/Integer;

    if-nez p2, :cond_79

    const/4 p2, 0x0

    goto :goto_7d

    :cond_79
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_7d
    mul-int v0, v0, p1

    mul-int v1, v1, p2

    iget p1, p0, Lcom/fyber/inneractive/sdk/flow/vast/h;->b:I

    iget p2, p0, Lcom/fyber/inneractive/sdk/flow/vast/h;->c:I

    mul-int p1, p1, p2

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p2, p1, :cond_95

    :goto_93
    const/4 v2, -0x1

    goto :goto_98

    :cond_95
    if-le p2, p1, :cond_98

    :goto_97
    const/4 v2, 0x1

    :cond_98
    :goto_98
    return v2
.end method
