###### Class com.tapjoy.internal.o6 (com.tapjoy.internal.o6)
.class public final Lcom/tapjoy/internal/o6;
.super Lcom/tapjoy/internal/y4;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tapjoy/internal/y4;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .registers 5

    check-cast p3, Ljava/lang/Void;

    const-string p3, "AppLaunch"

    const/4 v0, 0x1

    invoke-static {p1, p3, v0, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    const-string p1, "AppLaunch"

    return-object p1
.end method

.method public final d()Z
    .registers 4

    invoke-super {p0}, Lcom/tapjoy/internal/y4;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/tapjoy/internal/y0;->a:Lcom/tapjoy/internal/y0;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tapjoy/internal/y0;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method
