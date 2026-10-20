###### Class com.fyber.inneractive.sdk.model.vast.u (com.fyber.inneractive.sdk.model.vast.u)
.class public Lcom/fyber/inneractive/sdk/model/vast/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/model/vast/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/fyber/inneractive/sdk/model/vast/u;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Integer;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/model/vast/u$a;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/u;->a:[Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/model/vast/u;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/model/vast/u;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/model/vast/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/model/vast/u;)I
    .registers 9

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/model/vast/u;->a:[Ljava/lang/Integer;

    array-length v1, v1

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/model/vast/u;->a:[Ljava/lang/Integer;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v1, :cond_36

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/model/vast/u;->a:[Ljava/lang/Integer;

    array-length v5, v4

    if-le v5, v3, :cond_1e

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1f

    :cond_1e
    const/4 v4, 0x0

    :goto_1f
    iget-object v5, p1, Lcom/fyber/inneractive/sdk/model/vast/u;->a:[Ljava/lang/Integer;

    array-length v6, v5

    if-le v6, v3, :cond_2b

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_2c

    :cond_2b
    const/4 v5, 0x0

    :goto_2c
    if-le v4, v5, :cond_2f

    return v0

    :cond_2f
    if-le v5, v4, :cond_33

    const/4 p1, -0x1

    return p1

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_36
    return v2
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/model/vast/u$a;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_20

    aget-object v4, p1, v3

    invoke-static {v4, v2}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/model/vast/u;->a:[Ljava/lang/Integer;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/model/vast/u$a;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "^[0-9.]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    :cond_f
    new-instance p1, Lcom/fyber/inneractive/sdk/model/vast/u$a;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/model/vast/u$a;-><init>()V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/fyber/inneractive/sdk/model/vast/u;

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/model/vast/u;->a(Lcom/fyber/inneractive/sdk/model/vast/u;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/model/vast/u;->b:Ljava/lang/String;

    return-object v0
.end method
