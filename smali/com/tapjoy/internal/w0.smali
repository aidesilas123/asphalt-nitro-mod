###### Class com.tapjoy.internal.w0 (com.tapjoy.internal.w0)
.class public final Lcom/tapjoy/internal/w0;
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

    const-string p3, "InsufficientCurrency"

    const/4 v0, 0x1

    invoke-static {p1, p3, v0, p2}, Lcom/tapjoy/TJPlacementManager;->createPlacement(Landroid/content/Context;Ljava/lang/String;ZLcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Ljava/lang/Void;

    const-string p1, "InsufficientCurrency"

    return-object p1
.end method
