###### Class com.moat.analytics.mobile.glft.x.a.C0440a (com.moat.analytics.mobile.glft.x$a$a)
.class Lcom/moat/analytics/mobile/glft/x$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/x$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/x$a;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/glft/x$a;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->a:Lcom/moat/analytics/mobile/glft/x$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/glft/x$a;Lcom/moat/analytics/mobile/glft/x$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/x$a$a;-><init>(Lcom/moat/analytics/mobile/glft/x$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 3

    iget v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->a:Lcom/moat/analytics/mobile/glft/x$a;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/x$a;->a(Lcom/moat/analytics/mobile/glft/x$a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 4

    iget v0, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/moat/analytics/mobile/glft/x$a$a;->a:Lcom/moat/analytics/mobile/glft/x$a;

    invoke-static {v2}, Lcom/moat/analytics/mobile/glft/x$a;->a(Lcom/moat/analytics/mobile/glft/x$a;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/x$a$a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented. Under development."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
