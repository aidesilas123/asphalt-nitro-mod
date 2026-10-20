###### Class com.fyber.inneractive.sdk.config.global.features.f (com.fyber.inneractive.sdk.config.global.features.f)
.class public Lcom/fyber/inneractive/sdk/config/global/features/f;
.super Lcom/fyber/inneractive/sdk/config/global/features/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "fmp_endcard"

    invoke-direct {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Lcom/fyber/inneractive/sdk/config/global/features/g;
    .registers 2

    new-instance v0, Lcom/fyber/inneractive/sdk/config/global/features/f;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/config/global/features/f;-><init>()V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Lcom/fyber/inneractive/sdk/config/global/features/g;)V

    return-object v0
.end method
