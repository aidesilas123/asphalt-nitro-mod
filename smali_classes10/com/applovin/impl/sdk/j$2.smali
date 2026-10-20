###### Class com.applovin.impl.sdk.j.AnonymousClass2 (com.applovin.impl.sdk.j$2)
.class Lcom/applovin/impl/sdk/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/j;->a(Landroid/view/View;Lcom/applovin/impl/sdk/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aAq:Lcom/applovin/impl/sdk/j;

.field final synthetic aAr:Lcom/applovin/impl/sdk/j$b;

.field final synthetic aAs:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/j$b;Landroid/graphics/Bitmap;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/sdk/j$2;->aAq:Lcom/applovin/impl/sdk/j;

    iput-object p2, p0, Lcom/applovin/impl/sdk/j$2;->aAr:Lcom/applovin/impl/sdk/j$b;

    iput-object p3, p0, Lcom/applovin/impl/sdk/j$2;->aAs:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .registers 5

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/applovin/impl/sdk/j$2;->aAr:Lcom/applovin/impl/sdk/j$b;

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$2;->aAs:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/j$b;->b(Landroid/graphics/Bitmap;)V

    goto :goto_37

    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/sdk/j$2;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$2;->aAq:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/x;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to capture screenshot with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BlackViewDetector"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    iget-object p1, p0, Lcom/applovin/impl/sdk/j$2;->aAr:Lcom/applovin/impl/sdk/j$b;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/j$b;->aJ(Z)V

    :goto_37
    return-void
.end method
