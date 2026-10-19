###### Class com.hyprmx.android.sdk.placement.c (com.hyprmx.android.sdk.placement.c)
.class public final Lcom/hyprmx/android/sdk/placement/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/placement/Placement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/placement/c$a;
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/placement/c$a;

.field public b:Lcom/hyprmx/android/sdk/placement/PlacementType;

.field public final c:Ljava/lang/String;

.field public d:Lcom/hyprmx/android/sdk/placement/PlacementListener;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/placement/c$a;Lcom/hyprmx/android/sdk/placement/PlacementType;Ljava/lang/String;)V
    .registers 5

    const-string v0, "placementDelegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/placement/c;->a:Lcom/hyprmx/android/sdk/placement/c$a;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/placement/c;->b:Lcom/hyprmx/android/sdk/placement/PlacementType;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/placement/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/hyprmx/android/sdk/placement/PlacementType;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->b:Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-object v0
.end method

.method public final isAdAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->a:Lcom/hyprmx/android/sdk/placement/c$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/placement/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/placement/c$a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final loadAd()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->b:Lcom/hyprmx/android/sdk/placement/PlacementType;

    sget-object v1, Lcom/hyprmx/android/sdk/placement/PlacementType;->INVALID:Lcom/hyprmx/android/sdk/placement/PlacementType;

    if-ne v0, v1, :cond_13

    const-string v0, "loadAd was called on an invalid placement!"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->d:Lcom/hyprmx/android/sdk/placement/PlacementListener;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/placement/PlacementListener;->onAdNotAvailable(Lcom/hyprmx/android/sdk/placement/Placement;)V

    goto :goto_1a

    :cond_13
    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->a:Lcom/hyprmx/android/sdk/placement/c$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/placement/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/placement/c$a;->a(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final loadAdWithBidResponse(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "bidResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->a:Lcom/hyprmx/android/sdk/placement/c$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/placement/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/hyprmx/android/sdk/bidding/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final setPlacementListener(Lcom/hyprmx/android/sdk/placement/PlacementListener;)Lcom/hyprmx/android/sdk/placement/Placement;
    .registers 2

    iput-object p1, p0, Lcom/hyprmx/android/sdk/placement/c;->d:Lcom/hyprmx/android/sdk/placement/PlacementListener;

    return-object p0
.end method

.method public final setType(Lcom/hyprmx/android/sdk/placement/PlacementType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/placement/c;->b:Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-void
.end method

.method public final showAd()V
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->b:Lcom/hyprmx/android/sdk/placement/PlacementType;

    sget-object v1, Lcom/hyprmx/android/sdk/placement/PlacementType;->INVALID:Lcom/hyprmx/android/sdk/placement/PlacementType;

    if-ne v0, v1, :cond_24

    const-string v0, "showAd called on an invalid placement!"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->d:Lcom/hyprmx/android/sdk/placement/PlacementListener;

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lcom/hyprmx/android/sdk/placement/PlacementListener;->onAdStarted(Lcom/hyprmx/android/sdk/placement/Placement;)V

    :cond_12
    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->d:Lcom/hyprmx/android/sdk/placement/PlacementListener;

    if-eqz v0, :cond_1b

    sget-object v1, Lcom/hyprmx/android/sdk/core/HyprMXErrors;->PLACEMENT_DOES_NOT_EXIST:Lcom/hyprmx/android/sdk/core/HyprMXErrors;

    invoke-interface {v0, p0, v1}, Lcom/hyprmx/android/sdk/placement/PlacementListener;->onAdDisplayError(Lcom/hyprmx/android/sdk/placement/Placement;Lcom/hyprmx/android/sdk/core/HyprMXErrors;)V

    :cond_1b
    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->d:Lcom/hyprmx/android/sdk/placement/PlacementListener;

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/hyprmx/android/sdk/placement/PlacementListener;->onAdClosed(Lcom/hyprmx/android/sdk/placement/Placement;Z)V

    goto :goto_2b

    :cond_24
    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/c;->a:Lcom/hyprmx/android/sdk/placement/c$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/placement/c;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/placement/c$a;->c(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    return-void
.end method
