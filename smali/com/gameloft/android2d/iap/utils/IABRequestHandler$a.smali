###### Class com.gameloft.android2d.iap.utils.IABRequestHandler.a (com.gameloft.android2d.iap.utils.IABRequestHandler$a)
.class Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;
.super Lcom/gameloft/android2d/iap/utils/IABAsyncTask;
.source "IABRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/utils/IABRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field c:Lcom/gameloft/android2d/iap/utils/d;

.field final synthetic d:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;


# direct methods
.method public constructor <init>(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;Lcom/gameloft/android2d/iap/utils/d;)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->d:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/IABAsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->c:Lcom/gameloft/android2d/iap/utils/d;

    iput-object p2, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->c:Lcom/gameloft/android2d/iap/utils/d;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->d:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    invoke-static {v0, p1}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->access$000(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/android2d/iap/utils/IABRequestHandler$a;->c:Lcom/gameloft/android2d/iap/utils/d;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/d;->a(Landroid/os/Bundle;)V

    :cond_d
    new-instance p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method
