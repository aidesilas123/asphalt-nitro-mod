###### Class com.applovin.impl.sdk.j.AnonymousClass1 (com.applovin.impl.sdk.j$1)
.class Lcom/applovin/impl/sdk/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/j;->AZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAo:I

.field final synthetic aAp:I

.field final synthetic aAq:Lcom/applovin/impl/sdk/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;II)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    iput p2, p0, Lcom/applovin/impl/sdk/j$1;->aAo:I

    iput p3, p0, Lcom/applovin/impl/sdk/j$1;->aAp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aJ(Z)V
    .registers 2

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->e(Lcom/applovin/impl/sdk/j;)V

    goto :goto_d

    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;)V

    :goto_d
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .registers 9

    iget v0, p0, Lcom/applovin/impl/sdk/j$1;->aAo:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;)I

    move-result v1

    div-int/2addr v0, v1

    iget v1, p0, Lcom/applovin/impl/sdk/j$1;->aAp:I

    iget-object v2, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;)I

    move-result v2

    div-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v1, 0x2

    :goto_16
    iget v4, p0, Lcom/applovin/impl/sdk/j$1;->aAp:I

    if-ge v3, v4, :cond_4f

    move v4, v2

    :goto_1b
    iget v5, p0, Lcom/applovin/impl/sdk/j$1;->aAo:I

    if-ge v4, v5, :cond_4d

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v6, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;I)Z

    move-result v6

    if-eqz v6, :cond_3a

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;I)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;)V

    return-void

    :cond_3a
    iget-object v6, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v6}, Lcom/applovin/impl/sdk/j;->c(Lcom/applovin/impl/sdk/j;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_4b

    iget-object v6, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/j;Ljava/lang/Integer;)Ljava/lang/Integer;

    :cond_4b
    add-int/2addr v4, v0

    goto :goto_1b

    :cond_4d
    add-int/2addr v3, v1

    goto :goto_16

    :cond_4f
    iget-object v0, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->d(Lcom/applovin/impl/sdk/j;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$1;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {p1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;)V

    return-void
.end method
