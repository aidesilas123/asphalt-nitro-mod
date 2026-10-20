###### Class com.json.adqualitysdk.sdk.i.j0 (com.ironsource.adqualitysdk.sdk.i.j0)
.class final Lcom/ironsource/adqualitysdk/sdk/i/j0;
.super Lcom/ironsource/adqualitysdk/sdk/i/ad;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/adqualitysdk/sdk/i/ad<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ad;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic j(Landroid/webkit/WebView;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ka;->ﻛ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method
