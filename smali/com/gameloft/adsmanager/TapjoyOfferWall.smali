###### Class com.gameloft.adsmanager.TapjoyOfferWall (com.gameloft.adsmanager.TapjoyOfferWall)
.class public Lcom/gameloft/adsmanager/TapjoyOfferWall;
.super Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;
.source "TapjoyOfferWall.java"


# instance fields
.field private parent:Lcom/gameloft/adsmanager/Tapjoy;

.field public sdkLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gameloft/adsmanager/Tapjoy;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;-><init>(Lcom/gameloft/adsmanager/BaseAdsProvider;)V

    iput-object p2, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    iput-object p1, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->parent:Lcom/gameloft/adsmanager/Tapjoy;

    return-void
.end method

.method static synthetic access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->parent:Lcom/gameloft/adsmanager/Tapjoy;

    return-object p0
.end method


# virtual methods
.method public Close()V
    .registers 1

    return-void
.end method

.method public Destroy()V
    .registers 1

    return-void
.end method

.method public IsValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Show(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->parent:Lcom/gameloft/adsmanager/Tapjoy;

    iput-object p0, p1, Lcom/gameloft/adsmanager/Tapjoy;->onScreenOfferWall:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    sget-object p1, Lcom/gameloft/adsmanager/AdsManager;->parentViewGroup:Landroid/view/ViewGroup;

    new-instance p2, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;

    invoke-direct {p2, p0}, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;-><init>(Lcom/gameloft/adsmanager/TapjoyOfferWall;)V

    new-instance v0, Lcom/gameloft/adsmanager/TapjoyOfferWall$2;

    invoke-direct {v0, p0}, Lcom/gameloft/adsmanager/TapjoyOfferWall$2;-><init>(Lcom/gameloft/adsmanager/TapjoyOfferWall;)V

    invoke-static {p1, p2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->PostAndLogException(Landroid/view/ViewGroup;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.gameloft.adsmanager.TapjoyOfferWall.AnonymousClass1 (com.gameloft.adsmanager.TapjoyOfferWall$1)
.class Lcom/gameloft/adsmanager/TapjoyOfferWall$1;
.super Ljava/lang/Object;
.source "TapjoyOfferWall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/TapjoyOfferWall;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/TapjoyOfferWall;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-static {v0}, Lcom/gameloft/adsmanager/TapjoyOfferWall;->access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnPauseGameAudio()V

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-static {v0}, Lcom/gameloft/adsmanager/TapjoyOfferWall;->access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$1;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-static {v0}, Lcom/gameloft/adsmanager/TapjoyOfferWall;->access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/adsmanager/Tapjoy;->tapjoyPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->j()V

    :cond_22
    return-void
.end method

###### Class com.gameloft.adsmanager.TapjoyOfferWall.AnonymousClass2 (com.gameloft.adsmanager.TapjoyOfferWall$2)
.class Lcom/gameloft/adsmanager/TapjoyOfferWall$2;
.super Ljava/lang/Object;
.source "TapjoyOfferWall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/TapjoyOfferWall;->Show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/TapjoyOfferWall;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$2;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$2;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    iget-object v1, v0, Lcom/gameloft/adsmanager/TapjoyOfferWall;->sdkLocation:Ljava/lang/String;

    const/16 v2, 0x22b8

    invoke-virtual {v0, v2, v1}, Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;->OnShowError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/TapjoyOfferWall$2;->this$0:Lcom/gameloft/adsmanager/TapjoyOfferWall;

    invoke-static {v0}, Lcom/gameloft/adsmanager/TapjoyOfferWall;->access$000(Lcom/gameloft/adsmanager/TapjoyOfferWall;)Lcom/gameloft/adsmanager/Tapjoy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/Tapjoy;->ResetOfferWall()V

    return-void
.end method
