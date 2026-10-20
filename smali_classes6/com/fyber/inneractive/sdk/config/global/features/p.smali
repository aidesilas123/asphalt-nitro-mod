###### Class com.fyber.inneractive.sdk.config.global.features.p (com.fyber.inneractive.sdk.config.global.features.p)
.class public Lcom/fyber/inneractive/sdk/config/global/features/p;
.super Lcom/fyber/inneractive/sdk/config/global/features/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/config/global/features/p$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "store_webpage"

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/fyber/inneractive/sdk/config/global/features/g;
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/config/global/features/p;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/config/global/features/p;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Lcom/fyber/inneractive/sdk/config/global/features/g;)V

    return-object v0
.end method
